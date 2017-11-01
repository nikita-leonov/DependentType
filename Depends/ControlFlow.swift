//
//  ControlFlow.swift
//  Depends
//
//  Created by Nikita Leonov on 10/14/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

func `if`<TR, ER>(_ true: Type<Bool, True>, then: () -> (TR), else: () -> (ER)) -> TR {
    return then()
}

func `if`<TR, ER>(_ true: Type<Bool, False>, then: () -> (TR), else: () -> (ER)) -> ER {
    return `else`()
}

func `do`<S>(count: Type<UInt, Number<() -> () -> () -> ()>>, state: S, process: (S) -> (S) ) -> S {
    let one = Type<UInt, One>()
    return `do`(count: count - one, state: process(state), process: process)
}

func `do`<S>(count: Type<UInt, Number<() -> () -> ()>>, state: S, process: (S) -> (S) ) -> S {
    let one = Type<UInt, One>()
    return `do`(count: count - one, state: process(state), process: process)
}

func `do`<S>(count: Type<UInt, Number<() -> ()>>, state: S, process: (S) -> (S) ) -> S {
    let one = Type<UInt, One>()
    return `do`(count: count - one, state: process(state), process: process)
}

func `do`<S>(count: Type<UInt, Zero>, state: S, process: (S) -> (S) ) -> S {
    return state
}
