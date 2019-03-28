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

/* 옵셔널(Optional) : 값이 있을 수도 있고 없을수도 있음
 - 이유 : nil의 가능성을 명시적으로 표현, 예외 상황을 최소화 하는 안전한 코딩을 위해
 - 타입 뒤에 물음표로 표현 다만 띄워쓰면 안됨
 - ! (암시적 추출 옵셔널) :
 - ? (일반적인 옵셔널) : 기존 변수처럼 사용불가
*/

// 옵셔널 문법과 선언 = enum + general
/*enum Optional<Wrapped>: ExpressibleByNiliteral {
    case none
    case some(Wrapped)
}
*/
//let optionalValue: Optional<Int> = nil : 에러발생
let optionalValue: Int? = nil

// Implicitly Unwrapped Optional
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 느낌표(!)를 이용한 암시적 추출 옵셔널
// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생 (nil에 +1을 했으므로)
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// 물음표(?)를 이용한 일반적인 옵셔널
var optionalValue2: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue2 = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
//optionalValue = optionalValue + 1

/* 옵셔널 추출 : 옵셔널에 들어있는 값을 사용하기 위해 꺼내오는것
 - 옵셔널 바인딩 : nil 체크 + 안전한 추출, if-let 방식 사용
 */
func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

//printName(myName)
// 전달되는 값의 타입이 다르기 때문에 컴파일 오류발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}


var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

// name 상수는 if-let 구문 내에서만 사용가능
// 상수 사용범위를 벗어났기 때문에 컴파일 오류 발생
//printName(name)


// ,를 사용해 한 번에 여러 옵셔널을 바인딩 할 수 있다
// 모든 옵셔널에 값이 있을 때만 동작합니다
myName = "gukjin"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행 안 됨
yourName = "hana"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

// 강제 추출 : 만약 값이 없을 경우(nil) 런타임 오류가 발생하기 때문에 추천하는 방식은 아님
var myName2: String? = "gukjin"
var youName2: String! = nil


printName(myName!) // yagom
myName2 = nil

//print(myName!)
// 강제추출시 값이 없으므로 런타임 오류 발생
youName2 = nil

//printName(yourName)
// nil 값이 전달되기 때문에 런타임 오류발생
var name: String? = "gukjin"
print(name!)
var name2: String! = "gukjin"
print(name2!)

/* 구조체
 - 값(value) 타입
 - 타입이름은 대문자를 사용하여 정의
 struct 이름 {
    구현부
 }
 */
struct Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티(값 변경 가능)
    let immutableProperty: Int = 100 // 불변 프로퍼티(값 변경 불가능)
    
    static var typeProperty: Int = 100 // 타입 프로퍼티(static 키워드 사용 : 타입 자체가 사용하는 프로퍼티)
    
    func instanceMethod() { // 인스턴스 메서드(인스턴스가 사용하는 메서드)
        print("instance method")
    }
    
    static func typeMethod() { // 타입 메서드(static 키워드 사용 : 타입 자체가 사용하는 메서드)
        print("type method")
    }
}

var mutable: Sample = Sample() // 가변 인스턴스 생성

mutable.mutableProperty = 200
// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없다
//mutable.immutableProperty = 200 : 컴파일 오류 발생(불변 프로퍼티 수정)

let immutable: Sample = Sample() // 불변 인스턴스
// 불변 인스턴스는 아무리 가변 프로퍼티라도 인스턴스 생성 후에 수정할 수 없다

/* 컴파일 오류 발생 (불변 인스턴스 수정)
immutable.mutableProperty = 200
immutable.immutableProperty = 200
*/

Sample.typeProperty = 300 // 타입 프로퍼티
Sample.typeMethod() // 타입 메서드
// 인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없다

/* 컴파일 오류 발생 (타입 프로퍼티를 인스턴스에서 사용하려고 함)
mutable.typeProperty = 400
mutable.typeMethod()
*/

