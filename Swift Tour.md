# A Swift Tour

## Feautures and syntax of swift

Classic Hello world app

```
print("Hello world")
```

### let == constant | var == variable

```
var myVariable = 7
myVariable = 9

let myConstant = 10
```

### Explicity type declaration
```
let explicitDouble: Double = 70
```
### Type convertions

Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.

```
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
```


