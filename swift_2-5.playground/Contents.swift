//: Playground - noun: a place where people can play

import UIKit


//2.5 控制流

//for 循环
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}


let names = ["Anna","Alex","Brian","Jack"]
for name in names {
    print(name)
}

var index = 0
for index = 0 ; index<3 ; ++index {
    print(index)
}
print(index)


let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
    if ++diceRoll == 7 { diceRoll = 1 }
    square += diceRoll
    if square < board.count {
        square += board[square]
    }
}
print("Game Over")

square = 0
//Repeat-While
repeat {
    // 顺着梯子爬上去或者顺着蛇滑下去
    square += board[square]
    // 掷骰子
    if ++diceRoll == 7 { diceRoll = 1 }
    // 根据点数移动
    square += diceRoll
} while square < finalSquare
print("Game over!")



//条件语句
//if
//switch
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}

//不存在隐式的失败
//swift在执行完case后会终止switch语句，而不会执行下一个case，也就是说在case分支中不需要用break语句，这使得switch语句更安全，更易用
//，也避免了忘记写break语句而产生的错误


//区间匹配
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")


//元组
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}

//值绑定
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}


//where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

//控制转移语句
//continue   break      
//fallthrough case执行完之后switch会继续执行
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)


//带标签的语句
//gameLoop: while square != finalSquare {
//    if ++diceRoll == 7 { diceRoll = 1 }
//    switch square + diceRoll {
//    case finalSquare:
//        // 到达最后一个方块，游戏结束
//        break gameLoop
//    case let newSquare where newSquare > finalSquare:
//        // 超出最后一个方块，再掷一次骰子
//        continue gameLoop
//    default:
//        // 本次移动有效
//        square += diceRoll
//        square += board[square]
//    }
//}
//print("Game over!")


//提前退出 guard
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}
greet(["name": "John"])
greet(["name": "Jane", "location": "Cupertino"])


//检测API是否可用
if #available(iOS 9, OSX 10.10, *) {
    // 在 iOS 使用 iOS 9 APIs , 并且在 OS X 使用 OS X v10.10 APIs
} else {
    // 回滚至早前 iOS and OS X 的API
}