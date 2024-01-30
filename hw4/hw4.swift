
// Шаг 1: Создать перечисление с видами пиццы
enum PizzaType {
    case margherita
    case pepperoni
    case hawaiian
    case bbqChicken
    case veggie
}

// Шаг 2: Создать структуру пиццы
struct Pizza {
    var cost: Double                  // Стоимость пиццы
    var pizzaType: PizzaType          // Вид пиццы
    var crustType: String             // толстое или тонкое тесто
    var toppings: [Topping]           // список добавок
    
    enum Topping {
        case pepperoni
        case tomatoes
        case cheese
        case bbqSauce // добавление соуса барбекю в качестве добавки
        case chicken // добавление курицы в качестве добавки
        case onions // добавление лука в качестве добавки
    }
} 

// Шаг 3: Создать класс пиццерии
class Pizzeria {
    private var pizzas: [Pizza]        // Приватная переменная массива пицц
    
    init(pizzas: [Pizza]) {            // Присваивание переданного массива пицц переменной pizzas
        self.pizzas = pizzas
    }
    
    // Шаг 4: Функции для добавления новой пиццы и для получения всех доступных пицц
    func addPizza(_ pizza: Pizza) {
        pizzas.append(pizza)            // Метод для добавления новой пиццы в массив
    }
    
    func getAllPizzas() -> [Pizza] {
        return pizzas                 // Метод для получения всех доступных пицц
    }
}

// Создание экземпляра класса пиццерии и добавление в него несколько пицц
let margherita = Pizza(cost: 9.99, pizzaType: .margherita, crustType: "тонкое", toppings: [.tomatoes, .cheese])              
let pepperoni = Pizza(cost: 11.99, pizzaType: .pepperoni, crustType: "толстое", toppings: [.pepperoni, .cheese, .tomatoes])  

let pizzeria = Pizzeria(pizzas: [margherita, pepperoni])     

let bbqChicken = Pizza(cost: 12.99, pizzaType: .bbqChicken, crustType: "толстое", toppings: [.bbqSauce, .chicken, .onions])  
pizzeria.addPizza(bbqChicken)                               

// Вывод информации о доступных пиццах
let allPizzas = pizzeria.getAllPizzas()
for pizza in allPizzas {
    print("Pizza type: \(pizza.pizzaType), Cost: \(pizza.cost), Crust type: \(pizza.crustType), Toppings: \(pizza.toppings)")
}
