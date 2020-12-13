//
//  main.swift
//  1l_BurdinDenis
//
//  Created by u on 13.12.2020.
//

import Foundation

//Задача 1
// 3x^2 - 14x - 5 = 0
//let a: Double = 3
//let b: Double = -14
//let c: Double = -5
//
//let discriminant: Double = (b * b) - (4 * a * c)
//if discriminant < 0 {
//    print("Корни квадратного уровнения не могут быть вычеслины")
//} else if discriminant == 0 {
//    let x: Double = -b/(2*a)
//    print(x)
//} else {
//    let x1: Double = (-b + sqrt(discriminant))/(2*a)
//    let x2: Double = (-b - sqrt(discriminant))/(2*a)
//    print(x1)
//    print(x2)
//}

func quadEquat(a: Double, b: Double, c: Double) {
    if a == 0 {
        print("Это не квадратное уровнение")
    } else {
        let discriminant: Double = (b * b) - (4 * a * c)
        if discriminant < 0 {
            print("Корни квадратного уровнения не могут быть вычеслины")
        } else if discriminant == 0 {
            let x: Double = -b/(2*a)
            print("X = \(x)")
        } else {
            let x1: Double = (-b + sqrt(discriminant))/(2*a)
            let x2: Double = (-b - sqrt(discriminant))/(2*a)
            print("X1 = \(x1)")
            print("X2 = \(x2)")
        }
    }

}

quadEquat(a: -1, b: 0, c: 4)

//Задача 2
func triangleCalc(a: Double, b: Double) {
    let s: Double = (a * b)/2
    let c: Double = sqrt((a*a) + (b*b))
    let p: Double = a + b + c
    
    print("Гипотенуза = \(c), Площадь = \(s), Периметр = \(p)" )
}

triangleCalc(a: 5, b: 7)

//Задача 3
var investition: String
var yearPercent: String
var a: Float? = nil
var b: Float? = nil
repeat {
    print("Введите сумму инвестиций")
    investition = readLine()!
    a = Float(investition)
    print("Введите годовой процент")
    yearPercent = readLine()!
    b = Float(yearPercent)
} while a == nil || b == nil



var numberOfYears = 5
var allInvestition: Double = Double(a!)

while numberOfYears > 0 {
    allInvestition = allInvestition + (allInvestition * Double(b!))/100
    numberOfYears -= 1
}
print("Сумма вклада через 5 лет = \(allInvestition)")