struct Student {
    var name: String = "unknown" // 가변 프로퍼티
    var `class`: String = "Swift" // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    
    static func selfIntroduce() { // 타입 메서드
        print("학생타입입니다")
    }
    
    func selfIntroduce() { // 인스턴스 메서드
        print("저는 \(self.class)반 \(name)입니다") // self는 인스턴스 자신을 지칭, 몇몇 경우를 제외한 사용은 선택사항
    }
}

Student.selfIntroduce() // 타입 메서드 사용

var aiden: Student = Student() // 가변 인스턴스 생성
aiden.name = "국진"
aiden.class = "스위프트"
aiden.selfIntroduce()

let jina: Student = Student() // 불변 인스턴스 생성
// 불변 인스턴스이므로 프로퍼티 값 변경 불가

// 컴파일 오류 발생
//jina.name = "jina"
jina.selfIntroduce()

/* 클래스(class)
 - 타입 이름은 대문자를 사용하여 정의
 - Swift 클래스는 다중 상속이 안됨
 - 구조체는 값(value)타입, 클래스는 참조(reference)타입
 class 이름 {
    구현부
 }
 */
class SampleClass {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    func instanceMethod() { // 인스턴스 메서드
        print("instance method")
    }
    
    // 타입 메서드
    static func typeMethod() { // 상속시 재정의 불가 타입 메서드 - static
        print("type method - static")
    }
    
    class func classMethod() { // 상속시 재정의 가능 타입 메서드 - class
        print("type method - class")
    }
}

var mutableReference: SampleClass = SampleClass() // 인스턴스 생성 - 참조정보 수정 가능

mutableReference.mutableProperty = 200

// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없다
//mutableReference.immutableProperty = 200 : 컴파일 오류 발생 (불변 프로퍼티 수정)

let immutableReference: SampleClass = SampleClass() // 인스턴스 생성 - 참조정보 수정 불가
// 클래스의 인스턴스는 참조 타입이므로 let으로 선언되었더라도 인스턴스 프로퍼티의 값 변경이 가능

immutableReference.mutableProperty = 200
// 다만 참조정보를 변경할 수는 없다

//immutableReference = mutableReference : 컴파일 오류 발생 (참조 정보 변경)

//immutableReference.immutableProperty = 200 : 컴파일 오류 발생 (참조 타입이라도 불변 인스턴스는 인스턴스 생성 후에 수정할 수 없다)

Sample.typeProperty = 300 // 타입 프로퍼티
Sample.typeMethod() // 타입 메서드

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없다

/* 컴파일 오류 발생 (인스턴스에서 타입 프로퍼티나 메서드 사용)
mutableReference.typeProperty = 400
mutableReference.typeMethod()
*/
class StudentClass {
    var name: String = "unknown" // 가변 프로퍼티
    var `class`: String = "Swift" // 키워드도 `로 묶어주면 이름으로 사용할 수 있다
    
    class func selfIntroduce() { // 타입 메서드
        print("학생타입입니다")
    }
    
    func selfIntroduce() { // 인스턴스 메서드
        print("저는 \(self.class)반 \(name)입니다") // self는 인스턴스 자신을 지칭, 몇몇 경우를 제외한 사용은 선택사항
    }
}


Student.selfIntroduce() // 타입 메서드 사용

var aiden_class: StudentClass = StudentClass() // 인스턴스 생성
aiden_class.name = "국진"
aiden_class.class = "스위프트"
aiden_class.selfIntroduce()   // 저는 스위프트반 yagom입니다

// 인스턴스 생성
let jina_class: StudentClass = StudentClass()
jina_class.name = "jina"
jina_class.selfIntroduce() // 저는 Swift반 jina입니다

/* 열거형 (enum)
 - 유사한 종류의 여러 값을 한 곳에 모아서 정의한 것
 - enum 자체가 하나의 데이터 타입으로, 대문자를 사용하여 이름을 정의
 - 각 case는 소문자로 정의
 - 각 case는 그 자체가 고유의 값
 - 각 case는 한 줄에 개별로도, 한 줄에 여러개도 정의할 수 있다
enum 이름 {
 case 이름1
 case 이름2
 case 이름3, 이름4, 이름5
 // ...
}
*/
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon // 열거형 타입과 케이스를 모두 사용해도 됨
day = .tue // 타입이 명확하다면 .케이스 처럼 표현해도 무방
print(day)

