
//1. Создать структуру работника пиццерии. В ней должны быть
//такие свойства, как имя, зарплата и должность.
//Должностей пока может быть две: или кассир, или повар.
//Добавить в класс пиццерии массив с работниками

//1) Создание структуры работника пиццерии:

struct Employee {
    var name: String
    var salary: Double
    var position: Position

    enum Position {
        case cashier
        case cook
    }
}

//2) Добавление массива с работниками в класс пиццерии:

class PizzaRestaurant {
    var employees: [Employee]

    init(employees: [Employee]) {
        self.employees = employees
    }
}

//2. Создать класс столика, в нем должны быть свойство,
//в котором содержится количество мест и функция,
//которая на вход принимает количество гостей, которое хотят
//посадить, а возвращает true, если места хватает и false,
//если места не хватает. Изначальное количество мест задается
//в инициализаторе

class Table {
    let numberOfSeats: Int
    var pizzaRestaurant: PizzaRestaurant?

    init(numberOfSeats: Int) {
        self.numberOfSeats = numberOfSeats
    }

    func canAccommodateGuests(_ numberOfGuests: Int) -> Bool {
        return numberOfGuests <= numberOfSeats
    }
}

//3. Добавить в класс пиццерии свойство, в котором хранится
//массив столиков. У класса столика добавить свойство,
//в котором хранится пиццерия, в которой стоит столик.
//Столики создаются сразу в инициализаторе, не передаются
//туда в качестве параметра

class PizzaRestaurant {
    var employees: [Employee]
    var tables: [Table]

    init(employees: [Employee], tables: [Table]) {
        self.employees = employees
        self.tables = tables

        for table in tables {
            table.pizzaRestaurant = self
        }
    }
}
