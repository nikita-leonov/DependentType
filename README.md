# Depends

This is the experiment in dependend types domain. I hardly believe such an approcah can be used in any of production Swift code, however it shows the dependent types concept in a Swift context that for some pepole can be simplier in compare with other programming languages like Idris etc.

Current implementation support Boolean and Number (values from 0 to infinity).

Boolean example:
```
let b1 = Type<Bool, False>()
let b2 = Type<Bool, True>()

let step1 = !(b1&&b2)
let step2 = step1 == !b1
let step3 = step1 != !step2 && b1

//Result guaranteed to be True at compile time.
let result: Type<Bool, True> = !step3
```

Number example:
```
let one = Type<UInt, One>()
let two = one + one
let three = two + one

//Both results guaranteed at compile time.
let comparCorrectExpectation: Type<Bool, True> = two == two
let comparWrongExpectation: Type<Bool, False = two == three
```

There are also some first steps for control flow. Current only `if () then {} else {}` available. While the use case for such code is quite limited an implementation is something that some sophisticated developer can be curious about check `Depends/ControlFlow.swift`.


