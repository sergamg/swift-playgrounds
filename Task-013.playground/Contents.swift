import UIKit

/*
 Методы
 Сделаем небольшую игру
 1. Создать тип Комната. У комнаты есть размеры W на H. И создайте тип Персонаж. У него есть координата в комнате X и Y. Реализовать функцию, которая красивенько текстом будет показывать положение персонажа в комнате
 2. Персонажу добавить метод идти, который принимает энумчик лево, право, верх, вниз
 Этот метод должен передвигать персонажа. Реализовать правило что персонаж не должен покинуть пределы комнаты. Подвигать персонажа и покажите это графически
 3. Создать тип Ящик. У ящика также есть координата в комнате X и Y. Ящик также не может покидать пределы комнаты и ящик также должен быть распечатан вместе с персонажем в функции печати.
 4. Теперь самое интересное, персонаж может двигать ящик, если он стоит на том месте, куда персонаж хочет попасть. Главное что ни один объект не может покинуть пределы комнаты. Подвигать ящик :)
 5. Добавить точку в комнате, куда надо ящик передвинуть и двигайте :)
 6. Можно добавить массив ящиков и можете сделать консольное приложение
 */

// Комната
struct Room {
    let height: Int // Y (row)
    let width: Int // X (column)
    
    func render(character: Character, box: Box, target: Target) {
        for row in 1...height {
            var line = ""
            
            for column in 1...width {
                if row == character.y && column == character.x {
                    line += "😎"
                } else if row == box.y && column == box.x {
                    line += "📦"
                } else if row == target.y && column == target.x {
                    line += "🎯"
                } else {
                    line += "⬜️"
                }
            }
            print(line)
        }
        print("---------------")
    }
}

// Направление
enum Direction {
    case left
    case right
    case up
    case down
}

// Ящик
struct Box {
    var x: Int
    var y: Int
}

// Точка, куда нужно передвинуть ящик
struct Target {
    let x: Int
    let y: Int
}

// Персонаж
struct Character {
    var x: Int
    var y: Int
    
    mutating func move(_ direction: Direction, in room: Room, box: inout Box) {
        var targetX = x
        var targetY = y

        switch direction {
        case .left: targetX -= 1
        case .right: targetX += 1
        case .up: targetY -= 1
        case .down: targetY += 1
        }
        
        // В пределах комнаты?
        guard targetX >= 1 && targetX <= room.width &&
              targetY >= 1 && targetY <= room.height else {
            return
        }
        // Стоит ли там ящик?
        if targetX == box.x && targetY == box.y {
            // Определяем, куда его двигать
            var boxTargetX = box.x
            var boxTargetY = box.y
            
            switch direction {
            case .left: boxTargetX -= 1
            case .right: boxTargetX += 1
            case .up: boxTargetY -= 1
            case .down: boxTargetY += 1
            }
            
            // Может ли ящик сдвинуться?
            guard boxTargetX >= 1 && boxTargetX <= room.width &&
                  boxTargetY >= 1 && boxTargetY <= room.height else {
                return
            }
            
            // Двигаем ящик
            box.x = boxTargetX
            box.y = boxTargetY
        }
        
        // Двигаем персонажа
        x = targetX
        y = targetY
    }
}

let room = Room(height: 7, width: 7)
var character = Character(x: 6, y: 6)
var box = Box(x: 6, y: 5)
var target = Target(x: 4, y: 4)

room.render(character: character, box: box, target: target)

character.move(.up, in: room, box: &box)
room.render(character: character, box: box, target: target)

character.move(.right, in: room, box: &box)
room.render(character: character, box: box, target: target)

character.move(.up, in: room, box: &box)
room.render(character: character, box: box, target: target)

character.move(.left, in: room, box: &box)
room.render(character: character, box: box, target: target)

character.move(.left, in: room, box: &box)
room.render(character: character, box: box, target: target)