// switch의 비교값에 열거형 타입이 위치할 때, 모든 열거형 케이스를 포함한다면 default를 작성할 필요가 없다
switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}

/* 원시값
 - C언어의 enum처럼 정수값을 가질 수 있다
 - rawValue는 case별로 각각 다른 값을 가져야 한다
 - 자동으로 1이 증가된 값이 할당
 - rawValue를 반드시 지닐 필요가 없다면 굳이 만들지 않아도 된다
 */
enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach // 자동으로 2가 할당
    // case mango = 0 : 컴파일 에러 (원시값이 0이 존재)
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

// 정수 타입 뿐만 아니라, Hashable 프로토콜을 따르는 모든 타입을 원시값의 타입으로 지정 할 수 있다.
enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university // 문자형은 예측이 어려우므로 값이 할당되지 않음
}

print("School.middle.rawValue == \(School.middle.rawValue)")

print("School.university.rawValue == \(School.university.rawValue)")
// 열거형의 원시값 타입이 String일 때, 원시값이 지정되지 않았다면 case의 이름을 원시값으로 사용

/* 원시값을 통한 초기화
- rawvalue를 통해 초기화 할 수 있다
- rawValue가 case에 해당하지 않을 수 있으므로, rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입이다
*/

//let apple: Fruit = Fruit(rawValue: 0) : 컴파일 에러 (rawValue를 통해 초기화 한 열거형 값은 옵셔널 타입이므로 Fruit 타입이 아니다)
let apple: Fruit? = Fruit(rawValue: 0)

// if let 구문을 사용하면 rawValue에 해당하는 케이스를 곧바로 사용할 수 있다
if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
}

// 열거형에 메서드도 추가할 수 있다
enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다")
        }
    }
}

Month.mar.printMessage()

/* 클래스 VS 구조체/열거형
- 클래스는 참조타입, 열거형과 구조체는 값타입
- 클래스는 상속이 가능하지만, 열거형과 구조체는 상속이 불가능
*/
/* 값 타입과 참조 타입 비교
 - 값 타입 (Value Type) : 데이터를 전달 할 때 값을 복사하여 전달
 - 참조 타입 (Reference Type) : 데이터를 전달할 때 값의 메모리 위치를 전달
* 값 타입을 사용하는 경우
 - 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하고 싶은 경우
 - 다른 객체 또는 함수 등으로 전달될 떄 참조가 아니라 복사(값 복사)할 경우
 - 자신을 상속할 필요가 없거나, 다른 타입을 상속 받을 필요가 없는 경우
 */
/*
- Swift의 기본 데이터 타입은 모두 구조체로 구현되어있다.
- Swift는 구조체, 열거형 사용을 선호
- Apple 프레임워크는 대부분 클래스 사용
- Apple 프레임워크 사용시 구조체/클래스 선택은 자유
*/
struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType() // 첫 번째 구조체 인스턴스
var secondStructInstance = firstStructInstance // 두 번째 구조체 인스턴스에 첫 번째 인스턴스 값 복사

secondStructInstance.property = 2 // 두 번째 구조체 인스턴스 프로퍼티 값 수정

// 두 번째 구조체 인스턴스는 첫 번째 구조체를 똑같이 복사한 별도의 인스턴스이기 때문에 두 번째 구조체 인스턴스의 프로퍼티 값을 변경해도 첫 번째 구조체 인스턴스의 프로퍼티 값에는 영향이 없음
print("first struct instance property : \(firstStructInstance.property)")    // 1
print("second struct instance property : \(secondStructInstance.property)")  // 2

let firstClassReference = ReferenceType() // 클래스 인스턴스 생성 후 첫 번째 참조 생성
let secondClassReference = firstClassReference // 두 번째 참조 변수에 첫 번째 참조 할당
secondClassReference.property = 2

