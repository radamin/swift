import Foundation



//Задание
// 1. Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой процент, третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу.
func getMoney(money: Int, percent: Int, years: Int) -> Double {
    var sum = Double(money)
    for _ in 1...years {
        sum += sum * Double(percent) / 100
    }
    print(
        """
        Сумма взноса: \(money)
        На какое колличество лет расчитан вклад: \(years)
        Результирующая сумма равна \(sum)
        """
    )
    return sum
}

var sum = getMoney(money: 10000, percent: 5, years: 12)

//2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.
enum TypesOfPizza: String {
    case calzone = "Calzone"
    case pizzaFritta = "Pizza Fritta"
    case pizzaGourmet = "Pizza Gourmet"
}
let calzone = TypesOfPizza.calzone
let pizzaFritta = TypesOfPizza.pizzaFritta
let pizzaGourmet = TypesOfPizza.pizzaGourmet

//3. Добавить возможность получения названия пиццы через rawValue
print(calzone.rawValue)
print(pizzaFritta.rawValue)
print(pizzaGourmet.rawValue)
