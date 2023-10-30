import UIKit

//Hello World
print("Hello, world!")

//Simple values
// Constans & Variables

var myVariable = 7
myVariable = 9
let myConstant = 10

//Explicit statement
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

// Experiment
let myExperiment: Float = 4


//Type Convertion

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

/**
 Experiment!!!
 let widthLabel = label + width
 
 Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
 */

//Interpolation
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."


/**
 Experiment!!!
 Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.
*/
let name = "David"
var myGrating = "\(name) knows the value of this operatation 5 + 4 =\(5 + 4)"

// Multiple line String

let quotation = """
        Even though there's whitespace to the left,
        the actual lines aren't indented.
            Except for this line.
        Double quotes (") can appear without being escaped.

        I still have \(apples + oranges) pieces of fruit.
        """

// Arrays and dictionaries

var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"


var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]
occupations["Jayne"] = "Public Relations"

// Add elements to an array
fruits.append("blueberries")
print(fruits)

// Empty arrats and dictionaries

fruits = []
occupations = [:]

//Explicity type declaration arrays and dics

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]


//Control flow
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// Optional: Values that might be missing
// Optional: It's a value either contains a value or constains a nil
// nil: Indicates values is missig
// Write a question mark "?" after the type of a value to mark as optional
// To work with optionals you can use if and let

var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"


var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

/**
 If the optional value is nil, the conditional is false and the code in braces is skipped. Otherwise, the optional value is unwrapped and assigned to the constant after let, which makes the unwrapped value available inside the block of code.
*/


// Other way to handle optional values is provide a default value
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"


// You use for-in to iterate over items in a dictionary by providing a pair of names to use for each key-value pair. Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order.

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestNumberType: String = ""
for (typeNumber, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestNumberType = typeNumber
        }
    }
}
print(largest)
print(largestNumberType)

// Keep an index in loop using to make a range of indexes

var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6"

// Functions and Clousures
/**
 Use func to declare a function. Call a function by following its name with a list of arguments in parentheses. Use -> to separate the parameter names and types from the function’s return type.
 */

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

/*
 By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label
 */

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")

/**
 Use a tuple to make a compound value — for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.
 */

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0


    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }


    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// Prints "120"
print(statistics.2)
// Prints "120"


/**
 Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that’s long or complex.
 */


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


/**
 Functions are a first-class type. This means that a function can return another function as its value
 */

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

/**
 A function can take another function as one of its arguments.
 */

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

/**
 Functions are actually a special case of closures: blocks of code that can be called later. The code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it’s executed — you saw an example of this already with nested functions. You can write a closure without a name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body.
*/

numbers.map({ (number: Int) -> Int in
    if number % 2 != 0{
        return 0
    }else{
        let result = 3 * number
        return result
    }
})

let mappedNumbers = numbers.map({ (number: Int) -> Int in
    if number % 2 != 0{
        return 0
    }else{
        let result = 3 * number
        return result
    }
})

print(mappedNumbers)


/**
 You can refer to parameters by number instead of by name — this approach is especially useful in very short closures. A closure passed as the last argument to a function can appear immediately after the parentheses. When a closure is the only argument to a function, you can omit the parentheses entirely.

 */
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
// Prints "[20, 19, 12, 7]"


// Objects and classes

class Shape {
    var numberOfSides = 0
    let typeOf = 1
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func getTypeOf(typeOf: Int) -> Int {
        return typeOf
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

// Init

class NamedShape {
    var numberOfSides: Int = 0
    var name: String


    init(name: String) {
       self.name = name
    }


    func simpleDescription() -> String {
       return "A shape with \(numberOfSides) sides."
    }
}

// Denit

/**
 Use deinit to create a deinitializer if you need to perform some cleanup before the object is deallocated.
 */
/**
 Subclasses include their superclass name after their class name, separated by a colon. There’s no requirement for classes to subclass any standard root class, so you can include or omit a superclass as needed.
 Methods on a subclass that override the superclass’s implementation are marked with override — overriding a method by accident, without override, is detected by the compiler as an error. The compiler also detects methods with override that don’t actually override any method in the superclass.
 */
class Square: NamedShape {
    var sideLength: Double


    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }


    func area() -> Double {
        return sideLength * sideLength
    }


    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

/**
 Experimient!!
 Make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implement an area() and a simpleDescription() method on the Circle class.
 */

class Circle: NamedShape{
    var radius: Double
    
    init(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return radius * Double.pi
    }
    
    override func simpleDescription() -> String {
        return "This is a cirlce with ridius of \(self.radius) and area of \(area())"
    }
}

let testCircle = Circle(radius: 5, name: "Circle")
testCircle.simpleDescription()


// In addition to simple properties that are stored, properties can have a getter and a setter.

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0


    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }


    var perimeter: Double {
        get {
             return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }


    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
// Prints "9.3"
triangle.perimeter = 9.9
print(triangle.sideLength)
// Prints "3.3000000000000003"


enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king


    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