// 두 번째 클래스 참조는 첫 번째 클래스 인스턴스를 참조하기 때문에 두 번째 참조를 통해 인스턴스의 프로퍼티 값을 변경하면 첫 번째 클래스 인스턴스의 프로퍼티 값을 변경하게 됨
print("first class reference property : \(firstClassReference.property)")    // 2
print("second class reference property : \(secondClassReference.property)")  // 2

/* 클로저
- 실행가능한 코드 블럭
- 함수와 다르게 이름정의는 필요하지는 않지만, 매개변수 전달과 반환 값이 존재할 수 있다는 점이 동일
- 함수는 이름이 있는 클로저
- 일급객체로 전달인자, 변수, 상수 등에 저장 및 전달 가능
*/
/* 클로저 기본문법
- 클로저는 중괄호로 감싸져있다
- 괄호를 이용해 파라미터를 정의
- ->을 이요해 반환 타입을 명시
- 'in'키워드를 이용해 실핼 코드와 분리

{ (매개변수 목록) -> 반환타입 in
 실행 코드
}
*/
// sum_closure 이라는 상수에 클로저를 할당
let sum_closure: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}

let sumResult: Int = sum_closure(1, 2)
print(sumResult)

// 클로저는 주로 함수의 전달인자로 많이 사용된다. 함수 내부에서 원하는 코드블럭을 실행할 수 있다.
let add: (Int, Int) -> Int
add = { (a: Int, b: Int) in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)

print(calculated)

calculated = calculate(a: 50, b: 10, method: substract)

print(calculated)

calculated = calculate(a: 50, b: 10, method: divide)

print(calculated)

//따로 클로저를 상수/변수에 넣어 전달하지 않고,
//함수를 호출할 때 클로저를 작성하여 전달할 수도 있다.

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})

print(calculated)

/* 다양한 클로저 표현
 1. 후행 클로저 : 함수의 매개변수 마지막으로 전달되는 클로저는 후행 클로저로 함수 밖에 구현할 수 있다.
 2. 반환타입 생략 : 컴파일러가 클로저의 타입을 유추할 수 있는 경우 매개변수, 반황 타입을 생략할 수 있다.
 3. 단축 인자 이름 : 전달인자의 이름이 굳이 필요없고, 컴파일러가 타입을 유추할 수 있는 경우 축약된 전달인지 이름($0, $1, $2...)을 사용할 수 있다.
 4. 임시적 반환 표현 : 반환 값이 있는 경우, 암시적으로 클로저의 맨 마지막 줄은 return 키워드를 생략하더라도 반환 값으로 취급
*/
// 클로저를 매개변수로 갖는 함수 calculated(a:b:method:)와 결과값을 저장할 변수 result 선언
func calculate2(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var result: Int

// 후행 클로저
result = calculate2(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}

print(result)

// 반환타입 생략 : in 키워드는 생략 불가
result = calculate2(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})

print(result)

// 후행클로저와 함께 사용할 수도 있다
result = calculate2(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}

print(result)

// 단축 인자이름
result = calculate2(a: 10, b: 10, method: {
    return $0 + $1
})

print(result)


// 당연히 후행 클로저와 함께 사용할 수 있다
result = calculate2(a: 10, b: 10) {
    return $0 + $1
}

print(result)

// 암시적 반환 표현
result = calculate2(a: 10, b: 10) {
    $0 + $1
}

print(result)

// 간결하게 한 줄로 표현해 줄 수도 있다
result = calculate2(a: 10, b: 10) { $0 + $1 }

print(result)

