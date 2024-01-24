import Foundation


//Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).
//Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
//Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
//Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
//Создать экземпляр класса пиццерии и добавить в него несколько пицц.


struct Pizza {
    enum TypesOfPizza {
        case calzone
        case napoletana
        case romana
        case siciliana
        case fritta
        case gourmet
    }
    
    enum Additives {
        case pepperoni
        case tomato
        case cheese
    }
    
    enum Dough {
        case thick
        case thin
    }
    
    var cost: Int
    var typesPizza: TypesOfPizza
    var additives: Additives
    var dough: Dough
}



class Pizzeria {
    private var pizzaArray: [Pizza]
    
    
    init (pizzaArray: [Pizza]) {
        self.pizzaArray = pizzaArray
    }
    
    init() {
        self.pizzaArray = []
    }
    
    
    
    
    func addPizza(typesOfPizza: Pizza.TypesOfPizza,
                  additives: Pizza.Additives,
                  dough: Pizza.Dough,
                  cost: Int){
        
        var p = Pizza(cost: cost, typesPizza: typesOfPizza, additives: additives, dough: dough)
        self.pizzaArray.append(p)
    }
    
    
    func availableForPurchase() {
        print("В наличии имеются следующие виды пиццы:")
        for i in pizzaArray {
            print(i.typesPizza)
        }
        
    }
}


//var arrrr = [Pizza]()
//var cafe1 = Pizzeria(pizzaArray: arrrr)

var cafe1 = Pizzeria(pizzaArray: [])
var cafe2 = Pizzeria()





cafe1.addPizza(typesOfPizza: .fritta, additives: .pepperoni, dough: .thin, cost: 120)
cafe1.addPizza(typesOfPizza: .napoletana, additives: .cheese, dough: .thick, cost: 130)
cafe1.addPizza(typesOfPizza: .siciliana, additives: .tomato, dough: .thick, cost: 100)
cafe1.availableForPurchase()
