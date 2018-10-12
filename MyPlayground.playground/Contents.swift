// This file was used to practice and try out coding in Swift before jumping into working on coding on the story board.

//: Playground - noun: a place where people can play

import UIKit

func randFunc() {
    print("Random!!!")
}

randFunc()

func myAge(age:String) {
    print("Your age is " + age + ".")
}


myAge(age: "24")

func myAgeRevised(age:Int) {
    print("Your age is \(age).")
}

myAgeRevised(age: 20)


func addIt(num1:Int, num2:Int) -> Int {
    return (num1 + num2)
//    Or you can save the result to a variable and return the variable. Uses more memory though..
}

print(addIt(num1: 103910931, num2: 538194201))


////////////////////////////////

class Mathematics {
    var base_numb = 1000
//    Method 1
    func addStuff(x:Int, y:Int) -> Int {
        return(x + y + base_numb)
    }
//    Method 2
    
    func subStuff(x:Int, y:Int) -> Int {
        return(base_numb + x - y)
    }
}

var new_math = Mathematics()

var new_num = new_math.addStuff(x: 1, y: 5)

print("oh boy, \(new_num)")


// Use let for class assignments so you don't overwrite it on accident..
let calculator:Mathematics = Mathematics()

print(calculator.base_numb)
