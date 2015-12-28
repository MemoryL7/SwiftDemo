//: Playground - noun: a place where people can play

import UIKit


//第一章  基础部分

//声明常量和变量
var hello = "world"
let world = "hello"

let x = 1,y = "1",z=0.0
print("\(x) \(y) \(z) ")

//类型标注
var type:String = "hello"

let red,green,blue:Double

//常量和变量的命名
let π = 3.1415926
let 你好 = "你好"
let 🐶 = "dog"
//不能以数字开头，不能包含数学符号，箭头，保留的unicode编码


//输出常量和变量
print(type)


//注释 /**/


//分号
//swift不强制要求使用;但是一行内如果写多句话就需要使用到;

//整数范围
let minValue = UInt8.min
let maxValue = UInt8.max

//int的长度和原生电脑字长相同
//在32位平台上，Int和Int32长度相同。
//在64位平台上，Int和Int64长度相同。


//浮点数
var float :Float = 0.12
var double:Double = 12.12


//类型安全和类型推断

//整数和浮点数转换
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
print(pi)

let integerPi = Int(pi)


//类型别名 给已知类型创建一个别名
typealias noString = String
let str:noString = "123"

//布尔值
let bool = true

let i = 0
if i==1{
}

//元组 tuples
let http404Error = (404,"Page not found")

let (statusCode,statusMessage) = http404Error
print(statusCode,statusMessage)

//只需要code不需要Message则在message下使用 _
let (justStatusCode,_) = http404Error
print(http404Error.0)



//可选类型
var number = "123"
var intNumber = Int(number)

//nil
var serverResponseCode:Int? = 404
serverResponseCode = nil

//强制解析! 拆包
if serverResponseCode != nil{
    print(serverResponseCode!)
}


//可选绑定
if let optionalValue = serverResponseCode {
    print("have value")
}else{
    print("no value")
}

print(serverResponseCode ?? str)


func canThrowAnError() throws{
}
do{
    try canThrowAnError()
}catch{
    
}