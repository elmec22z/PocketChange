//
//  LinkedListNode.swift
//  DataStructuresFinal
//
//  Created by Mia Cherayil on 4/9/16.
//  Copyright © 2016 Zineb El Mechrafi. All rights reserved.
//

import Foundation

class Node<T:NSObject> {
    var value: T? = nil
    var next: Node<T>? = nil
    var prev: Node<T>? = nil
    
    init() {
    }
    
    init(value: T) {
        self.value = value
    }
}

