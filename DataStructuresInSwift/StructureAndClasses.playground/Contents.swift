//: Playground - noun: a place where people can play

import UIKit

//Mutability and InOut


struct PointStruct: CustomStringConvertible
{
    var x,y : Int
    var description: String{
        return( "\(x) \(y)")
    }
    mutating func transpose()
    {
        (y,x) = (x,y)
    }
}


class PointClass: CustomStringConvertible
{
    var x,y : Int
    
    init(x:Int ,y:Int) {
        self.x = x
        self.y = y
    }
    
    var description: String{
        return( "\(x) \(y)")
    }
    func transpose()
    {
        (y,x) = (x,y)
    }
}

var ps1 = PointStruct(x: 10, y: 20)
var ps2 = ps1
ps1.x = 100
ps1
ps2


var pc1 = PointClass(x: 10, y: 20)
var pc2 = pc1
pc1.x = 100
pc1
pc2

print("Array of Structs")

var arrayOfStructs:[PointStruct] = []
{
    didSet{
        print(arrayOfStructs)
    }
}

arrayOfStructs.append(ps1)
arrayOfStructs.append(ps2)
arrayOfStructs.append(PointStruct( x: 345,y:765))
arrayOfStructs
arrayOfStructs[0].x = 900
arrayOfStructs[1].transpose()

var arrayOfPointClass: [ PointClass] = []
{
    didSet{
        print(arrayOfPointClass)

    }
}

arrayOfPointClass.append(pc1)
arrayOfPointClass.append(pc2)
arrayOfPointClass.append(pc1)

pc1.x = 333

print(arrayOfPointClass)





