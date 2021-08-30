// Created by Danylo Malovichko
// on 24/08/2021
// Playground Tasks



import UIKit

// 1. The Basics :
// объявить переменные (включая переменные) всеми возможными аннотациями.

var a = 1
var b: Int = 2
var stringArray = ["One", "Two", "End"]

// объявить константу

let example = 3

// вывести с помощью print() значение одной константы и переменной

print(a, example)

// добавить комментарий для одной константы и переменной

var someText = "Hello" // variable example

var someNumber = 2 // constant example

// объявить два разных числовых типа данных и привести одно к другому

let x = 5

let y = 7.5

let z = Double(x)
let g = Int(y)

// объявить два разных числовых типа, где одно из должно быть с плавающей точкой и привести одно к другому

let floatValue: Float = 5.1234567
let intValue: Int = 10

let p = Int(floatValue)
let n = Float(intValue)

// создать псевдоним для любого типа данных

typealias Day = Date

// объявить 2 логические переменные с разными значениями

var roomIsClosed = false
var lightIsWorking = true

// использовать оператор if для одной из двух логический переменных, и вывести что нибудь с помощью print()

if lightIsWorking {
    roomIsClosed = true
    print(roomIsClosed)
}

// объявить кортеж и попробовать прочитать его значения несколькими способами, и вывести их с помощью print()

var tuple = (value1: 22, value2: 5, value3: 23)
let tupleFirstElement = tuple.0
let tupleSecondElement = tuple.value3
print(tupleFirstElement, tupleSecondElement)

// объявить опциональную переменную со значением и без, а так же попробовать прочитать значение через if let и просто if, а также попробовать развернуть принудительно (force unwrap)

var someValue: Int? = 15
var someSecondValue: Int?

if someValue != nil {
    print(someValue ?? "")
}

if let someValue = someValue  {
    print(someValue)
}

func unwrap(value: Int?) {
    guard let value = value else {
        print("Some value is nil")
        return
    }
    print("Unwrapped value: \(value)")
}
unwrap(value: someValue)
unwrap(value: someSecondValue)

// попробовать использовать assert / assertionFailure / precondition

let cats = 10
assert(cats <= 15)

precondition(cats > 5)

if cats < 15 {
    print("Less than 15 cats")
} else if cats > 1 {
    "At least 1 cat"
} else {
    assertionFailure("No cats")
}

// 2. Basic Operators:
// попробовать арифметические операции включая операцию деления с остатком и вывести значение вычислений с помощью print()

var a1 = 35
var a2 = 43
var a3 = 57
var a4 = 89


a2 + a4
a3 - a1
a4 % a1
a4 / a1
a4 * a2

// попробовать операторы сравнения с разными числами а также попробовать сравнения кортежей


a1 > a4
a4 >= a2
a3 == a1
a3 != a2

// попробовать тернарный оператор, и сравнить его с конструкцией if

if a4 >= a1 {
    print("a4 is bigger or equal")
} else {
    print("a1 is bigger")
}

// тернарный оператор является короче и легче для выбора между двумя вариантами.

// попробовать развернуть опциональное значение с помощью оператора ??

var choosingValue = someValue ?? someSecondValue

// попробовать оператор диапазона, оператор полузамкнутого диапазона, односторонние диапазоны

for range in 1...25 {
    print ("\(range) умноженное на 2 \(range * 2)")
}

let food = ["mushrooms", "salad", "pasta"]
let count = food.count
for dish in 0..<count {
    print("Dish for day \(dish + 1) is \(food[dish]) ")
}

for meal in food[0...] {
    print(meal)
}

// попробовать разные логические операторы

var toggledOption1 = true
var toggledOption2 = true
var toggledOption3 = false
var toggledOption4 = false

if toggledOption1 && toggledOption2 {
    print("Both are toggled")
}

//ничего не выведется
if toggledOption4 || toggledOption1 && toggledOption3 {
    print("Fourth or first and third switches are toggled")
}

