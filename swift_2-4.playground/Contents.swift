//: Playground - noun: a place where people can play

import UIKit

//2.4 集合类型 Collection Types

//Arrays(有序) , Sets(无序无重复) , Dictionaries(无序键值对)

//数组 Arrays
//数组的简单语法
var someInts = [Int]()
print("someInts counts is \(someInts.count)")


//创建一个带有默认值的数组
var threeDouble = [Double](count: 3, repeatedValue: 0.0)


//通过两个数组相加创建一个数组
var anotherThreeDoubles = Array(count: 3, repeatedValue: 3.4)
var sixDoubles = threeDouble + anotherThreeDoubles

//从字面量构造数组
var arrays = ["123","456"]

//访问和修改数组
//数量
print("arrays count is \(arrays.count)")

//为空判断
if arrays.isEmpty {
    print("isEmpty")
}else{
    print("noEmpty")
}
//添加值
arrays.append("789")
arrays += ["101112","131415"]
//通过下标进行获取值
print("arrays第一个值是\(arrays[0])")
//通过一个区间修改数组值  
//❌(区间包括开始和结尾)区间修改时根据值来确定最终修改结果和数量，如果区间长度是2而修改值是3个，则最终增加一个，反之减少
arrays[0...1] = ["U","U","U"]
print(arrays)

arrays.insert("first", atIndex: 0)

//移除
arrays.removeAtIndex(0)


//数组遍历
for item in arrays {
    print(item, terminator: "-")
}

for (index, value) in arrays.enumerate(){
    print("Item \(index): \(value)")
}


//---------set--------
//创建和构造一个空的Set
var letters = Set<Character>()
//长度
print("letters count is \(letters.count)")
letters.insert("a")
letters = []

//用数组字面量创建集合
var favoriteGenres: Set<String> = ["123","456","123"]
print(favoriteGenres.count)

if favoriteGenres.isEmpty {
    print("is Empty")
}else{
    print("not Empty")
}

//移除值
if let bool = favoriteGenres.remove("123") {
    print("success remove \(bool)")
} else {
    print("remove fail")
}

//包含
if favoriteGenres.contains("456") {
    print("success")
} else {
    print("fail")
}

//遍历Set
favoriteGenres.insert("123")
for item in favoriteGenres.enumerate() {
    print("Item \(item.index) : \(item.element)")
}
//排序
for item in favoriteGenres.sort() {
    print(item, separator: "", terminator: "\n")
}

//完成集合操作

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

//intersect 相交
for item in oddDigits.intersect(singleDigitPrimeNumbers).sort(){
    print(item, separator: "", terminator: "")
}
print("")
//exclusiveOr 互斥
for item in oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort() {
    print(item, separator: "", terminator: " ")
}
print("")
//union 联合
for item in oddDigits.union(evenDigits).sort() {
    print(item, separator: "", terminator: " ")
}
print("")
//subtract 相减
for item in oddDigits.subtract(singleDigitPrimeNumbers).sort() {
    print(item, separator: "", terminator: " ")
}
print("")

//集合成员关系和相等
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐭", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

//isSubsetOf 是属于谁()的子集
print(houseAnimals.isSubsetOf(farmAnimals))
//isSupersetOf 是属于谁()的上级
print(farmAnimals.isSupersetOf(houseAnimals))
//isDisjointWith  和谁互不相交
print(farmAnimals.isDisjointWith(cityAnimals))


//---------------字典-----------------
//创建空字典
var namesOfIntegers = [Int: String]()
namesOfIntegers[11] = "11"
namesOfIntegers = [:]  //因上下文已提供了字典的类型所以可以省略

//字典字面量
var airports = [21: "123", 11:"as"]
print(airports)

//修改和读取字典
//长度
print("airports count is \(airports.count).")

if airports.isEmpty {
    print("isEmpty")
}else{
    print("not Empty")
}

airports[21] = "21"
airports[111] = "111"

if let oldValue = airports.updateValue("啦啦啦", forKey: 111) {
    print("update success \(oldValue)")
} else {
    print("update fail")
}

if let value = airports.removeValueForKey(111) {
    print("remove success \(value)")
} else {
    print("remove fail")
}

print(airports)

//字典遍历
for (key,value) in airports {
    print(key,value)
}
for key in airports.keys.sort() {
    print(key)
}
for value in airports.values.sort() {
    print(value)
}