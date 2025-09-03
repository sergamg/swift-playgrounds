// Работа с базовыми типами


// Д/з 1

//Int
//UInt
//Float
//Double


//Int
print("Минимальное значение Int:", Int.min)
print("Максимальное значение Int:", Int.max)


//UInt
print("Минимальное значение UInt:", UInt.min)
print("Максимальное значение UInt:", UInt.max)


//Float
print("Минимальное значение Float:", -Float.greatestFiniteMagnitude)
print("Максимальное значение Float:", Float.greatestFiniteMagnitude)


//Double
print("Минимальное значение Double:", -Double.greatestFiniteMagnitude)
print("Максимальное значение Double:", Double.greatestFiniteMagnitude)


// Д/з 2

let numInt: Int = 15
let numFloat: Float = 25.35322
let numDouble: Double = 35.6323411
let sumNumInt: Int = numInt + Int(numFloat) + Int(numDouble)
let sumNumFloat: Float = Float(numInt) + numFloat + Float(numDouble)
let sumNumDouble: Double = Double(numInt) + Double(numFloat) + numDouble


// Д/з 3

print(sumNumInt == Int(sumNumDouble))
print(Double(sumNumInt) == sumNumDouble)