// 3. Strings and Characters:
// объявить строковую переменную со строковым литералом, многострочным литералом, расширенным литералом, а также любым скаляром

let stringText = "Строковый литерал"

let someBigText = """
Some text will be here
"""

let textWithSymbols = #"""
Some text: && "" ##
"""#

var symbols = "\u{1F636} \u{E9} \u{D55C}"
print(symbols)

// попробовать проитерировать (пройтись циклом) строку посимвольно

for character in "Hello" {
    print(character)
}

// попробовать конкатенацию (сложение строк), интерполяцию (вставку значений в строку) строк

var example1 = "testing"
var example2 = " text"

var textTest = example1 + example2

let multiplier = 2
let textMultiplier = "\(multiplier) times 4 is \(Double(multiplier) * 4)"

// проитерировать (пройтись циклом) скалярную строку

for character in symbols {
    print(character)
}

// получить знак (букву) по индексу, поменять символ в строке, добавить/вставить строку, удалить из строки символ

symbols[symbols.startIndex]

example1.insert(contentsOf: " abc", at: example1.endIndex)

let removeText = example1.index(example1.endIndex, offsetBy: -4)..<example1.endIndex
example1.removeSubrange(removeText)

example2.replacingOccurrences(of: "text", with: "hello")

// 4. Collection Types:
// инициализировать (создать) массивы разными вариантами, с набором данных (например строковых значений)

var collection: [Double] = [5.43, 7.21]
var collectionTwo = [7, 14, 13]
var collectionEmpty: Array<Float> = Array()
var collectionCount = Array(repeating: 0, count: 5)
print(collectionCount)

// попробовать добавить/удалить/изменить/вставить элемент массива

collectionTwo.remove(at: 2)
collectionTwo.insert(47, at: 0)
collectionTwo[1] = 90
collectionTwo.append(100)
print(collectionTwo)

// проитерировать (пройтись циклом) массив

for numbers in collectionTwo {
    print(numbers)
}

// инициализировать множества, а также попробовать их модифицировать (изменить)

var books: Set<String> = ["Geometry", "English", "Physics"]
books.insert("Chemistry")

// проитерировать (пройтись циклом) множество

for booksList in books {
    print(booksList)
}

// инициализировать словарь (dictionary), а также попробовать модифицировать его (изменить)

var coordinates: [String:String] = ["XYZ": "coordinates", "PLC": "place" ]

coordinates["XYZ"] = "cords"

for target in coordinates {
    print(target)
}

// 5. Управление потоком
// попробовать функцию stride(from:to:by:) c циклом

for m in stride(from: 0, to: 5, by: 0.5) {
    print(m)
}

// попробовать цикл while

let hours = 24
var day = 0
while hours > day {
    day += 1
    if day == hours {
        print(day)
    }
}

// попробовать цикл repeat-while

repeat {
    day += 1
} while day < 48
print(day)

// попробовать switch, а так же попробовать с привязкой значений, условием where, составными кейсами

switch day {
case 48:
    print("Two days")
case 24:
    print("One day")
default:
    print("Some amount of days")
}

let point = (2, 0)
switch point {
case (let x, 0):
    print("по Х-оси Х с значением \(x)")
case (0, let y):
    print("по У-оси У с значением \(y)")
case let (x, y):
    print("где-то еще (\(x), \(y))")
}

// попробовать маркированные операторы с ранее описанными циклами (например: continue, break)

var weekHours = 168
while weekHours > day {
    day += 1
    if day == 72 {
        print("Hours in 3 days:\(day)")
        continue
    }
    if day == 168 {
        print("Hours in 7 days:\(day)")
    }
}

// попробовать прервать цикл с помощью маркированной инструкцией

var i = 0

i : while i < 15 {
    i += 1; do {
        break
    }
}

// попробовать проверку доступности API

if #available(iOS 14, macOS 13, *) {
    print("Available")
} else {
    print("Not available")
}

// 6. Functions
// описать функцию без возвращаемого значения, с возвращаемым значением (включая несколько возвращаемых значений одновременно, с параметрами и без, а также значениями по умолчанию

func age(age: Int) {
    print("John age is \(age)")
}
age(age: 21)

func withReturnedValue() -> Int {
    let a = 10 + 10
    return a
}

let b2 = withReturnedValue()
print(b2)

func withReturnedValues() -> (Int, String) {
    let a = 10 + 10
    return (a, "Text")
}

let b3 = withReturnedValues()

func withReturnedValues(value: Int) -> (Int, String) {
    let a = 10 + value
    return (a, "Text")
}

let b4 = withReturnedValues(value: 30)

func withReturnedDefaultvValue(value: Int = 40) -> (Int, String) {
    return (value, "Text")
}

let b5 = withReturnedDefaultvValue(value: 50)

// попробовать описать функцию с опускаемыми параметрами

func withOptionalParameter(value: Int? = 40) -> (Int?, String) {
    return (value, "Text")
}

withOptionalParameter(value: 50)
withOptionalParameter()

// опробовать сквозные параметры

func withInoutParameters(value: Int, constant: inout Int) {
    let a = value + constant
    print(a)
}
var constantInt = 100
withInoutParameters(value: 25, constant: &constantInt)

// объявить функциональный тип

func textString(a: String, _ b: String) -> String {
    return a + " " + b
}

var textStringAdd: (String, String) -> String = textString
print(textString(a: "One", "Two"))

// попробовать вложение функции

func multipleFuncs() {
    let a = withReturnedValue() + withReturnedValue()
    print(a)
}
multipleFuncs()

////    7. Closures
//   объявить замыкание

let sum = {
    (x: Int, y: Int) -> Int in
    return x * y
}
print(sum(5, 7))

// попробовать написать самостоятельно метод map с помощью замыкания

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let humanNames = names.map { "Human " + $0 }
print(humanNames)

// попробовать передать замыкание в функцию, предварительно описав функцию с входным параметром типа closure

func someFunc(closure: () -> Void) {
    a = 15 + 20
    print(a)
    closure()
}

someFunc {
    print("Hello")
}

// описать произвольную ситуацию с захватом переменной в замыкании

func driving(value: Int, completion: (Int) -> Void) {
    let a = value + value
    completion(a)
}

driving(value: 100) { result in
    print(result)
}

// описать сбегающее замыкание, и автозамыкание

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

var someRandomNumbers = [1, 2, 3, 4, 5, 6]
let numberRemove = { someRandomNumbers.remove(at: 0) }

print("Remove first element \(numberRemove())!")
print(someRandomNumbers.count)

// 8. Enums
// объявить перечисления, сделать его итерируемым (возможным к использованию в циклах)
// попробовать перечисления со switch-ом


enum Fruits: CaseIterable {
    case orange
    case banana
    case apple
}
print(Fruits.allCases.count, "Fruits")


let fruits: Fruits = .orange

switch fruits {
case .orange:
    print("Orange")
case .banana:
    print("Banana")
case .apple:
    print("Apple")
}

// сделать ассоциативные значения, задать произвольные значение причислениям

enum Planet {
    case earth(Int)
    case mercury(Int)
    case mars(Int)
}

let planet = Planet.earth(140)

switch planet {
case .earth(let a):
    print("Earth has a value of \(a)")
default:
    break
}

// попробовать рекурсивные перечисления

indirect enum FruitsPlanetsIndirect {
    case orange(Planet, Fruits)
    case banana(Planet, Fruits)
    case apple(Planet, Fruits)
}

// 9. Classes and structures
// создать класс и структуру
// объявить в обоих переменную, константу, функцию, и перечисления (произвольные данные)

class Car {
    enum Seat {
        case driver
        case passenger
    }
    
    var speed = 70
    let weight = 100
    let seats: Seat = .driver
    
    func acceleration() -> Int {
        return speed
    }
}

struct Road {
    enum RoadWorks {
        case present
        case notPresent
    }
    
    
    let width = 80
    var quality = "Good"
    var roadWorks: RoadWorks = .notPresent
    
    func qualityRoad() -> String {
        return quality
    }
}

// прочитать данные из класса и структуры

let car = Car()
print(car.speed, car.weight, car.seats)

var road = Road()
print(road.roadWorks, road.qualityRoad())

// попробовать изменить данные переменных класса и структуры

car.speed = 200
road.quality = "Awful"
road.roadWorks = .present

// 10. Properties
// объявить lazy property в классе
// объявить вычисляемое свойство, с get-ом и set-ом, и без
// попробовать описать didSet и willSet

class VehicleResult {
    lazy var speed = 100
    var weight: Int {
        get {
            return 90
        }
        set(newWeight) {
            print("New value is \(newWeight)")
        }
    }
    var name: String = "Head" {
        didSet {
            print("New name is \(name)")
        }
        willSet(newName) {
            print("New name will be \(newName)")
        }
    }
}

var vehicleResult = VehicleResult()
vehicleResult.speed = 200

// объявить свой @propertyWrapper и использовать, потом модифицировать его так, что бы он принимал параметры (например для ограничения значений)
// объявить свойство типа (статическую пропертю)

@propertyWrapper
struct MaximumValue {
    private var value = 0
    private var maxValue = 0
    static var staticValue = "Static"
    
    var wrappedValue: Int {
        get { return value }
        set { value = max(newValue, maxValue) }
    }
    
    init() {
        maxValue = 10
    }
    
    init(wrappedValue: Int) {
        maxValue = wrappedValue
    }
}

class WrapperValue {
    @MaximumValue var speed: Int = 50
    
}

var wrapperValue = WrapperValue()
wrapperValue.speed = 40
print(wrapperValue.speed)
print(MaximumValue.staticValue)

// 11. Methods
// объявить методы в классе и структуре, а также сделать так, что бы они модифицировали значения своих пропертей типа (класса или структуры)
// объявить метод типа (модификатор class), и использовать его (например в другом классе)

class Computer {
    var ram = 16
    
    func ramChanger(value: Int) {
        ram = value
    }
    
    class func defaultRam() -> Int {
        return 16
    }
}

struct Laptop {
    var ram = 16
    mutating func ramChanger(value: Int) {
        ram = value
    }
    
    func defaultRam() -> Int {
        return Computer.defaultRam()
    }
}

var laptop = Laptop()
laptop.ramChanger(value: 32)
print(laptop.defaultRam())

// 12. Subscripts
// объявить сабскрипт для класса, структуры, перечисления
// попробовать сделать сабскрипт с несколькими параметрами
// использовать сабскрипт, и вывести с помощью print() одно из значений

struct Notebook {
    let ram: Int
    subscript(index: Int) -> Int {
        return ram + index
    }
}

let ramNotebook = Notebook(ram: 8)
print("New notebook ram is \(ramNotebook[24]) gb")

class NotebookClass {
    let ram: Int = 0
    subscript(index: Int) -> Int {
        return ram + index
    }
}

enum NotebookEnum: Int {
    case ram = 16
    case rom = 32
    static subscript(newRam: Int, newRom: Int) -> Int {
        return ram.rawValue + newRam + newRom
    }
}

var pc = NotebookEnum[6, 10]
print(pc)

//  13. Inheritance
//   попробовать наследоваться от класса
//   попробовать переопределить свойства, функции, get/set проперти
//   попробовать запретить переопределение для одного из членов класса или структуры

class ComputerRam {
    var ram: Int = 16
    var rom: Int = 0
    
    final var gpu = "Geforce 1080"
    
    var description: String {
        return "My computer"
    }
    
    func ramChanger(value: Int) {
        ram = value
    }
    
    class func defaultRam() -> Int {
        return 16
    }
}

class NewComputer: ComputerRam {
    override var ram: Int {
        didSet {
            rom = ram
        }
    }
    
    func defaultRam() -> Int {
        return 32
    }
}

// 14. Initialization
// объявить инициализатор для класса и структуры и инициализировать значение любую созданную пропертю соответствующего типа
// объявить параметр для инициализатора, и через параметр инициализировать пропертю, а также попробовать инициализировать константу
// попробовать использовать вспомагательный (convenience) инициализатор
// попробовать переопределить инициализаторы, а также вспомогательные инициализаторы
// попробовать проваливающийся инициализатор, так же попробовать его в связке с перечислениями
// попробовать переопределить проваливающийся инициализатор

class Trees {
    var count = 0
    let title: String
    
    init(treeCount: Int, treeTitle: String) {
        count = treeCount
        title = treeTitle
    }
    
    init?() {
        count = 100
        title = "Default title"
    }
    
    convenience init(treeCount: Int) {
        self.init(treeCount: treeCount, treeTitle: "Default Title")
    }
}

var treesDefault = Trees(treeCount: 50)
var trees = Trees(treeCount: 100, treeTitle: "Forest")

class NewTrees: Trees {
    
    override init(treeCount: Int, treeTitle: String) {
        super.init(treeCount: 25, treeTitle: "Wood")
        super.count = treeCount * 2
    }
    
    override init?() {
        super.init()
        self.count = 300
    }
}

struct TreesStruct {
    var count = 0
    let title: String
    
    init(treeCount: Int, treeTitle: String) {
        count = treeCount
        title = treeTitle
    }
    
    init?() {
        count = 100
        title = "Default title"
    }
}

var treeDefault = TreesStruct()
var treesStruct = TreesStruct(treeCount: 144, treeTitle: "Woods")

enum Shapes {
    case cube, triangle, circle
    init?(symbol: Character) {
        switch symbol {
        case "U":
            self = .cube
        case "T":
            self = .triangle
        case "C":
            self = .circle
        default:
            return nil
        }
    }
}

var shapes = Shapes(symbol: "C")

// 15. Deinitialization
// объявить деинициалайзер, и вывести с помощью print() дебажный текст, для понимания когда объект высвобождается из памяти

class NewCar: Car {
    deinit {
        print("Deinit New Car")
    }
}

var newCar: NewCar? = NewCar()
newCar = nil

//  16. Optional chain
// создать опциональную пропертю в классе без значения, и со значением
// попробовать форсировано (!) развернуть пропертю
// развернуть пропертю с помощью if let
// создать опциональный экземпляр класса, а после вызвать на этом же классе метод (который вы опишите заранее, с дебажным выводом текста)

class SecondCar: Car {
    var years: Int?
    var color: String? = "Black"
    
    func currentSpeed() -> Int {
        print("Current speed: \(speed)")
        return speed
    }
}
var secondCar = SecondCar()
print(secondCar.color!)

if let color = secondCar.color {
    print(color)
}

var secondCarOptional: SecondCar?
secondCarOptional = SecondCar()
secondCarOptional?.currentSpeed()

//  17. Error Handling
// создать свою кастомную ошибку
// создать метод который будет выбрасывать кастомную ошибку, и обработать его с помощью do {} catch {}
// попробовать опциональный и не опциональный (!) try
// попробовать написать в начале метода конструкцию defer, и вывести дебажный текст

enum SpeedError: Error {
    case high
    case low
}

class ThirdCar: Car {
    func validSpeed() throws -> Int {
        
        defer {
            print("Valid speed is cleared")
        }
        
        if speed > 100 {
            throw SpeedError.high
        } else {
            if speed > 50 {
                throw SpeedError.low
            } else {
                return 20
            }
        }
    }
}

var thirdCar = ThirdCar()
thirdCar.speed = 200

do {
    try thirdCar.validSpeed()
} catch { error
    print(error)
}

let carValidSpeed = try? thirdCar.validSpeed()

print(carValidSpeed ?? 0)
