# Switch

In Swift, the `switch` statement is a control flow construct used for making decisions based on the value of an expression or variable. It provides a way to compare a value against multiple possible patterns and execute different code blocks based on the matched pattern. Here's the basic syntax of a `switch` statement:

```swift
switch expression {
case pattern1:
    // Code to execute when expression matches pattern1
case pattern2:
    // Code to execute when expression matches pattern2
// More cases...
default:
    // Code to execute when no patterns match
}
```

- `expression`: This is the value or variable that you want to evaluate against different patterns.

- `case pattern1`, `case pattern2`, etc.: These are the patterns you want to match. When a pattern matches the value of the expression, the corresponding code block is executed.

- `default`: This is an optional case that is executed when no other patterns match.

Here are some examples of how to use the `switch` statement in Swift:

1. Basic `switch` Statement:

```swift
let fruit = "apple"

switch fruit {
case "apple":
    print("It's an apple.")
case "banana":
    print("It's a banana.")
default:
    print("It's something else.")
}
```

2. Using Ranges:

```swift
let score = 85

switch score {
case 0..<60:
    print("Fail")
case 60..<70:
    print("D")
case 70..<80:
    print("C")
case 80..<90:
    print("B")
case 90...100:
    print("A")
default:
    print("Invalid score")
}
```

3. Using Enumerations:

```swift
enum CompassPoint {
    case north, south, east, west
}

let direction = CompassPoint.north

switch direction {
case .north:
    print("Heading north")
case .south:
    print("Heading south")
case .east:
    print("Heading east")
case .west:
    print("Heading west")
}
```

4. Using Value Binding:

```swift
let point = (2, 3)

switch point {
case (let x, 0):
    print("On the x-axis at x = \(x)")
case (0, let y):
    print("On the y-axis at y = \(y)")
case (let x, let y):
    print("Somewhere else at (\(x), \(y))")
}
```

A switch case can name the value or values it matches to temporary constants or variables, for use in the body of the case. This behavior is known as value binding, because the values are bound to temporary constants or variables within the case’s body.

The `switch` statement is a powerful tool for handling complex branching logic in your Swift code. It's often used for scenarios where you need to compare a value against multiple conditions and execute different code based on the match. Additionally, Swift's `switch` statement is exhaustive, meaning that it enforces you to handle all possible cases, which helps catch potential errors during compilation.

## No Implicit Fallthroughin page link

> In contrast with switch statements in C and Objective-C, switch statements in Swift don’t fall through the bottom of each case and into the next one by default. Instead, the entire switch statement finishes its execution as soon as the first matching switch case is completed, without requiring an explicit break statement. This makes the switch statement safer and easier to use than the one in C and avoids executing more than one switch case by mistake


## Switch and where

In Swift, you can use the `where` clause in a `switch` statement to add additional conditions to your case blocks. The `where` clause allows you to specify extra criteria that must be satisfied for a case block to be executed. This can be especially useful for creating more complex and specific pattern matching within your `switch` statement.

Here's the basic syntax of a `switch` statement with a `where` clause:

```swift
switch value {
case pattern1 where condition1:
    // Code to execute when pattern1 matches and condition1 is true
case pattern2 where condition2:
    // Code to execute when pattern2 matches and condition2 is true
// More cases...
default:
    // Code to execute when no patterns match
}
```

- `value`: The value or expression to be evaluated.

- `pattern1`, `pattern2`, etc.: The patterns to match.

- `condition1`, `condition2`, etc.: The conditions to check in the `where` clause.

- `default`: An optional block of code to execute when no patterns match.

Here are some examples to illustrate the usage of `switch` with `where`:

1. Using `where` with Ranges:

```swift
let score = 75

switch score {
case 0..<60 where score < 50:
    print("Fail and less than 50")
case 60..<70 where score < 65:
    print("D and less than 65")
case 70..<80 where score < 75:
    print("C and less than 75")
case 80...100 where score > 90:
    print("A and greater than 90")
default:
    print("Other case")
}
```

In this example, the `where` clause is used to add extra conditions to each case, making the pattern matching more specific.

2. Using `where` with Tuples:

```swift
let point = (2, 3)

switch point {
case (let x, 0) where x < 0:
    print("On the negative x-axis at x = \(x)")
case (0, let y) where y < 0:
    print("On the negative y-axis at y = \(y)")
case (let x, let y) where x > 0 && y > 0:
    print("In the first quadrant at (\(x), \(y))")
default:
    print("Somewhere else")
}
```

Here, the `where` clause is used with a tuple pattern to impose additional conditions on the cases.

The `where` clause in a `switch` statement allows you to create more specific and conditional pattern matching, enabling you to handle complex cases based on the values and conditions that you need to consider. It's a powerful feature in Swift for adding flexibility to your code logic.

## Compund cases
In Swift, you can use compound cases within a `switch` statement to combine multiple cases into one block of code. This can be useful when you want to execute the same code for multiple case values. Here's how to use compound cases in a `switch` statement:

```swift
switch value {
case pattern1, pattern2:
    // Code to execute when pattern1 or pattern2 matches
case pattern3, pattern4:
    // Code to execute when pattern3 or pattern4 matches
// More cases...
default:
    // Code to execute when no patterns match
}
```

- `value`: The value or expression to be evaluated.

- `pattern1`, `pattern2`, etc.: The patterns that you want to match in the compound case.

- `default`: An optional block of code to execute when no patterns match any of the cases.

Here are some examples to illustrate the use of compound cases:

1. Using Compound Cases with Enum Values:

```swift
enum Direction {
    case north, south, east, west
}

let direction = Direction.north

switch direction {
case .north, .south:
    print("This is a vertical direction")
case .east, .west:
    print("This is a horizontal direction")
}
```

In this example, the compound cases group `.north` and `.south` together and `.east` and `.west` together, allowing you to execute the same code for each group.

2. Using Compound Cases with Ranges:

```swift
let score = 85

switch score {
case 0..<60, 60..<70:
    print("You didn't do very well.")
case 70..<80, 80..<90:
    print("You did okay.")
case 90...100:
    print("You did great!")
default:
    print("Invalid score")
}
```

In this example, the compound cases group score ranges to provide feedback based on the score.

3. Using Compound Cases with Strings:

```swift
let fruit = "apple"

switch fruit {
case "apple", "banana":
    print("It's a common fruit.")
case "cherry", "strawberry":
    print("It's a red fruit.")
default:
    print("It's something else.")
}
```

Here, compound cases group fruits based on their characteristics.

Compound cases in Swift allow you to streamline your code by executing the same code block for multiple case values. This is especially useful when you have a set of values that should result in the same behavior.