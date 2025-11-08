import UIKit

/*
 Свойства
 1. Добавить студенту property «Дата рождения» (пусть это будет еще одна структура, содержащая день, месяц, год) и два computed property: первое — вычисляющее его возраст, второе — вычисляющее, сколько лет он учился (считать, что он учился в школе с 6 лет, если студенту меньше 6 лет — возвращать 0)
 3. Создать структуру «Отрезок», содержащую две внутренние структуры «Точки». Структуру «Точка» создать самостоятельно, несмотря на уже имеющуюся в Swift’е. Таким образом, структура «Отрезок» содержит две структуры «Точки» — точки A и B (stored properties). Добавить два computed properties: « середина отрезка» и «длина» (считать математическими функциями)
 4. При изменении середины отрезка должно меняться положение точек A и B. При изменении длины, меняется положение точки B
 */

struct DateOfBirth {
    let day: Int
    let month: Int
    let year: Int
}

struct Student {
    let firstName: String
    let lastName: String
    let greating: String
    var dateOfBirth: DateOfBirth
    
    var studentAge: Int {
        let currentYear = Calendar.current.component(.year, from: Date())
        return currentYear - dateOfBirth.year
    }
    
    var yearsDidStudy: Int {
        if studentAge <= 6 {
            return 0
        } else {
            return studentAge - 6
        }
    }
}

/*
 3. Создать структуру «Отрезок», содержащую две внутренние структуры «Точки». Структуру «Точка» создать самостоятельно, несмотря на уже имеющуюся в Swift’е. Таким образом, структура «Отрезок» содержит две структуры «Точки» — точки A и B (stored properties). Добавить два computed properties: « середина отрезка» и «длина» (считать математическими функциями)
 4. При изменении середины отрезка должно меняться положение точек A и B. При изменении длины, меняется положение точки B
 */

struct Point {
    var x: Double
    var y: Double
}

struct Segment {
    var pointA: Point
    var pointB: Point
    
    var midpointSegment: Point {
        get {
            Point(
                x: (pointA.x + pointB.x) / 2,
                y: (pointA.y + pointB.y) / 2
            )
        }
        set {
            // текущая середина
            let oldMidpoint = midpointSegment
            
            // На сколько нужно сдвинуть
            let dx = newValue.x - oldMidpoint.x
            let dy = newValue.y - oldMidpoint.y
            
            // Сдвигаем обе точки на одинаковое расстояние
            pointA.x += dx
            pointA.y += dy
            pointB.x += dx
            pointB.y += dy
        }
    }
    
    var lengthSegment: Double {
        get {
            return sqrt(pow(pointB.x - pointA.x, 2) + pow(pointB.y - pointA.y, 2))
        }
        set {
            // разница между координатами
            let dx = pointB.x - pointA.x
            let dy = pointB.y - pointA.y
            
            // текущая длинна
            let currentLength = lengthSegment
            
            // если текущая длинна = 0, ничего не делаем
            guard currentLength != 0 else { return }
            
            // вычисляем единичное направление от A к B
            let unitX = dx / currentLength
            let unitY = dy / currentLength
            
            // новые координаты точки B на расстоянии newValue от A
            pointB.x = pointA.x + unitX * newValue
            pointB.y = pointA.y + unitY * newValue
        }
    }
}

