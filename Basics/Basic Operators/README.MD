# Basic Operators

## Terminology
- Unary:  (such as -a)
- Binary:  (such as 2 + 3)
- Ternary:  (a ? b : c)

## Assigment Operator

```
let b = 10
var a = 5
a = b
// a is now equal to 10
```

```
let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2
```

## Arithmetic Operators

```
1 + 2       // equals 3
5 - 3       // equals 2
2 * 3       // equals 6
10.0 / 2.5  // equals 4.0
```

## Reminder Operator (modulo)

```
9 % 4    // equals 1
-9 % 4   // equals -1
```

## Unary Plus Operator

```
let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix equals -6
```

## Compound Assignment Operators
```
var a = 1
a += 2
```

### Comparison Operatorsin page

```
1 == 1   // true because 1 is equal to 1
2 != 1   // true because 2 isn't equal to 1
2 > 1    // true because 2 is greater than 1
1 < 2    // true because 1 is less than 2
1 >= 1   // true because 1 is greater than or equal to 1
2 <= 1   // false because 2 isn't less than or equal to 1
```

> You can compare two tuples if they have the same type and the same number of values. 

```
(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"
```

```
("blue", -1) < ("purple", 1)        // OK, evaluates to true
("blue", false) < ("purple", true)  // Error because < can't compare Boolean values
```

## Ternary Conditional Operatorin page link

```
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
```
## NilColeasing Operator

```
let nombre: String? = nil
let nombreValido = nombre ?? "Invitado"
```

## Range Operators

### Close Range Operator

The closed range operator (a...b) defines a range that runs from a to b, and **includes the values a and b**. The value of a must not be greater than b.

```
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
```

###  Closed Range Operator

The half-open range operator "(a..< b)" defines a range that runs from a to b, but ** doesn’t include b **

```
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
```


### One-Side Ranges

The closed range operator has an alternative form for ranges that continue as far as possible in one direction 

```
for name in names[2...] {
    print(name)
}
// Brian
// Jack


for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian


for name in names[..<2] {
    print(name)
}
```

> Other context of one-sided ranges
```
let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true
```


## Logical operators

- Logical NOT (!a)
- Logical AND (a && b)
- Logical OR (a || b)
