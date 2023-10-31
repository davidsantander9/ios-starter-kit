# For in Loop
A `for-in` loop in Swift is used to iterate over a sequence, collection, or a range of values. It's a versatile loop construct that allows you to iterate through elements, such as arrays, dictionaries, sets, or a range of numbers, and perform an operation on each element in the sequence. Here's the basic syntax of a `for-in` loop:

```swift
for element in sequence {
    // Code to be executed for each element
}
```

- `element`: This is a variable that represents the current element in the sequence during each iteration of the loop. You can choose any name you like for this variable.

- `sequence`: This is the collection, array, range, or any iterable object you want to loop through.

Here are a few examples of `for-in` loops in Swift:

1. Iterating over an Array:

```swift
let fruits = ["apple", "banana", "cherry"]
for fruit in fruits {
    print("I like \(fruit)")
}
```

2. Iterating over a Dictionary (key-value pairs):

```swift
let scores = ["Alice": 95, "Bob": 88, "Charlie": 75]
for (name, score) in scores {
    print("\(name) scored \(score)")
}
```

3. Iterating over a Range of Numbers:

```swift
for number in 1...5 {
    print("Number: \(number)")
}
```

4. Iterating over a String:

```swift
let message = "Hello, Swift"
for character in message {
    print(character)
}
```

5. Iterating with a Range and a Step:

```swift
for number in stride(from: 0, to: 10, by: 2) {
    print(number)
}
```

In this example, `stride` is used to create a sequence of numbers from 0 to 10 with a step size of 2, resulting in `0`, `2`, `4`, `6`, `8`.

`for-in` loops are a fundamental control structure in Swift for iterating over collections, sequences, and ranges, and they offer a convenient way to process elements in your code.