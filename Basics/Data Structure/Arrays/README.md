# Arrays

## Creating an Empty Array
```
var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")
// Prints "someInts is of type [Int] with 0 items."
```

## Creating an array with a default value
```
var threeDoubles = Array(repeating: 0.0, count: 3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]
```

## Creating an array by adding two array together

```
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]
```

## Creating an Array by Adding Two Arrays Together

```
var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
```

## Iterating over an array
```
for item in shoppingList {
    print(item)
}
// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas
```

# Methods

- Appending Elements:
  - append(_:): Adds a new element to the end of the array.
  - +=: Appends the elements of another array.
  ```
  var numbers = [1, 2, 3]
  numbers.append(4) // [1, 2, 3, 4]
  numbers += [5, 6] // [1, 2, 3, 4, 5, 6]
  ```
- Inserting Elements:
  - insert(_:at:): Inserts an element at a specific index in the array.
  ```
    var fruits = ["apple", "banana", "cherry"]
    fruits.insert("orange", at: 1) // ["apple", "orange", "banana", "cherry"]
  ```
- Removing Elements:
  - remove(at:): Removes the element at a specified index.
  - removeLast(): Removes the last element.
  - removeAll(): Removes all elements.
  ```
  var numbers = [1, 2, 3, 4, 5]
  numbers.remove(at: 2) // [1, 2, 4, 5]
  numbers.removeLast()  // [1, 2, 4]
  numbers.removeAll()    // []
  ```
- Accessing Elements:
  - first: Returns the first element.
  - last: Returns the last element.
  - subscript: Access elements by index.
  ```
  let numbers = [1, 2, 3, 4, 5]
  let firstNumber = numbers.first // 1
  let lastNumber = numbers.last   // 5
  let thirdNumber = numbers[2]    // 3
  ```
- Searching for Elements
  - contains(_:): Checks if an element is in the array.
  - firstIndex(of:): Returns the index of the first occurrence of an element.
  ```
  let fruits = ["apple", "banana", "cherry"]
  let hasBanana = fruits.contains("banana") // true
  let index = fruits.firstIndex(of: "cherry") // 2
  ```
- Filtering Maping and Maping
  - filter(_:): Creates a new array containing elements that meet a specified condition.
  - map(_:): Creates a new array by applying a transformation to each element.
  ```
  let numbers = [1, 2, 3, 4, 5]
  let evenNumbers = numbers.filter { $0 % 2 == 0 } // [2, 4]
  let squaredNumbers = numbers.map { $0 * $0 } // [1, 4, 9, 16, 25]
  ```
- Sorting
  - sort(): Sorts the array in ascending order (in-place).
  - sorted(): Returns a new array with elements sorted in ascending order.
  ```
  var fruits = ["banana", "apple", "cherry"]
  fruits.sort() // ["apple", "banana", "cherry"]
  let sortedFruits = fruits.sorted() // ["apple", "banana", "cherry"]
  ```
- Other Methods
  - count: Returns the number of elements in the array.
  - isEmpty: Checks if the array is empty.
  - reverse(): Reverses the order of elements in the array.
  - joined(separator:): Joins the elements into a single string using a separator.