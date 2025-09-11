import UIKit

// Функции

/*
 1. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль
 */


let cop = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]

func chessBoard(letter: String, number: Int) -> String {
    if let numLetter = cop[letter], (1...8).contains(number) {
        if (numLetter + number) % 2 == 0 {
            return "чёрная"
        } else {
            return "белая"
        }
    } else {
        return "Неверный ввод"
    }
}

print(chessBoard(letter: "a", number: 1))
print(chessBoard(letter: "b", number: 3))
print(chessBoard(letter: "p", number: 5))
print(chessBoard(letter: "d", number: 9))


/*
 2. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделать так, чтобы функция с последовательностью вызывала первую.
 */

func reversArray<T>(_ array: [T]) -> [T] {
    return Array(array.reversed())
}

func reverseSequence<S: Sequence>(_ sequence: S) -> [S.Element] {
    let arr = Array(sequence)
    return reversArray(arr)
}

reverseSequence([1, 23, 35])


/*
 3. Inout: Выполнить задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?
 */

func reverseInPlace<T>(_ array: inout [T]) {
    array.reverse()
}

var numbers = [2, 54, 34, 28]
reverseInPlace(&numbers)
print(numbers)


/*
 4. Создать функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
 */

import Foundation

func mag(data: String) -> String {
    // Сделать все буквы маленькими
    let lower = data.lowercased()
    // Убрать знаки препинания
    let noPunct = String(lower.filter { !$0.isPunctuation })
    // Делаем Гласные большими. Согласные оставляем маленькими
    let vowels = "aeiouаеёиоуыэюя"
    let lettersDone = noPunct.map { ch -> String in
        if ch.isLetter && vowels.contains(ch) {
            return String(ch).uppercased()
        } else {
            return String(ch)
        }
    }.joined()
    // Цифры в слова
    let digitNames: [Character: String] = [
        "0":"zero","1":"one","2":"two","3":"three","4":"four",
        "5":"five","6":"six","7":"seven","8":"eight","9":"nine"
    ]
    let final = lettersDone.map { ch -> String in
        digitNames[ch] ?? String(ch)
    }.joined()
    return final
}

print(mag(data: "HeLLo, Мир! 9 и 20."))
