# DependentType

Playground with generic Swift DependentType implementation with support of boolean computations.

```
let b1 = DependentType<Bool, True>()
let b2 = DependentType<Bool, True>()

let step1 = !(b1&&b2)
let step2 = step1 == !b1
let step3 = step1 != !step2 && b1

let result: DependentType<Bool, True> = !step3 //Result guaranteed to be True at compile time.
```

Further expending of DependentType is not feasible due to Swift limitations.
