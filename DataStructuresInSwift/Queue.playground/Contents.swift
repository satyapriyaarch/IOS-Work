//: Playground - noun: a place where people can play

import UIKit



struct Queue <Element>{
    
    private var storage: [Element] = []
    
    mutating func enqueue(_ element:Element){
        storage.append(element)
    }
    mutating func dequeue() -> Element?
    {
        return storage.removeFirst()
    }
    func printElements()
    {
        for item in storage {
            print(item)
        }
    }
}

var myQueue = Queue<String>()

myQueue.printElements()

myQueue.enqueue("Satya")
myQueue.enqueue("Priya")
myQueue.enqueue("Rajput")

myQueue.printElements()

myQueue.dequeue()
myQueue.printElements()


