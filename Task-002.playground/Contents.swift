/*
Базовые операции


1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)
2. Посчитайте в каком квартале вы родились
3. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h
 */
 
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

