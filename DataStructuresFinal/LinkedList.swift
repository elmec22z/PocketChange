//
//  LinkedList.swift
//  DataStructuresFinal
//
//  Created by Mia Cherayil on 4/9/16.
//  https://www.erginbilgin.com.tr/implementing-doubly-linked-list-using-swift-2-0/
//  Copyright © 2016 Zineb El Mechrafi. All rights reserved.
//

import Foundation


class MyLinkedList<T:NSObject> {
    var count: Int = 0
    var head: Node<T> = Node<T>()
    var tail: Node<T> = Node<T>()
    
    init()
    {
        
    }
    
    func isEmpty() -> Bool {
        return self.count == 0
    }
    
        
    func addItem(value: T) {
            let node = Node<T>(value: value)
            if self.isEmpty() {
                self.head = node
                self.tail = node
            } else {
                node.prev = self.tail
                self.tail.next = node
                self.tail = node
            }
            self.count += 1
        }
    
    
    
    func insertItem(value: T, position: Int){
        let node = Node<T>(value: value)
        if (self.count > position) {
            if (position == 0){
                node.next = self.head
                self.head.prev = node
                self.head = node
            } else {
                var currentNode = self.head
                for _ in 0...position-1 {
                    currentNode = currentNode.next!
                }
                node.next = currentNode
                node.prev = currentNode.prev
                currentNode.prev!.next = node
                currentNode.prev = node
            }
            self.count+=1
        }
}
    
    
    func removeItem(position: Int) {
        if (self.count > position){                             // -if position exists
            if (self.count != 1){
                if (position == 0){                             // --if position is head
                    self.head.next!.prev = head.prev
                    self.head = head.next!
                }
                if (position == self.count-1){                  // --if position is tail
                    self.tail.prev!.next = tail.next
                    self.tail = tail.prev!
                }
                if (position > 0 && position < count-1){        // --if position at middle
                    var currentNode = self.head
                    for _ in 0...position-1 {
                        currentNode = currentNode.next!
                    }
                    currentNode.next!.prev = currentNode.prev
                    currentNode.prev!.next = currentNode.next
                }
            } else {                                            // -if last node
                head = Node<T>()
                tail = Node<T>()
            }
            self.count-=1
        }

    }
    

    func replaceItem(itemToReplace: T, position: Int) {
        if (self.count > position){                         // -if position exists
            var currentNode = self.head
            if (position == 0){                             // --if position is head
                currentNode.value = itemToReplace
            } else {                                        // --if position is not head
                for _ in 0...position-1{
                    currentNode = currentNode.next!
                }
                currentNode.value = itemToReplace
            }
        }
    }
    
    func getItemAt(position: Int) -> T? {
        if (self.count > position){                         // -if position exists
            var currentNode = self.head
            if (position == 0){                             // --if position is head
                return currentNode.value
            } else {                                        // --if posisiton is not head
                for _ in 0...position-1{
                    currentNode = currentNode.next!
                }
                return currentNode.value
            }
        } else {
            return nil                                      // -- if position doesn't exist
        }
        
    }
    
    func printList() {
        var output: String = "["
        var currentNode: Node? = self.head
        while (currentNode != nil) {
            output += String(currentNode!.value)
            currentNode = currentNode!.next
            if (currentNode != nil){                // If statement is for avoid "," sign at the end.
                output += ", "
            }
        }
        output += "]"
        print(output)
    }
    
    func printInverse() {
        var output: String = "["
        var currentNode: Node? = self.tail
        while (currentNode != nil) {
            output += String(currentNode!.value)
            currentNode = currentNode!.prev
            if (currentNode != nil){                // If statement is for avoid "," sign at the end.
                output += ", "
            }
        }
        output += "]"
        print(output)
    }
    
    func getSize() -> Int
    {
        return count
    }
    
}
