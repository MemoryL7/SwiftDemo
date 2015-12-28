//: Playground - noun: a place where people can play

import UIKit

//第二章 字符串和字符

//字符串字面量
let someString = "Some string literal value"

//初始化空字符串
var emptyString = ""
var anotherEmptyString = String()

//字符串可变性
var variableString = "Horse"
variableString += "and carriage"

let constantString = "Highlander"
//constantString += "and another Highlander"  //不能修改let常量

//字符串是值类型
//使用字符
for character in "Dog!🐶".characters{
    print(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["c","a","t","!","🐱"]
let catString = String(catCharacters)
print(catString)

//连接字符串和字符
let string1 = "hello"
let string2 = "three"
var welcome = string1 + string2
welcome.appendContentsOf("1")
print(welcome)

//字符串插值
print("\(string1)----\(string2)")

//Unicode
//字符串字面量的特殊字符
print("123\\\t\n\r\"\'12")
print("\u{1F496}")


//计算字符数量
var word = "cafe"
print(word.characters.count)



//访问和修改字符索引
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
print("---------------------")
print("greeting.startIndex=\(greeting.startIndex)")
//从0
print("greeting.endIndex.predecessor() = \(greeting.endIndex.predecessor())")
//从1
print("greeting.startIndex.successor() = \(greeting.startIndex.successor())")
//从0
print("greeting.startIndex.advancedBy(7) = \(greeting.startIndex.advancedBy(7))")


for index in greeting.characters.indices{
    print("\(greeting[index]) ",terminator:"")
}
print("")

//插入和删除
var newWelcome = "hello"
newWelcome.insertContentsOf(" there".characters, at: newWelcome.endIndex)

//newWelcome.removeAtIndex(newWelcome.endIndex.predecessor())

let range = newWelcome.endIndex.advancedBy(-6)..<newWelcome.endIndex
newWelcome.removeRange(range)
print(newWelcome)


//比较字符串  字符串是值类型只要值一样返回就是true

//前缀/后缀相等

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0
var suffixCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 "){ //前缀
        ++act1SceneCount
    }
    if scene.hasSuffix("cell"){  //后缀
        ++suffixCount
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
print("\(suffixCount)")

