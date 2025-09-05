import UIKit

// Опциональные типы

/*
 1. Создать пять строковых констант. Одни константы это только цифры, другие содержат еще и буквы. Найти сумму всех этих констант приведя их к Int. (Используйте и optional binding и forced unwrapping)
 */

let num1: String = "5"
let num2: String = "35f"
let num3: String = "10"
let num4: String = "20"
let num5: String = "30s"

let intNum1 = Int(num1)
let intNum2 = Int(num2)
let intNum3 = Int(num3)
let intNum4 = Int(num4)
let intNum5 = Int(num5)

// forced unwrapping:
// print(intNum1! + intNum2! + intNum3! + intNum4! + intNum5!)

// optional binding:
//let summOfNumbers = ((intNum1 ?? 0) + (intNum2 ?? 0)  + (intNum3 ?? 0) + (intNum4 ?? 0)  + (intNum5 ?? 0))
//print(summOfNumbers)

/*
 2. С сервера к нам приходит тюпл с тремя параметрами: statusCode, message, errorMessage (число, строка и строка) в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле если statusCode от 200 до 300 исключительно, то выводите message, в противном случает выводите errorMessage. После этого проделать тоже самое только без участия statusCode
 */

var statusCode = 200
let message = "message"
let errorMessage = "errorMessage"

var parametrs = (statusCode, message, errorMessage)

// Первая часть задания
if parametrs.0 >= 200 && parametrs.0 < 300 {
    print(parametrs.1)
} else {
    print(parametrs.2)
}

// Вторая часть задания
if parametrs.1.isEmpty {
    print(parametrs.2)
} else {
    print(parametrs.1)
}

/*
 3. Создать 5 тюплов с тремя параметрами: имя, номер машины, оценка за контрольную. при создании этих тюплов не должно быть никаких данных, после создания каждому студенту установите имя, некоторым установить номер машины, некоторым установить результат контрольной .
 вывести  в консоль:
 - имена студента
 - есть ли у него машина
 - если да, то какой номер
 - был ли на контрольной
 - если да, то какая оценка
 */

var student1 = (name: "", carNumber: "", testScore: "")
var student2 = (name: "", carNumber: "", testScore: "")
var student3 = (name: "", carNumber: "", testScore: "")
var student4 = (name: "", carNumber: "", testScore: "")
var student5 = (name: "", carNumber: "", testScore: "")

student1.name = "Ivan"
student2.name = "Sasha"
student3.name = "Artur"
student4.name = "Anna"
student5.name = "Kira"

student1.carNumber = "ERA 2341"
student3.carNumber = "YRE 8342"
student5.carNumber = "OPW 5428"

student1.testScore = "85"
student4.testScore = "79"
student5.testScore = "93"

let students = [student1, student2, student3, student4, student5]

for student in students {
    print(student.name)
    if student.carNumber.isEmpty {
        print("Нет машины")
    } else {
        print("Номер машины: \(student.carNumber)")
    }
    if student.testScore.isEmpty {
        print("Не был на контрольной")
    } else {
        print("Оценка за контрольную: \(student.testScore)")
    }
}
