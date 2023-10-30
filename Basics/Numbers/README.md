# Integers

## Integer Bounds

You can access the minimmum and maximum values of each integer 

```
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
```

## Size of intenger
- On a 8-bit platform, Int is the same size as Int8
- On a 16-bit platform, Int is the same size as Int16
- On a 32-bit platform, Int is the same size as Int32.
- On a 64-bit platform, Int is the same size as Int64.

## Unsigned integer type

- On a 32-bit platform, UInt is the same size as UInt32
- On a 64-bit platform, UInt is the same size as UInt64.

## Floating Numbers

- Double represents a 64-bit floating-point number. (precision of 15 decimal digits)
- Float represents a 32-bit floating-point number. (precision of 6 decimal digits)

## Numerics Literals

Integer literals can be written as:
- A decimal number, with no prefix
- A binary number, with a 0b prefix
- An octal number, with a 0o prefix
- A hexadecimal number, with a 0x prefix

All of these integer literals have a decimal value of 17:
```
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation
```

### Numeric type conversion
The range of numbers that can be stored in an integer constant or variable is different for each numeric type
```
let cannotBeNegative: UInt8 = -1
// UInt8 can't store negative numbers, and so this will report an error
let tooBig: Int8 = Int8.max + 1
// Int8 can't store a number larger than its maximum value,
// and so this will also report an error
```

Convert one specific number type to another, you initialize a new number of the desired type with the existing value.

```
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
```

## Integer and Floating-Point Conversionin page link
```
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
```