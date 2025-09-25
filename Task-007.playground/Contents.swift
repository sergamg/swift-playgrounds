import UIKit
/*
// Кложуры
*/

/*
 1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.
 */

func someFunc(someClosure: () -> Void) {
    for i in 1...10 {
        print(i)
    }
    return someClosure()
}
someFunc(someClosure: { print("Цикл завершён") })

/*
 2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
 */
let intArray: [Int] = [2, 7, 16, 13, 28, 54, 33]
print(intArray.sorted(by: <))
print(intArray.sorted(by: >))


/*
 3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
 используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
 */

func newFunc(arrayInt: [Int], closure: (Int, Int?) -> Bool) -> Int {
    var optInt: Int?
    
    for i in arrayInt {
        if closure(i, optInt) {
            optInt = i
        }
    }
    return optInt ?? 0
}

// Максимальное значение
newFunc(arrayInt: [2, 7, 16, 13, 28, 54, 33, 45], closure: { intEl, optEl in
    return optEl == nil || intEl > optEl!
})

// Минимальное значение
newFunc(arrayInt: [2, 7, 16, 13, 28, 54, 33, 45], closure: { intEl, optEl in
    return optEl == nil || intEl < optEl!
})


/*
 4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
 */

let someString = "Hello World! 123"
let arraySomeString = Array(someString)
// Определяем гласные
let vowels: Set<Character> = ["A","E","I","O","U","a","e","i","o","u"]

let sort = arraySomeString.sorted {a, b in
    func priority(_ c: Character) -> Int {
        if vowels.contains(c) {return 0}
        else if c.isLetter { return 1 }
        else if c.isNumber { return 2 }
        else { return 3 }
    }
    let p1 = priority(a)
    let p2 = priority(b)
    
    if p1 != p2 {
        return p1 < p2
    } else {
        return a.lowercased() < b.lowercased()
    }
}
print(sort)

/*
 5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
 */

func newFunc(arrayChar: [Character], closure: (Character, Character?) -> Bool) -> Character {
    var optChar: Character?
    
    for ch in arrayChar {
        if closure(ch, optChar) {
            optChar = ch
        }
    }
    return optChar ?? " " // если массив пустой — вернём пробел
}

// Пример массива букв
let letters: [Character] = ["H", "e", "l", "L", "o", "M"]

// Максимальная буква
let maxLetter = newFunc(arrayChar: letters) { current, bestSoFar in
    return bestSoFar == nil || current > bestSoFar!
}
print("Максимальная буква: \(maxLetter)")

// Минимальная буква
let minLetter = newFunc(arrayChar: letters) { current, bestSoFar in
    return bestSoFar == nil || current < bestSoFar!
}
print("Минимальная буква: \(minLetter)")
