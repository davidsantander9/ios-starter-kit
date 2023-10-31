In Swift, a `while` loop is a control flow statement that allows you to repeatedly execute a block of code as long as a certain condition remains true. Here's the basic syntax of a `while` loop:

```swift
while condition {
    // Code to be executed while the condition is true
}
```

- `condition`: This is a Boolean expression that determines whether the loop should continue executing. The loop will run as long as the condition remains `true`.

Here are a few examples of `while` loops in Swift:

1. Basic `while` Loop:

```swift
var count = 1
while count <= 5 {
    print("Count is \(count)")
    count += 1
}
```

In this example, the loop continues to run as long as the `count` variable is less than or equal to 5.

2. Infinite Loop:

```swift
var i = 0
while true {
    print("This is an infinite loop")
    i += 1
    if i >= 5 {
        break // Exit the loop after 5 iterations
    }
}
```

In this example, we have an infinite loop that prints a message. It's stopped after a certain condition is met using the `break` statement.

3. Using a `while` Loop with User Input:

```swift
import Foundation

var userInput: String
while true {
    print("Enter 'q' to quit: ", terminator: "")
    userInput = readLine() ?? ""
    if userInput == "q" {
        break
    }
}
```

In this example, the loop continues until the user enters "q" to quit.

4. Nested `while` Loop:

```swift
var outer = 1
while outer <= 3 {
    var inner = 1
    while inner <= 3 {
        print("Outer: \(outer), Inner: \(inner)")
        inner += 1
    }
    outer += 1
}
```

In this example, we have a nested `while` loop. The inner loop is completely executed for each iteration of the outer loop.

`while` loops are useful when you need to execute a block of code repeatedly until a specific condition is no longer met. It's important to ensure that the condition in the `while` loop eventually becomes `false` to avoid infinite loops.

## Repeat while
In Swift, the `repeat-while` loop is a control flow statement that is similar to the `while` loop. It allows you to repeatedly execute a block of code as long as a certain condition remains true, but with a slight difference: the `repeat-while` loop always executes the block of code at least once, and then it checks the condition. Here's the basic syntax of a `repeat-while` loop:

```swift
repeat {
    // Code to be executed at least once
} while condition
```

- `condition`: This is a Boolean expression that determines whether the loop should continue executing. The loop will continue to run as long as the condition remains `true`.

The key difference between the `while` loop and the `repeat-while` loop is that in the `repeat-while` loop, the code block is executed before checking the condition. This ensures that the code block is executed at least once, even if the condition is initially `false.

Here are a few examples of `repeat-while` loops in Swift:

1. Basic `repeat-while` Loop:

```swift
var count = 1
repeat {
    print("Count is \(count)")
    count += 1
} while count <= 5
```

In this example, the code block is executed at least once, and then the condition is checked. If the condition is `true`, the loop continues.

2. Using a `repeat-while` Loop with User Input:

```swift
import Foundation

var userInput: String
repeat {
    print("Enter 'q' to quit: ", terminator: "")
    userInput = readLine() ?? ""
} while userInput != "q"
```

In this example, the user is prompted to enter "q" to quit, and the code block is executed at least once. The loop continues until the user enters "q."

3. Loop with a Menu:

```swift
var choice: Int
repeat {
    print("Menu:")
    print("1. Option 1")
    print("2. Option 2")
    print("3. Quit")
    print("Enter your choice: ", terminator: "")
    
    choice = Int(readLine() ?? "") ?? 0
    
    switch choice {
    case 1:
        print("You chose Option 1")
    case 2:
        print("You chose Option 2")
    case 3:
        print("Goodbye!")
    default:
        print("Invalid choice")
    }
} while choice != 3
```

In this example, the menu options are displayed, and the user's choice is validated. The loop continues until the user chooses to quit (Option 3).

The `repeat-while` loop is useful when you want to ensure that a block of code is executed at least once before checking the condition. It's especially helpful in situations where you need to process user input or perform an initial operation before evaluating the loop's condition.