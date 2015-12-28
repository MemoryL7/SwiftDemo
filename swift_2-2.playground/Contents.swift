//: Playground - noun: a place where people can play

import UIKit

//第二章 第二小节-基本运算符

//赋值运算符 =
let (x,y) = (1,2)

//算数运算符  + - * /
//求余运算符  %
//浮点数求余计算  8%2.5
//自增和自减运算符
var a = 0
let b = ++a // a 和 b 现在都是 1
let c = a++ // a 现在 2, 但 c 是 a 自增前的值 1

//一元运算符 - +（+号不会有任何反应） 用来做正负显示

//复合赋值
var a1 = 1
a1 += 2

//比较运算符
1==1
print(2 != 1) //2和叹号之间需要有空格
2>1
1<2
1>=1
2<=1

//三目运算符  a ? b : c

//空合运算符 Nil Coalescing Operator
let defaultColorName = "red"
var userDefinedColorName: String?   //默认值为 nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName 的值为空，所以 colorNameToUse 的值为 "red"


//闭区间运算符
for index in 1...5{
    print(index)
}

//半开区间运算符
var array = ["1","a","3"]
var str = ""
for index in 0..<array.count{
    str += String(array[index])+","
}
print(str)


//逻辑运算  !  &&  ||


