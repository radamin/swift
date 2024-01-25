//Урок 4. Классы и структуры
//Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
//Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
//Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
//Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
//Создать экземпляр класса пиццерии и добавить в него несколько пицц.



// Перечисление с видами пиццы
enum PizzaType {
    case margherita
    case pepperoni
    case hawaiian
    case vegetarian
    case bbqChicken
}

// Структура пиццы
struct Pizza {
    let name: String
    let price: Double
    let crustType: String
    let toppings: [String]
}

// Класс пиццерии
class Pizzeria {
    private var pizzas: [Pizza] = []
    
    // Функция для добавления новой пиццы
    func addPizza(name: String, price: Double, crustType: String, toppings: [String]) {
        let pizza = Pizza(name: name, price: price, crustType: crustType, toppings: toppings)
        pizzas.append(pizza)
    }
    
    // Функция для получения всех доступных пицц
    func getAllPizzas() -> [Pizza] {
        return pizzas
    }
}

// Создание экземпляра класса пиццерии
let pizzeria = Pizzeria()

// Добавление пицц в пиццерию
pizzeria.addPizza(name: "Маргарита", price: 9.99, crustType: "тонкое", toppings: ["сыр", "помидоры", "базилик"])
pizzeria.addPizza(name: "Пепперони", price: 11.99, crustType: "толстое", toppings: ["сыр", "пепперони", "лук"])
pizzeria.addPizza(name: "Гавайская", price: 10.99, crustType: "тонкое", toppings: ["сыр", "ветчина", "ананасы"])
pizzeria.addPizza(name: "Вегетарианская", price: 12.99, crustType: "толстое", toppings: ["сыр", "шпинат", "помидоры", "грибы"])

// Получение всех доступных пицц
let allPizzas = pizzeria.getAllPizzas()

// Вывод информации о доступных пиццах
for pizza in allPizzas {
    print("Название: \(pizza.name)")
    print("Цена: $\(pizza.price)")
    print("Толщина теста: \(pizza.crustType)")
    print("Добавки: \(pizza.toppings.joined(separator: ", "))")
    print("----------")
}

