import UIKit

/*
 Классы и структуры + массивы
 
 1. Создать структуру студент. Добавить свойства: имя, фамилия, год рождения, средний бал. Создать несколько экземпляров этой структуры и заполнить их данными. Положить их всех в массив (журнал).
 2. Написать функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавлять порядковый номер в “журнале”, начиная с 1.
 3. С помощью функции sorted отсортировать массив по среднему баллу, по убыванию и распечатать “журнал”.
 4. Отсортировать теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, нужно сделать так, чтобы сравнение шло по имени. Распечатать “журнал”.
 5. Создать переменную и присвоить ей существующий массив. Изменить в нем данные всех студентов. Изменится ли первый массив? Распечатать оба массива.
 6. Теперь проделть все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?
 7. Выполнить задание шахмат из урока по энумам используя структуры либо классы. (Выполнил ещё в прошлом задании)
*/

// ===

struct Student {
    var firstName: String
    var lastName: String
    var yearOfBirth: Int
    var gradePointAverage: Double
}

// ===

//class Student {
//    var firstName: String
//    var lastName: String
//    var yearOfBirth: Int
//    var gradePointAverage: Double
//    
//    init(firstName: String, lastName: String, yearOfBirth: Int, gradePointAverage: Double) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.yearOfBirth = yearOfBirth
//        self.gradePointAverage = gradePointAverage
//    }
//}

// ===

var s1: Student = .init(firstName: "John", lastName: "Lee", yearOfBirth: 1997, gradePointAverage: 95.5)
var s2: Student = .init(firstName: "Jack", lastName: "Black", yearOfBirth: 1998, gradePointAverage: 94.5)
var s3: Student = .init(firstName: "Nolan", lastName: "Nelson", yearOfBirth: 1995, gradePointAverage: 97.5)

var allStudents = [s1, s2, s3]

func studentMagazine(students: [Student]) {
    for (index, student) in students.enumerated() {
            print("\(index + 1) \(student.firstName) \(student.lastName), год рождения: \(student.yearOfBirth), средний бал: \(student.gradePointAverage)")
        }
}

studentMagazine(students: allStudents)

print("\nСортировка по баллам:\n")
studentMagazine(students: allStudents.sorted {$0.gradePointAverage > $1.gradePointAverage})

print("\nСортировка по фамилии и имени:\n")
studentMagazine(students: allStudents.sorted {
    ($0.lastName, $0.firstName) < ($1.lastName, $1.firstName)
})

/*
 5. Создать переменную и присвоить ей существующий массив. Изменить в нем данные всех студентов. Изменится ли первый массив? Распечатать оба массива.
 */

var allStudentsNew = allStudents

let newData = [
    ("Bim", "Bom", 2001, 93.5),
    ("Igor", "Kim", 1999, 92.5),
    ("Sandra", "James", 2003, 98.5)
]

for i in 0..<allStudentsNew.count {
    allStudentsNew[i].firstName = newData[i].0
    allStudentsNew[i].lastName = newData[i].1
    allStudentsNew[i].yearOfBirth = newData[i].2
    allStudentsNew[i].gradePointAverage = newData[i].3
}

print("\nЗадание 5. Распечатываем старый массив:\n")
studentMagazine(students: allStudents)

print("\nЗадание 5. Распечатываем новый массив:\n")
studentMagazine(students: allStudentsNew)
