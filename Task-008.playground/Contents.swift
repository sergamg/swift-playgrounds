import UIKit

/*
 Перечисления
 */

/*
 1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный, а так же букву и цифру для позиции. Создать пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместить эти фигуры в массив фигур
 2. Сделать так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установить соответствующее английское название. Создать функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию, распечатать все фигуры в массиве.
 3. Используя красивые юникодовые представления шахматных фигур, вывести в консоль вашу доску. Если клетка не содержит фигуры, то использовать белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
 */

enum Color: String {
    case white = "white"
    case black = "black"
}

enum ChessPieceType: String {
    case king = "king"
    case queen = "queen"
    case rook = "rook"
    case bishop = "bishop"
    case knight = "knight"
    case pawn = "pawn"
}

struct Position {
    let file: Character
    let rank: Int
}

struct ChessPiece {
    let type: ChessPieceType
    let color: Color
    let position: Position
}

let pieces: [ChessPiece] = [
    ChessPiece(type: .king, color: .black, position: Position(file: "h", rank: 8)),
    ChessPiece(type: .king, color: .white, position: Position(file: "f", rank: 6)),
    ChessPiece(type: .queen, color: .white, position: Position(file: "g", rank: 7))
]

func printPiecesInfo(_ pieces: [ChessPiece]) {
    for piece in pieces {
        print("\(piece.type) \(piece.color) at \(piece.position)")
    }
}

printPiecesInfo(pieces)

func unicodeSymbol(for piece: ChessPiece) -> String {
    switch (piece.type, piece.color) {
    case (.king, .white): return "♔"
    case (.queen, .white): return "♕"
    case (.rook, .white): return "♖"
    case (.bishop, .white): return "♗"
    case (.knight, .white): return "♘"
    case (.pawn, .white): return "♙"
    case (.king, .black): return "♚"
    case (.queen, .black): return "♛"
    case (.rook, .black): return "♜"
    case (.bishop, .black): return "♝"
    case (.knight, .black): return "♞"
    case (.pawn, .black): return "♟"
    }
}

func chessBoard(pieces: [ChessPiece]) {
    let letters: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h"]
    print("   " + letters.map( {String($0)} ).joined(separator: " "))
    
    for row in (1...8).reversed() {
        var line = "\(row) "
        
        for column in letters {
            if let piece = pieces.first(where: {$0.position.file == column && $0.position.rank == row}) {
                line += unicodeSymbol(for: piece) + " "
            } else {
                let isWhiteSquare = (letters.firstIndex(of: column)! + row) % 2 == 0
                line += isWhiteSquare ? "⬜️" : "⬛️"
            }
        }
        print(line)
    }
}

print("\nШахматная доска:\n")
chessBoard(pieces: pieces)

