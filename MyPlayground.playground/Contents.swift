import UIKit

var str = "Hello, playground"

/*
 swift는 대소문자를 구분한다!
함수는 소문자, type(class,struct,enum,extension..)은 대문자

 print : 당ㄴ순 문자열 출력
 dump : 인스턴스의 자세한 설명(description 프로퍼티)까지 출력
 \() : 문자열 내에 변수 또는 상수의 실질적인 값을 표현하기 위해 사용
 */

let age: Int = 10
print("안녕하세요! 저는 \(age)살 입니다!")

class Person {
    var name : String = "gukjin"
    var age : Int = 10
}

let gukjin: Person = Person()
print(gukjin)
dump(gukjin)

// 상수의 선언
// let 이름 : 타입 = 값

// 변수의 선언
// var 이름 : 타입 = 값

// 값의 타입이 명홧하다면 타입은 생략 가능
// let 이름 = 값
// var 이름 = 값

let sum : Int
let inputA : Int = 100
let inputB : Int = 200
sum = 20
print(sum)

// Swift의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, Character, String

// Bool
var someBool : Bool = true
someBool = false

// Int
var someInt : Int = 100

// UInt (언사인드 인티저 - 양의 정수만)
var someUInt : UInt = 100
// someUInt = someInt : UInt형에 Int를 넣으려고 해서 에러 발샐

// Float
var someFloat : Float = 3.14
someFloat = 3

// Double
var someDouble : Double = 3.14
someDouble = 3
//someDouble = someFloat : Double형에 Float를 넣으려고 해서 에러 발생

// Character
var someCharacter : Character = "😀"
someCharacter = "하"
// someCharacter = "하하" : 문자열이므로 에러 발생

var someString : String = "하하하"
someString = "호롤롤롤🐶"

/*
 Any : Swift의 모든 타입을 지칭하는 키워드
 AnyObject : 모든 클래스 타입을 지칭하는 프로토콜
 nil : 없을을 의미하는 키워드
 */

// Any
var someAny : Any = 100
someAny = "어떤 타입도 수용 가능하다"
someAny = 123.12
//let someDouble : Double = someAny : Double형에 Any를 넣으려고 해서 에러 발생

// AnyObject
class SomeClass {}
var someAnyObject : AnyObject = SomeClass()

// nil
// someAny = nil : Any에는 어떤 타입의 값이든 상관없지만 빈값이 들어가므로 에러 발생

/*
 Array  : 순서(index)가 있는 리스트 컬렉션
 Dictionary : 키와 값의 쌍으로 이루어진 컬렉션
 Set : 순서가 없고, 멤버가 우일한 컬렉션(집합 같은)
 */

// Array
var ints : Array<Int> = Array<Int>()
ints.append(1)
ints.append(100)
// ints.append(100.1) : Double형이므로 에러발생

ints.contains(100) // 해당 원소가 있는지 찾는 함수
ints.contains(99)

ints.remove(at: 0)
ints.removeLast() // 마지막 요소 삭제
ints.removeAll() // 전체 삭제

ints.count

var doubles : Array<Double> = [Double]()
var strings : [String] = [String]()
var characters: [Character] = []
let immutableArray = [1,2,3]
//let을 사용하면 변경 불가 Array가 되어서 append와 remove를 할 수 없다

// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생설
var anyDictionary: Dictionary<String, Any> =  [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
anyDictionary["someKey"] = "dictionary"

anyDictionary.removeValue(forKey: "anotherKey")

anyDictionary["someKey"] = nil
anyDictionary

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name":"gukjin", "gender":"male"]

//let someValue: String = initalizedDictionary["name"] : name이라는 Key가 있을수도 있고 없을수도 있기 때문에 에러

var intSet: Set<Int> = Set<Int>()
intSet.insert(1)
intSet.insert(100)
intSet.insert(99)
intSet.insert(99) // Set는 중복된 값이 없으므로 여러번 넣어도 한개만 있음

intSet.remove(100)
intSet.removeFirst()

intSet.count

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB) // 합집합
let sortedUnion: [Int] = union.sorted() // 정렬
let intersection: Set<Int> = setA.intersection(setB) // 교집합
let substracting: Set<Int> = setA.subtracting(setB) // 차집합

