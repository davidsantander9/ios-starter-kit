# Optionals

You use optionals in situations where a value may be absent. An optional represents two possibilities: Either there is a value of a specified type, and you can unwrap the optional to access that value, or there isn’t a value at all.

## nil

You set an optional variable to a valueless state by assigning it the special value nil

```
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404

serverResponseCode = nil
// serverResponseCode now contains no value
```

>  If you define an optional variable without providing a default value, the variable is automatically set to nil:

> Java: String name = null

```
var surveyAnswer: String?
// surveyAnswer is automatically set to nil
```

You can use an if statement to find out whether an optional contains a value by comparing the optional against nil. You perform this comparison with the “equal to” operator (==) or the “not equal to” operator (!=).
If an optional has a value, it’s considered as “not equal to” nil:

```
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)


if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value."

```

The separation of optional and non-optional values lets you explicitly mark what information can be missing, and makes it easier to write code that handle missing values. 

>  When you access an optional value, your code always handles both the nil and non-nil case. There are several things you can do when a value is missing, as described in the following sections:

- Skip the code that operates on the value when it’s nil.
  ```
  var optionalValue: Int? = 42

  if let unwrappedValue = optionalValue {
      // Code that operates on the unwrapped value when it's not nil
      print("The unwrapped value is \(unwrappedValue)")
  } else {
      // Code that runs when the optionalValue is nil
      print("The value is nil")
  }
  ```
- Propagate the nil value, by returning nil or using the ?. operator described in Optional Chaining.
  ```
  struct Person {
    var name: String
    var address: Address?
  }

  struct Address {
      var street: String
  }

  let person: Person? = Person(name: "John", address: Address(street: "123 Main St"))

  let streetName = person?.address?.street
  ```
- Provide a fallback value, using the ?? operator.
    ```
    let optionalValue: Int? = nil
    let result = optionalValue ?? 42 // Use 42 as the fallback value if optionalValue is nil

    print("The result is: \(result)") // The result is: 42
    ```
- Stop program execution, using the ! operator.
  ```
  let optionalValue: Int? = 42

  // Forcefully unwrap the optional using the ! operator
  let unwrappedValue = optionalValue!

  print("The unwrapped value is: \(unwrappedValue)")
  ```

  ## Optional Binding
  It's a technique used to work safely with optional.
  Optional bindings allows you to unwrap an optional values if it contians a real value and provides a wat yo execute code in case the values is nil

  ```
  if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
  } else {
      print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
  }
  // Prints "The string "123" has an integer value of 123"
  ```

  You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas.

  ```
    if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
      print("\(firstNumber) < \(secondNumber) < 100")
  }
  // Prints "4 < 42 < 100"


  if let firstNumber = Int("4") {
      if let secondNumber = Int("42") {
          if firstNumber < secondNumber && secondNumber < 100 {
              print("\(firstNumber) < \(secondNumber) < 100")
          }
      }
  }
  // Prints "4 < 42 < 100"
  ```
## Providing a fallback value

 ```
  let name: String? = nil
  let greeting = "Hello, " + (name ?? "friend") + "!"
  print(greeting)
  // Prints "Hello, friend!"
 ```

## Force to unwrapping

  When nil represents an unrecoverable failure, such a programmer error or corrupted state, you can access the underlying value by adding an exclamation mark (!

  The ! is, effectively, a shorter spelling of fatalError(_:file:line:). For example, the code below shows two equivalent approaches:
  ```
    let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)


let number = convertedNumber!


guard let number = convertedNumber else {
    fatalError("The number was invalid")
}
  ```

## Implicitly Unwrapped Optionalsin page link

Sometimes it’s clear from a program’s structure that an optional will always have a value, after that value is first set. In these cases, it’s useful to remove the need to check and unwrap the optional’s value every time it’s accessed, because it can be safely assumed to have a value all of the time.

You can think of an implicitly unwrapped optional as giving permission for the optional to be force-unwrapped if needed. 

```
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // Requires explicit unwrapping


let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // Unwrapped automatically
```