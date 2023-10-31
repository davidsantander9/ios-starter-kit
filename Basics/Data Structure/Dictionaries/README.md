# Dictonaries
In Swift, dictionaries are a collection type that allows you to store key-value pairs. Dictionaries come with various methods and operations for working with key-value data efficiently. Here are some common methods and operations for working with dictionaries in Swift:

1. **Creating Dictionaries:**

   - `init()`: Initializes an empty dictionary.
   - `init(uniqueKeysWithValues:)`: Initializes a dictionary using an array of key-value pairs.
   - `init(dictionaryLiteral:)`: Initializes a dictionary using a list of key-value pairs.

   ```swift
   var emptyDictionary = [String: Int]()
   var fruits: [String: Int] = ["apple": 3, "banana": 5, "cherry": 2]
   ```

2. **Accessing and Modifying Elements:**

   - `subscript`: Accesses or updates a value using a key.
   - `updateValue(_:forKey:)`: Updates the value for a key, or adds a new key-value pair.
   - `removeValue(forKey:)`: Removes a key-value pair.

   ```swift
   var scores: [String: Int] = ["Alice": 95, "Bob": 88, "Charlie": 75]
   scores["Bob"] = 90
   let charlieScore = scores["Charlie"]
   scores.updateValue(80, forKey: "David")
   scores.removeValue(forKey: "Charlie")
   ```

3. **Iterating Over a Dictionary:**

   - You can use a `for-in` loop to iterate over key-value pairs in a dictionary.

   ```swift
   let fruits: [String: Int] = ["apple": 3, "banana": 5, "cherry": 2]
   for (fruit, quantity) in fruits {
       print("We have \(quantity) \(fruit)s.")
   }
   ```

4. **Dictionary Keys and Values:**

   - `keys`: Returns an array of keys.
   - `values`: Returns an array of values.

   ```swift
   let fruits: [String: Int] = ["apple": 3, "banana": 5, "cherry": 2]
   let allFruits = Array(fruits.keys)
   let fruitQuantities = Array(fruits.values)
   ```

5. **Dictionary Count and Checking:**

   - `count`: Returns the number of key-value pairs in the dictionary.
   - `isEmpty`: Checks if the dictionary is empty.

   ```swift
   let countries: [String: String] = ["USA": "United States", "CA": "Canada"]
   let numberOfCountries = countries.count
   let isDictionaryEmpty = countries.isEmpty
   ```

6. **Default Values:**

   - `subscript(default:)`: Provides a default value for a key that may not exist.

   ```swift
   let fruits: [String: Int] = ["apple": 3, "banana": 5, "cherry": 2]
   let quantity = fruits["pear", default: 0]
   ```

These are some common methods and operations available for working with dictionaries in Swift. Dictionaries are useful for storing and retrieving key-value data efficiently, and they are a fundamental data structure in Swift.