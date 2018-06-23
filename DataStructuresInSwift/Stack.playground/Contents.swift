//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


print(str)



// Stack in Swift

struct Stack <Element>
{
    private var storage : [Element] = []
    
    mutating func push( _ element:Element){
        storage.append(element)
        print("Pushing \(element)")
    }
    
    mutating func pop () -> Element?
    {
        print("poping \(storage.last)")
       // storage.removeLast()
       return storage.popLast()
    }
    
    func printElements()
    {
        for item in storage {
            print(item)
        }
    }
}

var myStack : Stack<String> = Stack()

myStack.push("Satya")
myStack.push("Priya")
myStack.push("Rajput")
myStack.printElements()
myStack.pop()
myStack.printElements()