/*
 함수의 기본형탸
 func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 변환타입{
    함수 구현부
    return 반환값
 */
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// Void - return이 없음
func printMyName(name: String) -> Void{
    print(name)
}

// 반환값이 없는 경우 -> Void 생력 가능
func printYourName(name: String){
    print(name)
}

/* 매개변수가 없는 함수
 func 함수이름() -> 변환타입{
 함수 구현부
 return 반환값
 */
func maximumIntegerValue() -> Int{
    return Int.max
}

func hello() -> Void { print("hello") }
func bye() { print("bye") }

// 함수의 호출
sum(a: 3, b: 5)
// sum(4,2) : 각각 어떤 매개변수인지 지정해줘야함 에러!
printMyName(name: "yagom")
printYourName(name: "hana")
maximumIntegerValue()
hello()
bye()

/* 매개변수에 기본값을 가지는 함수
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
    함수 구현부
    return 반환값
}
*/

func greeting(friend: String, me: String = "gukjin") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 호출시 생략할 수 있다
greeting(friend: "hana")
greeting(friend: "john", me: "eric")

/* 전달인자 레이블
func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    /* 함수 구현부 */
    return
}
*/

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용한다
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때에는 전달인자 레이블을 사용해야 한다
greeting(to: "hana", from: "gukjin")

/* 가변 매개변수 : 전달 받을 값의 개수를 정하기 어려울때
func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
    함수 구현부
}
*/

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "gukjin", friends: "hana", "eric", "wing"))

print(sayHelloToFriends(me: "gukjin"))

/* 데이터 타입으로서의 함수 - 변환 타입을 생략할 수 없다
(매개변수1타입, 매개변수2타입 ...) -> 반환타입
*/
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "gukjin")

someFunction = greeting(friend:me:)
someFunction("eric", "gukjin")


// 타입이 다른 함수는 할당할 수 없다 - 컴파일 오류 발생
//someFunction = sayHelloToFriends(me: friends:)

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))

runAnother(function: someFunction)

/* if-else 구문
 if 조건 {
    실행 구문
 } else if 조건 {
    실행 구문
 } else {
    실행 구문
 }
 */
let someInteger = 100

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

// 스위프트의 조건에는 항상 Bool 타입이 들어와야 한다.

/* switch 구문
 - break를 하지 않아도 자동으로 case마다 break가 된다.
 - 매우 한정적인 값(ex. enum의 case 등)이 비교값이 아닌 한 default 구문은 반드시 작성해야 한다. (그렇지 않으면 에러)
 - 쉼표를 사용해서 하나의 case에 여러 패턴을 명시할 수 있다.
 - fallthrough을 사용하여 break를 무시할 수 있다.
 switch 비교값 {
 case 패턴:
    실행 구문
 default:
    실행 구문
 }
 */
switch someInteger {
case 0:
    print("zero")
case 1..<100: // ..< 이상,미만
    print("1~99")
case 100:
    print("100")
case 101...Int.max: // ... 이상,이하
    print("over 100")
default:
    print("unknown")
}

// 정수 외의 대부분의 기본 타입을 사용할 수 있다
switch "gukjin" {
case "jake", "jake2": // ,로 여러 패턴 사용 가능
    print("jake")
case "mina":
    print("mina")
    fallthrough // break를 무시
case "gukjin":
    print("gukjin!!")
default:
    print("unknown")
}

/* for-in 구문
 for i in items {
    실행 구문
 }
 */
var integers = [1, 2, 3]
let people = ["gukjin": 10, "eric": 15, "mike": 12]

for i in integers {
    print(i)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입
for (name, age) in people {
    print("\(name): \(age)")
}

/* while 구문
 while 조건 {
    실행 구문
 }
 */
while integers.count > 1 { // 조건부에 소괄호로 묶어도 되고 안 묶어도 됨 일반적으로는 안 묶는듯
    integers.removeLast()
}

/* repeat-while 구문 : 기존 언어의 do-while 구문과 형태/동작이 유사함
 repeat {
    실행 구문
 } while 조건
 */
repeat {
    integers.removeLast()
} while integers.count > 0
