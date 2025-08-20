import UIKit

// Практикум по Swift


// Работа с базовыми типами


// Д/з 1


//Int
//UInt
//Float
//Double


//Int
print("Минимальное значение Int:", Int.min)
print("Максимальное значение Int:", Int.max)


//UInt
print("Минимальное значение UInt:", UInt.min)
print("Максимальное значение UInt:", UInt.max)


//Float
print("Минимальное значение Float:", -Float.greatestFiniteMagnitude)
print("Максимальное значение Float:", Float.greatestFiniteMagnitude)


//Double
print("Минимальное значение Double:", -Double.greatestFiniteMagnitude)
print("Максимальное значение Double:", Double.greatestFiniteMagnitude)


// Д/з 2


let numInt: Int = 15
let numFloat: Float = 25.35322
let numDouble: Double = 35.6323411
let sumNumInt: Int = numInt + Int(numFloat) + Int(numDouble)
let sumNumFloat: Float = Float(numInt) + numFloat + Float(numDouble)
let sumNumDouble: Double = Double(numInt) + Double(numFloat) + numDouble


// Д/з 3


print(sumNumInt == Int(sumNumDouble))
print(Double(sumNumInt) == sumNumDouble)



/*
Базовые операции


1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)
2. Посчитайте в каком квартале вы родились
3. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h
 
// 1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)


let allMonthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let birthday = 30
let birthMonth = 7
let secondsPerDay = 24 * 60 * 60
var secondsUntilBirthday: Int {
    (allMonthDays.prefix(birthMonth - 1).reduce(0, +) + birthday) * secondsPerDay
}
print("От начала года до моего дня рождения: \(secondsUntilBirthday) секунд")




// 2. Посчитайте в каком квартале вы родились


let birthMonth = 7
let quarter1 = [1, 2, 3]
let quarter2 = [4, 5, 6]
let quarter3 = [7, 8, 9]
let quarter4 = [10, 11, 12]
for month in quarter1 {
    if month == birthMonth {
        print("День рожденья в первом квартале")
    }
}
for month in quarter2 {
    if month == birthMonth {
        print("День рожденья во втором квартале")
    }
}
for month in quarter3 {
    if month == birthMonth {
        print("День рожденья в третьем квартале")
    }
}
for month in quarter4 {
    if month == birthMonth {
        print("День рожденья в четвёртом квартале")
    }
}




// 3. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h


var horizontalAxis: String = ""
var verticalAxis: String = ""


// Вводимые данные


horizontalAxis = "d"
verticalAxis = "5"


var chessboardNumber: String = horizontalAxis + verticalAxis
let blackColorNumbers = ["a1", "a3", "a5", "a7", "b2", "b4", "b6", "b8", "c1", "c3", "c5", "c7", "d2", "d4", "d6", "d8", "e1", "e3", "e5", "e7", "f2", "f4", "f6", "f8", "g1", "g3", "g5", "g7", "h2", "h4", "h6", "h8"]
let whiteColorNumbers = ["a2", "a4", "a6", "a8", "b1", "b3", "b5", "b7", "c2", "c4", "c6", "c8", "d1", "d3", "d5", "d7", "e2", "e4", "e6", "e8", "f1", "f3", "f5", "f7", "g2", "g4", "g6", "g8", "h1", "h3", "h5", "h7"]
for nomber in blackColorNumbers {
    if nomber == chessboardNumber {
        print("Цвет поля: Чёрный")
    }
}
for nomber in whiteColorNumbers {
    if nomber == chessboardNumber {
        print("Цвет поля: Белый")
    }
}
 */


// Строки

/*
1. Создать пять строковых констант
Одни константы это только цифры, другие содержат еще и буквы
Найти сумму всех этих констант приведя их к Int используйте оператор ??
Когда посчитаете сумму, то представьте свое выражение в виде строки
Например: 5 + nil + 2 + 3 + nil = 10
но в первом случае используйте интерполяцию строк, а во втором конкатенацию


let stringConst1: String = "7"
let stringConst2: String = "4a"
let stringConst3: String = "20"
let stringConst4: String = "8d"
let stringConst5: String = "3"


let num1 = (Int(stringConst1)) ?? 0
let num2 = (Int(stringConst2)) ?? 0
let num3 = (Int(stringConst3)) ?? 0
let num4 = (Int(stringConst4)) ?? 0
let num5 = (Int(stringConst5)) ?? 0


let sum = num1 + num2 + num3 + num4 + num5
print("Сумма \(num1) + \(num2) + \(num3) + \(num4) + \(num5) равна: \(sum)") // Интерполяция
print("Сумма " + String(num1) + "+" + String(num2) + "+" + String(num3) + "+" + String(num4) + "+" + String(num5) + " равна: " + String(sum))


2. Создать строку английский алфавит, все буквы малые от a до z
задать константу - один из символов этого алфавита
Используя цикл for, определить под каким индексов в строке находится этот символ


let letеers: String = "abcdefghijklmnopqrstuvwxyz"
let letter: Character = "f"
var indexNumber = 0


for char in letеers {
    if char == letter {
        print("Символ \(letter) находится под индексом: \(indexNumber)")
    }
    indexNumber += 1
}

*/



