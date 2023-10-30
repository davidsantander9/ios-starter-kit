# Strings and Charecters

## String Literal
```
let someString = "Some string literal value"
```

### Methods
- Count
  ```
  let str = "Hello, World!"
  let count = str.count // count is 13
  ```
- Substrings
  - prefix(_:): Returns a substring with the specified number of characters from the start of the string.
  - suffix(_:): Returns a substring with the specified number of characters from the end of the string.
  - prefix(upTo:): Returns a substring up to the specified index.
  - prefix(through:): Returns a substring through the specified index.
  - subscript: Allows you to extract substrings using index ranges.
  ```
  ```
- String Replacement
  
  replacingOccurrences(of:with:): Replaces occurrences of a substring with another string.
  ```
    let str = "Hello, World!"
    let newStr = str.replacingOccurrences(of: "World", with: "Swift") // newStr is "Hello, Swift!"

  ```
- Case conversion
  - uppercased(): Converts the string to uppercase.
  - lowercased(): Converts the string to lowercase.
  ```
    let str = "Hello, World!"
    let upper = str.uppercased() // upper is "HELLO, WORLD!"
  ```
- String searching
  - contains(_:): Checks if the string contains a specified substring.
  - hasPrefix(_:): Checks if the string starts with a specified prefix.
  - hasSuffix(_:): Checks if the string ends with a specified suffix.
  
- String Splitting:
  
  split(separator:): Splits the string into an array of substrings based on a separator character or string.

  ```
    let str = "apple,banana,orange"
  let fruits = str.split(separator: ",") // fruits is ["apple", "banana", "orange"]
  ```



## Multiline String Literal

```
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
```

## Special Characters in String Literals

```
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
```

## Extended String delimiters
You can place a string literal within extended delimiters to include special characters in a string without invoking their effect

```
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
```
## Initializing an Empty String

```
var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
```

## Working with Characters
```
for character in "Dog!🐶" {
    print(character)
}
// D
// o
// g
// !
// 🐶
```

> String values can be constructed by passing an array of Character values as an argument to its initializer:

```
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"
```

## Concatenating Strings and Characters

```
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome now equals "hello there"
```

```
var instruction = "look over"
instruction += string2
// instruction now equals "look over there"
```

```
let exclamationMark: Character = "!"
welcome.append(exclamationMark)
// welcome now equals "hello there!"
```

## String Interpolation

```
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"

print(#"Write an interpolated string in Swift using \(multiplier)."#)

print(#"6 times 7 is \#(6 * 7)."#)
// Prints "6 times 7 is 42."
```

## Counting Characters

```
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")
// Prints "unusualMenagerie has 40 characters"
```

## Accessing and modifying a String

```
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a
```

## Inserting and removing

```
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"


welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there!"

welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there"


let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome now equals "hello"
```

## Substrings

```
let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning is "Hello"


// Convert the result to a String for long-term storage.
let newString = String(beginning)
```

## Comparation
```
// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"


// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"


if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// Prints "These two strings are considered equal"

```
