//2.6
//函数

/*
  函数分为5部分内容
1.函数的定义与调用
2.函数参数与返回值
3.函数参数名称
4.函数类型
5.函数嵌套
*/


//1. 函数的定义与调用
func sayHello(presonName: String) -> String {
    let greeting = "Hello, " + presonName + "!"
    return greeting
}

print(sayHello("yf"))

//2. 函数参数与返回值
//2.1 多重输入参数
func halfOpenRangeLength(start: Int, end: Int) -> Int {
    return end - start
}
print(halfOpenRangeLength(1,end: 10))

//2.2 无参函数
func sayHelloWorld() -> String {
    return "hello, world"
}

//2.3 多参量函数
func sayHello(personName: String, alreadGreeted: Bool) -> String {
    if alreadGreeted {
        return sayHello(personName)
    } else {
        return sayHelloWorld()
    }
}

print(sayHello("yf", alreadGreeted: true))

//2.4 无返回值函数
func sayGoodbye(personName: String) -> Void {
    print("Goodbye ,\(personName)!")
}
sayGoodbye("Dave")


//2.5 多重返回值函数  (返回元组)
func minMax(array: [Int]) -> (min: Int?, max: Int)?{
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for num in array[1...array.count-1] {
        if num < currentMin {
            currentMin = num
        } else if num > currentMax {
            currentMax = num
        }
    }
    return (currentMin , currentMax)
}

print(minMax([1,4,0,6,8])!.max)

//2.6 函数参数名称
//一般情况下，第一个参数省略其外部参数名，第二个雨后的参数使用其本地参数名作为自己的外部参数名。所有参数需要有不同的本地参数名，但可以共享相同的外部参数名
func someFunciton(firstParameterName: Int, secondParameterName: Int) {
}
someFunciton(1, secondParameterName: 2)

//2.7 指定外部参数名
func someFunciton(extenrnalParameterName localParameterName: Int){
}
someFunciton(extenrnalParameterName: 1)

//2.8 忽略外部参数名