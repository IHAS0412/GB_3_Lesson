//
//  main.swift
//  GB_3_Lesson
//
//  Created by Oksana on 19.07.2021.
//

import Foundation

enum Transmission {
    case auto, manual
}
enum StateEngine {
    case on, off
}
enum StateWindows {
    case open, closed
}
enum StateDoor {
    case open, closed
}
enum FillTheTrunk {
    case full, empty
}

//Спортивный автомобиль

struct SomeSportCar {
    let brand: String
    var reliseYear: Int
    var transmission: Transmission
    mutating func changeTransmission(transmission: Transmission) {
        self.transmission = transmission
    }
    var stateEngine: StateEngine
    mutating func changeStateEngine(stateEngine: StateEngine) {
        self.stateEngine = stateEngine
    }
    var stateWindows: StateWindows
    mutating func changeStateWindows(stateWindows: StateWindows) {
        self.stateWindows = stateWindows
    }
    var stateDoor: StateDoor
    mutating func changeStateDoor(stateDoor: StateDoor) {
        self.stateDoor = stateDoor
    }
}
    func printSportCarInfornation(car1: SomeSportCar){
        print("""
        Информация о спортивном автомобиле
        Марка: \(car1.brand)
        Год выпуска: \(car1.reliseYear)
        Тип коробки передач: \(car1.transmission == .auto ? "автомат" : "механика")
        Состояние двигателя: \(car1.stateEngine == .on ? "включен" : "выключен")
        Состояние окон: \(car1.stateWindows == .open ? "открыты" : "закрыты")
        Состояние дверей: \(car1.stateDoor == .open ? "открыты" : "закрыты")
        """)
}
var sportCar = SomeSportCar (brand: "Nissan", reliseYear: 2014, transmission: .manual, stateEngine: .on, stateWindows: .closed, stateDoor: .closed)


//Грузовой автомобиль

struct SomeTrunkCar {
    let brand: String
    var reliseYear: Int
    var stateEngine: StateEngine
    var stateWindows: StateWindows
    var stateDoor: StateDoor
    var volumeTrunk: Int
    var fillTheTrunk: FillTheTrunk

    mutating func changeStateEngine(stateEngine: StateEngine) {
        self.stateEngine = stateEngine
    }
    mutating func changeStateWindows(stateWindows: StateWindows) {
        self.stateWindows = stateWindows
    }
    mutating func changeStateDoor(stateDoor: StateDoor) {
        self.stateDoor = stateDoor
    }
    mutating func changefillTheTrunk(fillTheTrunk: FillTheTrunk) {
        self.fillTheTrunk = fillTheTrunk
    }
}
func printTrunkCarInfornation(car2: SomeTrunkCar){
    print("""
    Информация о грузовом автомобиле
    Марка: \(car2.brand)
    Год выпуска: \(car2.reliseYear)
    Состояние двигателя: \(car2.stateEngine == .on ? "включен" : "выключен")
    Состояние окон: \(car2.stateWindows == .open ? "открыты" : "закрыты")
    Состояние дверей: \(car2.stateDoor == .open ? "открыты" : "закрыты")
    Oбъем багажника: \(car2.volumeTrunk)
    Заполненность кузова: \(car2.fillTheTrunk == .full ? "заполненный" : "пустой")
    """)
}

var trunkCar = SomeTrunkCar (brand: "MAN", reliseYear: 2020, stateEngine: .on, stateWindows: .open, stateDoor: .open, volumeTrunk: 7700, fillTheTrunk: .full)

printSportCarInfornation(car1: sportCar)
printTrunkCarInfornation(car2: trunkCar)


sportCar.changeTransmission(transmission: .auto)
sportCar.changeStateWindows(stateWindows: .open)
sportCar.changeStateEngine(stateEngine: .off)

trunkCar.changeStateDoor(stateDoor: .closed)
trunkCar.changeStateEngine(stateEngine: .off)
trunkCar.changefillTheTrunk(fillTheTrunk: .empty)

printSportCarInfornation(car1: sportCar)
printTrunkCarInfornation(car2: trunkCar)

