import UIKit

/*
 Словари
 1. Создать класс студент со свойствами имя, фамилия и фраза приветствия. 2. Создать 10 - 15 объектов этого класса.
 2. Создать словарь типо школьный журнал, где ключ будет фамилия + имя, а значение сам студент.
 3. Распечатать дикшинари
 4. В цикле пройтись по всем ключам в словаре и распечатать имя и фамилию каждого студента + его фразу приветствия.

 */

class Student {
    let firstName: String
    let lastName: String
    let greating: String
    
    init(firstName: String, lastName: String, greating: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.greating = greating
    }
}

let student01 = Student(firstName: "Иван", lastName: "Иванов", greating: "Привет!")
let student02 = Student(firstName: "Владимир", lastName: "Владимиров", greating: "Хай")
let student03 = Student(firstName: "Сергей", lastName: "Сергеев", greating: "Привет")
let student04 = Student(firstName: "Артур", lastName: "Артуров", greating: "Хай")
let student05 = Student(firstName: "Мария", lastName: "Маринова", greating: "Приветики")
let student06 = Student(firstName: "Гилина", lastName: "Купцова", greating: "Пряу!")
let student07 = Student(firstName: "Радомир", lastName: "Селёдкин", greating: "Приветствую")
let student08 = Student(firstName: "Тыкудаж", lastName: "Атыгдежева", greating: "Салам")
let student09 = Student(firstName: "Гарик", lastName: "Харлянский", greating: "Ку ку купец")
let student10 = Student(firstName: "Геральд", lastName: "Ривлянинов", greating: "Всем здравия")

var studentMagazine = [
    student01.lastName + student01.firstName: student01,
    student02.lastName + student02.firstName: student02,
    student03.lastName + student03.firstName: student03,
    student04.lastName + student04.firstName: student04,
    student05.lastName + student05.firstName: student05,
    student06.lastName + student06.firstName: student06,
    student07.lastName + student07.firstName: student07,
    student08.lastName + student08.firstName: student08,
    student09.lastName + student09.firstName: student09,
    student10.lastName + student10.firstName: student10
]

print(studentMagazine)

for student in studentMagazine {
    print("\(student.value.lastName), \(student.value.firstName) - \(student.value.greating)")
}

