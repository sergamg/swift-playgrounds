// Строки

/*
1. Создать пять строковых констант
Одни константы это только цифры, другие содержат еще и буквы
Найти сумму всех этих констант приведя их к Int используйте оператор ??
Когда посчитаете сумму, то представьте свое выражение в виде строки
Например: 5 + nil + 2 + 3 + nil = 10
но в первом случае используйте интерполяцию строк, а во втором конкатенацию
*/

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

/*
2. Создать строку английский алфавит, все буквы малые от a до z
задать константу - один из символов этого алфавита
Используя цикл for, определить под каким индексов в строке находится этот символ
*/

let letеers: String = "abcdefghijklmnopqrstuvwxyz"
let letter: Character = "f"
var indexNumber = 0


for char in letеers {
    if char == letter {
        print("Символ \(letter) находится под индексом: \(indexNumber)")
    }
    indexNumber += 1
}

