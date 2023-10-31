# Sets

A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array **when the order of items isn’t important, or when you need to ensure that an item only appears once.**

> A type must be hashable in order to be stored in a set

## Creating and Initializing an Empty Set

```
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
// letters now contains 1 value of type Character

letters = []
// letters is now an empty set, but is still of type Set<Character>
```



## Creating Sets

  - init(): Initializes an empty set.
  - init(arrayLiteral:): Initializes a set with an array of elements.
    ```
      var emptySet = Set<Int>()
      var fruits: Set<String> = ["apple", "banana", "cherry"]
    ```

  - Adding and Removing Elements:
    - insert(_:): Adds an element to the set.
    - remove(_:): Removes an element from the set.
    ```
      var colors: Set<String> = ["red", "green", "blue"]
      colors.insert("yellow")
      colors.remove("red")
    ```
  - Accessing and Checking Elements:
      - count: Returns the number of elements in the set.
      - isEmpty: Checks if the set is empty.
      - contains(_:): Checks if an element is in the set.
         ```
          let numbers: Set<Int> = [1, 2, 3, 4, 5]
          let numberOfElements = numbers.count
          let hasThree = numbers.contains(3)
         ```
  - Set Operations:

    - union(_:): Returns a new set containing all elements from both sets.
    - intersection(_:): Returns a new set containing elements that exist in both sets.
    - subtracting(_:): Returns a new set containing elements that are not in another set.
    - symmetricDifference(_:): Returns a new set with elements that exist in either set but not both.
        ```
          let set1: Set<Int> = [1, 2, 3, 4, 5]
          let set2: Set<Int> = [3, 4, 5, 6, 7]
          let unionSet = set1.union(set2)
          let intersectionSet = set1.intersection(set2)
          let differenceSet = set1.subtracting(set2)
          let symmetricDifferenceSet = set1.symmetricDifference(set2)
        ```
  - Iterating Over a Set:
    - You can use a for-in loop to iterate over the elements in a set.
    ```
      let fruits: Set<String> = ["apple", "banana", "cherry"]
      for fruit in fruits {
          print(fruit)
      }
    ```
  - Transforming a Set:
    - map(_:): Creates an array by applying a transformation to each element in the set.
    ```
      let numbers: Set<Int> = [1, 2, 3, 4, 5]
      let squaredNumbers = numbers.map { $0 * $0 }
    ```
  - Set Membership:
    - Sets are particularly efficient for checking membership because they have an average-case performance of O(1).
    ```
      let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
      let isVowel = vowels.contains("e")
    ```