/* 프로퍼티
1. 프로퍼티의 종류
 - 인스턴스 저장 프로퍼티
 - 타입 저장 프로퍼티
 - 인스턴스 연산 프로퍼티
 - 타입 연산 프로퍼티
 - 지연 저장 프로퍼티
 
 2. 정의와 사용
 - 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있다.
 - 다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있다.
 - 연산 프로퍼티는 var로만 선언할 수 있다.
 - 연산 프로퍼티를 읽기전용으로는 구현할 수 있지만, 쓰기 전용으로는 구현할 수 없다.
 - 읽기 전용으로 구현하려면 get 블럭만 작성하면 된다. 읽기전용은 get 블럭을 생략할 수 있다.
 - 읽기, 쓰기 모두 가능하게 하려면 get 블럭과 set 블럭을 모두 구현해주면 된다.
 - swt 블럭에서 암시적 매개변수 newValue를 사용할 수 있다.
 */
struct Student_property {
    
    // 인스턴스 저장 프로퍼티
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    var westernAge: Int { // 인스턴스 연산 프로퍼티
        get {
            return koreanAge - 1
        }
        
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    
    static var typeDescription: String = "학생" // 타입 저장 프로퍼티
    
    /*
     // 인스턴스 메서드
     func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
     }
     */
    
    // 읽기전용 인스턴스 연산 프로퍼티
    // 간단히 위의 selfIntroduce() 메서드를 대체할 수 있다
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다"
        }
    }
    
    /*
     // 타입 메서드
     static func selfIntroduce() {
     print("학생타입입니다")
     }
     */
    
    // 읽기전용 타입 연산 프로퍼티
    // 읽기전용에서는 get을 생략할 수 있다
    static var selfIntroduction: String {
        return "학생타입입니다"
    }
}

print(Student_property.selfIntroduction) // 타입 연산 프로퍼티 사용

var property_ex: Student_property = Student_property() // 인스턴스 생성
property_ex.koreanAge = 10

property_ex.name = "gukjin" // 인스턴스 저장 프로퍼티 사용
print(property_ex.name)

print(property_ex.selfIntroduction) // 인스턴스 연산 프로퍼티 사용

print("제 한국나이는 \(property_ex.koreanAge)살이고, 미쿡나이는 \(property_ex.westernAge)살입니다.")

// 응용
struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000

print(moneyInMyPocket.won)

moneyInMyPocket.dollar = 10

print(moneyInMyPocket.won)

// 저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능
var a: Int = 100
var b: Int = 200
var sum_property: Int {
    return a + b
}

print(sum_property)

/* 프로퍼티 감시자
- 프로퍼티 감시자를 사용하면 프로퍼티의 값이 변경될 때 원하는 동작을 수행할 수 있다.
- 값이 변경되기 직전에 willSet 블럭이, 값이 변경된 직후에 didSet블럭이 호출된다.
- 둘 중 필요한 하나만 구현해도 무관
- 변경되려는 값이 기존 값과 똑같더라도 프로퍼티 감시자는 항상 동작한다.
- willSet 블럭에서는 암시적 매개변수 newValue를, didSet 블럭에서는 oldValue를 사용할 수 있다.
- 프로퍼티 감시자는 연산 프로퍼티에는 사용할 수 없다
- 프로퍼티 감시자는 함수, 메서드, 클로저, 타입 등의 지역/전역 변수에 모두 사용 가능
*/
struct Money2 {
    // 프로퍼티 감시자 사용
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다")
        }
        
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다")
        }
    }
    
    // 프로퍼티 감시자 사용
    var dollar: Double = 0 {
        willSet { // willSet의 암시적 매개변수 이름 newValue
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다")
        }
        
        didSet { // didSet의 암시적 매개변수 이름 oldValue
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다")
        }
    }
    
    var won: Double { // 연산 프로퍼티
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
        
        /* 프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없다
         willSet {
         
         }
         */
    }
}

var moneyInMyPocket2: Money2 = Money2()

// 환율이 1100.0에서 1150.0으로 변경될 예정입니다
moneyInMyPocket2.currencyRate = 1150
// 환율이 1100.0에서 1150.0으로 변경되었습니다

// 0.0달러에서 10.0달러로 변경될 예정입니다
moneyInMyPocket2.dollar = 10
// 0.0달러에서 10.0달러로 변경되었습니다

print(moneyInMyPocket2.won)
