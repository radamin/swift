import Foundation

// 1. Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать).
//Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).
let typeOfTea = ["green": 7, "black": 6, "fruit": 9]
let order = ["GrEEn", "BlACk", "GrEEn", "FrUiT", "BlACk"]

func orderOfTea (order: [String], list: [String: Int]) {
    let order = order
    let list = list
    var resultTuple: (Int, String, Int)
    print("Задание №1")
    var count = 1
    for tea in order {
        let lowerTea = tea.lowercased()
        for (key, value) in list {
            if lowerTea == key {
                resultTuple = (count, key, value)
                print(resultTuple)
                count += 1
            }
        }
    }
}

orderOfTea(order: order, list: typeOfTea)

// 2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.
print("\nЗадание №2")

let startArray = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
let resultArray = startArray.compactMap { $0 }
print(resultArray)

// 3. Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.

func getArray(number: Int) -> [Int] {
    let number = number
    var array = Array(1...number)
    for (index, _) in array.enumerated() {
        if index != 0 {
            array[index] = array[index-1] * 2
        }

    }

    print("\nЗадание №3")
    return array
}
var array = getArray(number: 10)
print(array)
