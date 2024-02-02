
//1. Создать структуру работника пиццерии. В ней должны быть
//такие свойства, как имя, зарплата и должность.
//Должностей пока может быть две: или кассир, или повар.
//Добавить в класс пиццерии массив с работниками

//Создание структуры работника пиццерии

struct Employee {
    var name: String
    var salary: Double
    var position: Position

    enum Position {
        case cashier
        case cook
    }
}

// Добавление массива с работниками в класс пиццерии
// Класс пиццерии будет присутствовать в 1 и 3 заданиях
class PizzaRestaurant {
    var employees: [Employee]

    init(employees: [Employee]) {
        self.employees = employees
    }
}

//2. Создать класс столика, в нем должны быть свойство,
//в котором содержится количество мест и функция, которая на вход 
//принимает количество гостей, которое хотят //посадить, 
//а возвращает true, если места хватает и false, //если места не хватает. 
//Изначальное количество мест задается в инициализаторе

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

    init(employees: [Employee]) {
        self.employees = employees
        self.tables = []
        createTables()
    }

    func createTables() {
        let table1 = Table(numberOfSeats: 4)
        let table2 = Table(numberOfSeats: 6)

        table1.pizzaRestaurant = self
        table2.pizzaRestaurant = self

        tables.append(table1)
        tables.append(table2)
    }
}

class Table {
    weak var pizzaRestaurant: PizzaRestaurant?

    init(numberOfSeats: Int) {
        // Код инициализации столика
    }
}

// Создание экземпляров работников пиццерии
let cashier = Employee(name: "John", salary: 12.50, position: .cashier)
let cook = Employee(name: "Jane", salary: 15.75, position: .cook)

//У свойства pizzaRestaurant в классе Table используется опциональный тип weak var, 
//чтобы предотвратить создание циклической ссылки между пиццерией и столиком.
//Это позволяет избежать утечек памяти и позволяет объектам быть освобожденными, когда они больше не нужны.
