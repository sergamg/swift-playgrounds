// Тюплы

// 1
var maxPushUps = 15
var maxPullUps = 12
var maxSquats = 20

var maxCount = (pushUps: maxPushUps, pullUps: maxPullUps, squats: maxSquats)
print("Отжимания: \(maxCount.0). Подтягивания: \(maxCount.1). Приседания: \(maxCount.2).")


// 2
print("Отжимания: \(maxCount.0)")
print("Подтягивания: \(maxCount.pullUps)")
print("Приседания: \(maxCount.2)")


// 3
var myWifeMaxCount = (pushUps: 40, pullUps: 18, squats: 34)
var newMaxCount = maxCount
maxCount = myWifeMaxCount
print("Рузультаты моей жены. Отжимания: \(myWifeMaxCount.0). Подтягивания: \(myWifeMaxCount.1). Приседания: \(myWifeMaxCount.2).")


// 4
var differenceInResults = maxCount
differenceInResults = (pushUps: abs(newMaxCount.0 - myWifeMaxCount.0), pullUps: abs(newMaxCount.1 - myWifeMaxCount.1), squats: abs(newMaxCount.2 - myWifeMaxCount.2))
print("Разница в наших результатах. Отжимания: \(differenceInResults.0). Подтягивания: \(differenceInResults.1). Приседания: \(differenceInResults.2).")
