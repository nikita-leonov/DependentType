//
//  Number.swift
//  Depends
//
//  Created by Nikita Leonov on 10/14/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

public struct Number<Position>: Value {
    var position: Position
    
    public init(_ position: Position) {
        self.position = position
    }
    
    public static func value() -> UInt {
        return 0
    }
}

typealias Zero = Number<()>
typealias One = Number<() -> ()>

func ==<V>(lhs: Type<UInt, Number<V>>, rhs: Type<UInt, Number<V>>) -> Type<Bool, True> {
    return Type()
}

func ==<V1, V2>(lhs: Type<UInt, Number<V1>>, rhs: Type<UInt, Number<V2>>) -> Type<Bool, False> {
    return Type()
}

func +<V>(lhs: Type<UInt, Number<V>>, rhs: Type<UInt, One>) -> Type<UInt, Number<() -> V>> {
    return Type()
}

func -<RV>(lhs: Type<UInt, Number<() -> RV>>, rhs: Type<UInt, One>) -> Type<UInt, Number<RV>> {
    return Type()
}
