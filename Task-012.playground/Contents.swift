import UIKit

/*
 Свойства типов
 1. Создать структуру “Описание файла” содержащую свойства:
 - путь к файлу
 - имя файла
 - максимальный размер файла на диске
 - путь к папке, содержащей этот файл
 - тип файла (скрытый или нет)
 - содержимое файла (можно просто симулировать контент)
 Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.
 2. Создать энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавить в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.
 3. Создать класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавить несколько свойств непосредственно этому классу чтобы контролировать:
 - минимальный и максимальный возраст каждого объекта
 - минимальную и максимальную длину имени и фамилии
 - минимально возможный рост и вес
 - самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса

 */

struct FileDescription {
    let pathToTheFile: String
    let maximumFileSizeOnDisk: Double
    let fileContents: String
    
    var fileName: String {
        return (pathToTheFile as NSString).lastPathComponent
    }
    
    var pathToTheFolderContainingThisFile: String {
        return (pathToTheFile as NSString).deletingLastPathComponent
    }
    
    var isTheFileTypeHidden: Bool {
        fileName.hasPrefix(".")
    }
}

/*
 2. Создать энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавить в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.
 */

enum ColorScheme: Int, CaseIterable {
    case red = 0xFF0000
    case green = 0x00FF00
    case blue = 0x0000FF
    
    static var numberOfColorsInTheRange: Int {
        allCases.count
    }
    
    static var startingColor: ColorScheme {
        allCases.first!
    }
    
    static var endingColor: ColorScheme {
        allCases.last!
    }
}

print(ColorScheme.numberOfColorsInTheRange)
print(ColorScheme.startingColor)
print(ColorScheme.endingColor)
print(ColorScheme.green.rawValue)

/*
 3. Создать класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавить несколько свойств непосредственно этому классу чтобы контролировать:
 - минимальный и максимальный возраст каждого объекта
 - минимальную и максимальную длину имени и фамилии
 - минимально возможный рост и вес
 - самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса
 */

class Person {
    var firstName: String {
        didSet {
            if firstName.count < Person.minimumLengthName {
                firstName = oldValue
            } else if firstName.count > Person.maximumLengthName {
                firstName = oldValue
            }
        }
    }
    
    var lastName: String {
        didSet {
            if lastName.count < Person.minimumLengthName {
                lastName = oldValue
            } else if lastName.count > Person.maximumLengthName {
                lastName = oldValue
            }
        }
    }
    
    var age: Int {
        didSet {
            if age < Person.minimumAge {
                age = Person.minimumAge
            } else if age > Person.maximumAge {
                age = Person.maximumAge
            }
        }
    }
    
    var height: Double {
        didSet {
            if height < Person.minimumHeight {
                height = Person.minimumHeight
            } else if height > Person.maximumHeight {
                height = Person.maximumHeight
            }
        }
    }
    
    var weight: Double {
        didSet {
            if weight < Person.minimumWeight {
                weight = Person.minimumWeight
            } else if weight > Person.maximumWeight {
                weight = Person.maximumWeight
            }
        }
    }
    
    static let minimumAge: Int = 0
    static let maximumAge: Int = 120
    static let minimumLengthName: Int = 2
    static let maximumLengthName: Int = 20
    static let minimumHeight: Double = 30
    static let maximumHeight: Double = 250
    static let minimumWeight: Double = 1
    static let maximumWeight: Double = 350
    
    nonisolated(unsafe) static var numberOfObjectsCreated: Int = 0
    
    init(firstName: String, lastName: String, age: Int, height: Double, weight: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = min(max(age, Person.minimumAge), Person.maximumAge)
        self.height = min(max(height, Person.minimumHeight), Person.maximumHeight)
        self.weight = min(max(weight, Person.minimumWeight), Person.maximumWeight)
        
        Person.numberOfObjectsCreated += 1
    }
}


