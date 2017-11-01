//
//  Value.swift
//  Depends
//
//  Created by Nikita Leonov on 10/14/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

public protocol Value {
    associatedtype TypeOfValue
    static func value() -> TypeOfValue
}
