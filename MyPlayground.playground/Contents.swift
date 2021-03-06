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

/* 상속
- 상속은 클래스, 프로토콜 등에서 가능
- 열거형, 구조체는 상속이 불가능
- Swift의 클래스는 단일상속으로, 다중상속을 지원하지 않는다.
 class 이름: 상속받을 클래스 이름 {
    구현부
 }

* 사용
 - final 키워드를 사용하면 재정의(Override)를 방지할 수 있다.
 - static 키워드를 사용해 타입 메서드를 만들면 재정의가 불가능
 - class 키워드를 사용해 타입 메서드를 만들면 재정의가 가능
 - class 앞애 final을 붙이면 static 키워드를 사용한것과 동일하게 동작
 - override 키워드를 사용해 부모 클래스의 메서드를 재정의 할 수 있다.
*/

class Person2 { // 기반 클래스 Person2
    var name: String = ""
    
    func selfIntroduce() {
        print("저는 \(name)입니다")
    }
    
    final func sayHello() { // final 키워드를 사용하여 재정의를 방지할 수 있다
        print("hello")
    }
    
    
    
    static func typeMethod() { // 타입 메서드, 재정의 불가 타입 메서드 - static
        print("type method - static")
    }
    
    class func classMethod() { // 재정의 가능 타입 메서드 - class
        print("type method - class")
    }
    
    // 메서드 앞의 `static`과 `final class`는 똑같은 역할을 한다
    final class func finalCalssMethod() { // 재정의 가능한 class 메서드라도 final을 사용하면 재정의 할 수 없다
        print("type method - final class")
    }
}

class Student2: Person2 { // Person2을 상속받는 Student2
    var major: String = ""
    
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
    
    
    // override static func typeMethod() {    } : 컴파일 에러 (static을 사용한 타입 메서드는 재정의 할 수 없다)
    
    // override func sayHello() {    } : 컴파일 에러 (final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없다)
    // override class func finalClassMethod() {    }
}
let gukjin_class: Person2 = Person2()
let gukjin_inheritance: Student2 = Student2()

gukjin_class.name = "gukjin"
gukjin_inheritance.name = "gukjin's junior"
gukjin_inheritance.major = "Swift"

gukjin_class.selfIntroduce()

gukjin_inheritance.selfIntroduce()

Person2.classMethod()
// type method - class

Person2.typeMethod()
// type method - static

Person2.finalCalssMethod()
// type method - final class

Student2.classMethod()
// overriden type method - class

Student2.typeMethod()
// type method - static

Student2.finalCalssMethod()
// type method - final class

/*
이니셜라이저 (init) - 생성자
디이니셜라이저 (deinit) - 소멸자
*/

/* 프로퍼티 초기값
- Swifr의 모든 인스턴스는 초기화와 동시에 모든 프로퍼티에 유효한 값이 할당되어 있어야 한다.
- 프로퍼티에 미리 기본갓을 할당해두면 인스턴스가 생성됨가 동시에 초기값을 지니게 된다.
 */

/* 예시
class PersonA {
    // 모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}

let jason: PersonA = PersonA() // 인스턴스 생성

// 기본값이 인스턴스가 지녀야 할 값과 맞지 않다면
// 생성된 인스턴스의 프로퍼티에 각각 값 할당
jason.name = "jason"
jason.age = 30
jason.nickName = "j"
*/

// 이니셜라이저(initializer) : 프로퍼티 초기값을 지정하기 어려운 경우, init을 통해 인스턴스가 가져야할 초기값을 전달할 수 있다
class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    // 이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let hana: PersonB = PersonB(name: "hana", age: 20, nickName: "하나")

/* 프로퍼티의 초기값이 꼭 필요 없을 때
- 옵셔널을 사용
- class 내부의 init을 사용할때는 convenience 키워드 사용
*/
class PersonC {
    var name: String
    var age: Int
    var nickName: String?
    
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
    
    /* 위와 동일한 기능 수행
    convenience init(name: String, age: Int, nickName: String) {
        init(name: name, age: age)
        self.nickName = nickName
    } */
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")

// 암시적 추출 옵셔널은 인스턴스 사용에 꼭 필요하지만 초기값을 할당하지 않고자 할 때 사용
class Puppy {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다")
    }
}

let happy: Puppy = Puppy(name: "happy")
// 강아지는 주인없이 산책하면 안돼요!
//happy.goOut() // 주인이 없는 상태라 오류 발생
happy.owner = jenny
happy.goOut()
// happy가 주인 jenny와 산책을 합니다

/* 실패가능한 이니셜라이저
- 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우 인스턴스생성에 실패할 수 있다.
- 인스턴스 생성에 실패하면 nil을 반환
- 실패 가능한 이니셜라이저의 반환타입은 옵셔널
- init?을 사용
*/
class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        
        if name.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

//let john: PersonD = PersonD(name: "john", age: 23)
let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123)
let batman: PersonD? = PersonD(name: "", age: 10)

print(joker) // nil
print(batman) // nil

/* 디이니셜라이저(deinitializer)
- deinit은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출
- 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있다.
- deinit은 매개변수를 지닐 수 없다.
- 자동으로 호출되므로 직접 호출할 수 없다
- 디이니셜라이저는 클래스 타입에만 구현할 수 있다.
- 인스턴스가 메모리에서 해제되는 시점은 ARC(Automatic Reference Counting)의 규칙에 따라 결정
*/
class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    
    // 인스턴스가 메모리에서 해제되는 시점에 자동 호출
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}

var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil // donald 인스턴스가 더이상 필요없으므로 메모리에서 해제
// donald가 jenny에게 happy를 인도합니다

/* 옵셔널 체이닝
- 옵셔널의 내부의 내부의 내부로 옵셔널이 연결되어 있을 때 유용
- 매번 nil 확인을 하지 않고 최종적으로 원하는 값이 있는지 없는지 확인할 수 있다.
*/


class Person_optional { // 사람 클래스
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment { // 사람이 사는 집 클래스
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person_optional?
    var owner: Person_optional?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}


// 옵셔널 체이닝 사용
let gukjin_in_the_house: Person_optional? = Person_optional(name: "gukjin")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person_optional? = Person_optional(name: "superman")
// 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로 결과 타입도 옵셔널

// 만약 우리집의 경비원의 직업이 궁금하다면..?

// 옵셔널 체이닝을 사용하지 않는다면...
func guardJob(owner: Person_optional?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}

guardJob(owner: gukjin_in_the_house)

// 옵셔널 체이닝을 사용한다면
func guardJobWithOptionalChaining(owner: Person_optional?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: gukjin_in_the_house)
// 우리집 경비원은 직업이 없어요

gukjin_in_the_house?.home?.guard?.job // nil
gukjin_in_the_house?.home = apart
gukjin_in_the_house?.home // Optional(Apartment)
gukjin_in_the_house?.home?.guard // nil

// 경비원 할당
gukjin_in_the_house?.home?.guard = superman
gukjin_in_the_house?.home?.guard // Optional(Person)
gukjin_in_the_house?.home?.guard?.name // superman
gukjin_in_the_house?.home?.guard?.job // nil
gukjin_in_the_house?.home?.guard?.job = "경비원"

/* nil 병합 연산자
- 중위 연산자이다 ??
- O)ptional ?? Value
- 옵셔널 값이 nil일 경우, 우측의 값을 반환
- 띄어쓰기에 주의!
*/
var guardJob: String

guardJob = gukjin_in_the_house?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 경비원

gukjin_in_the_house?.home?.guard?.job = nil

guardJob = gukjin_in_the_house?.home?.guard?.job ?? "슈퍼맨" //job이 nil이므로 우측의 "슈퍼맨"을 반환
print(guardJob) // 슈퍼맨

/* 타입 캐스팅
- 인스턴스의 타입을 확인하는 용도
- 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지 확인하는 용도
- is, as를 사용
 * ex. let someDouble = Double(some) : 타입 캐스팅이 아니라 새로운 값을 생성하는것
*/
class Person_cast {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다")
    }
}

class Student_cast: Person_cast {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다")
    }
}

class UniversityStudent_cast: Student_cast {
    var major: String = ""
    func goToMT() {
        print("멤버쉽 트레이닝을 갑니다 신남!")
    }
}
// 인스턴스 생성
var yagom: Person_cast = Person_cast()
var hanna: Student_cast = Student_cast()
var jason: UniversityStudent_cast = UniversityStudent_cast()

// 타입 확인 : is를 사용하여 타입 확인
var result_cast: Bool

result_cast = yagom is Person_cast // true
result_cast = yagom is Student_cast // false
result_cast = yagom is UniversityStudent_cast // false

result_cast = hanna is Person_cast // true
result_cast = hanna is Student_cast // true
result_cast = hanna is UniversityStudent_cast // false

result_cast = jason is Person_cast // true
result_cast = jason is Student_cast // true
result_cast = jason is UniversityStudent_cast // true

if yagom is UniversityStudent_cast {
    print("yagom은 대학생입니다")
} else if yagom is Student_cast {
    print("yagom은 학생입니다")
} else if yagom is Person_cast {
    print("yagom은 사람입니다")
} // yagom은 사람입니다

switch jason {
case is Person_cast:
    print("jason은 사람입니다")
case is Student_cast:
    print("jason은 학생입니다")
case is UniversityStudent_cast:
    print("jason은 대학생입니다")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다")
} // jason은 사람입니다

switch jason {
case is UniversityStudent_cast:
    print("jason은 대학생입니다")
case is Student_cast:
    print("jason은 학생입니다")
case is Person_cast:
    print("jason은 사람입니다")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다")
} // jason은 대학생입니다

/*업 캐스팅(Up Casting)
- as를 사용하여 부모클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 타입정보를 전환
- Any 혹은 AnyObject로도 타입정보를 변환할 수 있다.
- 암시적으로 처리되므로 꼭 필요한 경우가 아니라면 생략해도 무방
 */
// UniversityStudent_cast 인스턴스를 생성하여 Person_cast 행세를 할 수 있도록 업 캐스팅
var mikael: Person_cast = UniversityStudent_cast() as Person_cast

var jem: Student_cast = Student_cast()
//var jem: UniversityStudent_cast = Person_cast() as UniversityStudent_cast // 컴파일 오류

// UniversityStudent_cast 인스턴스를 생성하여 Any 행세를 할 수 있도록 업 캐스팅
var mina: Any = Person_cast() // as Any 생략가능

/* 다운 캐스팅(Down Casting)
- as? 또는 as!를 사용하여 자식 클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 인스턴스의 타입정보를 전환
 */

/* 조건부 다운 캐스팅
- as?를 사용
- 캐스팅에 실패하면, 즉 캐스팅하려는 타입에 부합하지 않는 인스턴스라면 nil을 반환하기 때문에 결과의 타입은 옵셔널 타입
*/
var optionalCasted: Student_cast?

optionalCasted = mikael as? UniversityStudent_cast
optionalCasted = jem as? UniversityStudent_cast // nil
optionalCasted = mina as? UniversityStudent_cast // nil
optionalCasted = mina as? Student_cast // nil

/* 강제 다운 캐스팅
- as!를 사용
- 캐스팅에 실패하면, 즉 캐스팅하려는 타입에 부합하지 않는 인스턴스라면 런타임 오류가 발생
- 캐스팅에 성공하면 옵셔널이 아닌 일반 타입을 반환
 */
var forcedCasted: Student_cast

optionalCasted = mikael as! UniversityStudent_cast
//optionalCasted = jem as! UniversityStudent // 런타임 오류
//optionalCasted = mina as! UniversityStudent // 런타임 오류
//optionalCasted = mina as! Student // 런타임 오류

// 활용
func doSomethingWithSwitch(someone: Person_cast) {
    switch someone {
    case is UniversityStudent_cast:
        (someone as! UniversityStudent_cast).goToMT()
    case is Student_cast:
        (someone as! Student_cast).goToSchool()
    case is Person_cast:
        (someone as! Person_cast).breath()
    }
}

doSomethingWithSwitch(someone: mikael as Person_cast) // 멤버쉽 트레이닝을 갑니다 신남!
doSomethingWithSwitch(someone: mikael) // 멤버쉽 트레이닝을 갑니다 신남!
doSomethingWithSwitch(someone: jem) // 등교를 합니다
doSomethingWithSwitch(someone: yagom) // 숨을 쉽니다


func doSomething(someone: Person_cast) {
    if let universityStudent = someone as? UniversityStudent_cast {
        universityStudent.goToMT()
    } else if let student = someone as? Student_cast {
        student.goToSchool()
    } else if let person = someone as? Person_cast {
        person.breath()
    }
}

doSomething(someone: mikael as Person_cast) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: mikael) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: jem) // 등교를 합니다
doSomething(someone: yagom) // 숨을 쉽니다

/* Assertion
- assert(_:_:file:line:) 함수를 사용
- assert 함수는 디버깅 모드에서만 동작
- 배포하는 애플리케이션에서는 제외
- 예상했던 조건의 검증을 위하여 사용
*/
var someInt2: Int = 0

// 검증 조건과 실패시 나타날 문구를 작
// 검증 조건에 부합하므로 지나간다
assert(someInt2 == 0, "someInt != 0")

someInt2 = 1
//assert(someInt2 == 0) // 동작 중지, 검증 실패
//assert(someInt2 == 0, "someInt2 != 0") // 동작 중지, 검증 실패
// assertion failed: someInt2 != 0: file guard_assert.swift, line 26


func functionWithAssert(age: Int?) {
    
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
    print("당신의 나이는 \(age!)세입니다")
}

functionWithAssert(age: 50)
//functionWithAssert(age: -1) // 동작 중지, 검증 실패
//functionWithAssert(age: nil) // 동작 중지, 검증 실패
// * assert(_:_:file:line:)와 같은 역할을 하지만 실제 배포 환경에서도 동작하는 precondition(_:_:file:line:) 함수도 있습니다. 함께 살펴보세요.

/* guard(빠른종료- Early Exit)
- guard를 사용하여 잘못된 값의 전달 시 특정 실행구문을 빠르게 종료
- 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작
- guard의 else 블럭 내부에는 특정 코드블럭을 종료하는 지시어(return, break 등)가 꼭 있어야 한다
- 타입 캐스팅, 옵셔널과도 자주 사용
- 그 외에도 단순 조건 판단 후 빠르게 종료할 때도 용이
*/
func functionWithGuard(age: Int?) {
    
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
            print("나이값 입력이 잘못되었습니다")
            return
    }
    
    print("당신의 나이는 \(unwrappedAge)세입니다")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
// 1
// 2

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
}

someFunction(info: ["name": "jenny", "age": "10"])
someFunction(info: ["name": "mike"])
someFunction(info: ["name": "yagom", "age": 10]) // yagom: 10
    
// ** if let / gurad 를 이용한 옵셔널 바인딩 비교 **

// 1. if let 옵셔널 바인딩
/*
if let unwrapped: Int = someValue {
    do something
    unwrapped = 3
}
 */
// if 구문 외부에서는 unwrapped 사용이 불가능
// unwrapped = 5

// 2. guard 옵셔널 바인딩
// gaurd 구문 이후에도 unwrapped 사용 가능
/*
guard let unwrapped: Int = someValue else {
    return
}
unwrapped = 3
*/
/* 프로토콜
- 프로토콜(Protocol) 은 특정 역할을 수행하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진을 정의
- 구조체, 클래스, 열거형은 프로토콜을 채택(Adopted) 해서 특정 기능을 수행하기 위한 프로토콜의 요구사항을 실제로 구현할 수 있다.
- 어떤 프로토콜의 요구사항을 모두 따르는 타입은 그 프로토콜을 준수한다(Conform) 고 표현
- 타입에서 프로토콜의 요구사항을 충족시키려면 프로토콜이 제시하는 청사진의 기능을 모두 구현해야 한다. 즉, 프로토콜은 기능을 정의하고 제시 할 뿐이지 스스로 기능을 구현하지는 않는다.

 protocol 프로토콜 이름 {
 /* 정의부 */
 }
*/

/* 구현 <<프로퍼티 요구>>
- 프로퍼티 요구는 항상 var 키워드를 사용
- get은 읽기만 가능해도 상관 없다는 뜻이며 get과 set을 모두 명시하면 읽기 쓰기 모두 가능한 프로퍼티여야 한다
*/
protocol Talkable {
    
    // 프로퍼티 요구
    var topic: String { get set }
    var language: String { get }
    
    // 메서드 요구
    func talk()
    
    // 이니셜라이저 요구
    init(topic: String, language: String)
}
/* 프로토콜 채택 및 준수 <<프로토콜 채택>>
타입명: 프로토콜 이름
*/

struct Person_protocol: Talkable { // Person 구조체는 Talkable 프로토콜을 채택
    // 프로퍼티 요구 준수
    var topic: String
    let language: String
    
    // 읽기전용 프로퍼티 요구는 연산 프로퍼티로 대체가 가능
    //    var language: String { return "한국어" }
    
    // 물론 읽기, 쓰기 프로퍼티도 연산 프로퍼티로 대체할 수 있다
    //    var subject: String = ""
    //    var topic: String {
    //        set {
    //            self.subject = newValue
    //        }
    //        get {
    //            return self.subject
    //        }
    //    }
    
    // 메서드 요구 준수
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }
    
    // 이니셜라이저 요구 준수
    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}
//프로퍼티 요구는 다양한 방법으로 해석, 구현 할 수 있다.
struct Person_protocol2: Talkable {
    var subject: String = ""
    
    // 프로퍼티 요구는 연산 프로퍼티로 대체가 가능
    var topic: String {
        set {
            self.subject = newValue
        }
        get {
            return self.subject
        }
    }
    
    var language: String { return "한국어" }
    
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }
    
    init(topic: String, language: String) {
        self.topic = topic
    }
}

/* 프로토콜 상속
- 프로토콜은 하나 이상의 프로토콜을 상속받아 기존 프로토콜의 요구사항보다 더 많은 요구사항을 추가할 수 있다.
- 프로토콜 상속 문법은 클래스의 상속 문법과 유사하지만, 프로토콜은 클래스와 다르게 다중상속이 가능

protocol 프로토콜 이름: 부모 프로토콜 이름 목록 {
    /* 정의부 */
}
*/

protocol Readable {
    func read()
}
protocol Writeable {
    func write()
}
protocol ReadSpeakable: Readable {
    func speak()
}
protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}

struct SomeType: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    func write() {
        print("Write")
    }
    func speak() {
        print("Speak")
    }
}

/* 클래스 상속과 프로토콜
- 클래스에서 상속과 프로토콜 채택을 동시에 하려면 상속받으려는 클래스를 먼저 명시하고 그 뒤에 채택할 프로토콜 목록을 작성
*/
class SuperClass: Readable {
    func read() { }
}

class SubClass: SuperClass, Writeable, ReadSpeakable {
    func write() { }
    func speak() { }
}


/* 프로토콜 준수 확인
- is, as 연산자를 사용해서 인스턴스가 특정 프로토콜을 준수하는지 확인할 수 있다.
 */
let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()

var someAny_protocol: Any = sup
someAny_protocol is Readable // true
someAny_protocol is ReadSpeakable // false

someAny_protocol = sub
someAny_protocol is Readable // true
someAny_protocol is ReadSpeakable // true

someAny_protocol = sup

if let someReadable: Readable = someAny_protocol as? Readable {
    someReadable.read()
} // read

if let someReadSpeakable: ReadSpeakable = someAny_protocol as? ReadSpeakable {
    someReadSpeakable.speak()
} // 동작하지 않음

someAny_protocol = sub

if let someReadable: Readable = someAny_protocol as? Readable {
    someReadable.read()
} // read

/* 익스텐션
- 익스텐션(Extension) 은 스위프트의 강력한 기능 중 하나
- 익스텐션은 구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가 할 수 있는 기능
- 기능을 추가하려는 타입의 구현된 소스 코드를 알지 못하거나 볼 수 없다 해도, 타입만 알고 있다면 그 타입의 기능을 확장할 수도 있다.

 <<스위프트의 익스텐션이 타입에 추가할 수 있는 기능>>
- 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
- 타입 메서드 / 인스턴스 메서드
- 이니셜라이저
- 서브스크립트
- 중첩 타입
- 특정 프로토콜을 준수할 수 있도록 기능 추가

 ** 익스텐션은 타입에 새로운 기능을 추가할 수는 있지만, 기존에 존재하는 기능을 재정의할 수는 없다.

 <<클래스의 상속과 익스텐션 비교>>
 이 둘은 비슷해보이지만 실제 성격은 많이 다르다.
클래스의 상속은 클래스 타입에서만 가능하지만 익스텐션은 구조체, 클래스, 프로토콜 등에 적용이 가능하다. 또 클래스의 상속은 특정 타입을 물려받아 하나의 새로운 타입을 정의하고 추가 기능을 구현하는 수직 확장이지만, 익스텐션은 기존의 타입에 기능을 추가하는 수평 확장이다. 또, 상속을 받으면 기존 기능을 재정의할 수 있지만, 익스텐션은 재정의할 수 없다는 것도 큰 차이 중 하나이다. 상황과 용도에 맞게 상속과 익스텐션을 선택하여 사용하면 된다.
        상속      익스텐션
확장    수직 확장    수평 확장
사용    클래스 타입   클래스, 구조체, 프로토콜, 제네릭 등 모든 타입
재정의    가능        불가능

 << 익스텐션 활용>>
익스텐션을 사용하는 대신 원래 타입을 정의한 소스에 기능을 추가하는 방법도 있겠지만, 외부 라이브러리나 프레임워크를 가져다 썼다면 원본 소스를 수정하지 못힌다. 이처럼 외부에서 가져온 타입에 내가 원하는 기능을 추가하고자 할 때 익스텐션을 사용한다. 따로 상속을 받지 않아도 되며, 구조체와 열거형에도 기능을 추가할 수 있으므로 익스텐션은 매우 편리한 기능이다.
익스텐션은 모든 타입에 적용할 수 있다. 모든 타입이라 함은 구조체, 열거형, 클래스, 프로토콜, 제네릭 타입 등을 뜻한다. 즉, 익스텐션을 통해 모든 타입에 연산 프로퍼티, 메서드, 이니셜라이저, 서브스크립트, 중첩 데이터 타입 등을 추가할 수 있다. 더불어 익스텐션은 프로토콜과 함께 사용하면 굉장히 강력한 기능을 선사한다. 이 부분과 관련해 프로토콜 중심 프로그래밍(Protocol Oriented Programming)에 대해 더 알아보는 것을 추천
*/
/* 정의
- extension 키워드를 사용하여 정의

 extension 확장할 타입 이름 {
    /* 타입에 추가될 새로운 기능 구현 */
}

- 익스텐션은 기존에 존재하는 타입이 추가적으로 다른 프로토콜을 채택할 수 있도록 확장할 수도 있다. 이런 경우에는 클래스나 구조체에서 사용하던 것과 똑같은 방법으로 프로토콜 이름을 나열해준다.

extension 확장할 타입 이름: 프로토콜1, 프로토콜2, 프로토콜3... {
    /* 프로토콜 요구사항 구현 */
}
 
- 스위프트 라이브러리를 살펴보면 실제로 익스텐션이 굉장히 많이 사용되고 있음을 알 수 있다.
- Double 타입에는 수많은 프로퍼티와 메서드, 이니셜라이저가 정의되어 있으며 수많은 프로토콜을 채택하고 있을 것이라고 예상되지만, 실제로 Double 타입의 정의를 살펴보면 그 모든것이 다 정의되어 있지는 않다. 그러면 Double 타입이 채택하고 준수해야 하는 수많은 프로토콜은 어디로 갔을까? 어디에서 채택하고 어디에서 준수하도록 정의되어 있을까? 당연히 답은 익스텐션이다. 이처럼 스위프트 표준 라이브러리 타입의 기능은 대부분 익스텐션으로 구현되어 있다. Double 외에도 다른 타입들의 정의와 익스텐션을 찾아보면 더 많은 예를 보실 수 있다. 꼭 한 번 찾아보기!  
*/

/*구현
<<연산 프로퍼티 추가>>
- 아래 익스텐션은 Int 타입에 두 개의 연산 프로퍼티를 추가한 것이다.
- Int 타입의 인스턴스가 홀수인지 짝수인지 판별하여 Bool타입으로 알려주는 연산 프로퍼티이다.
- 익스텐션으로 Int 타입에 추가해준 연산 프로퍼티는 Int 타입의 어떤 인스턴스에도 사용이 가능
- 인스턴스 연산 프로퍼티를 추가할 수도 있으며, static 키워드를 사용하여 타입 연산 프로퍼티도 추가할 수 있다.
*/
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven) // false
print(2.isEven) // true
print(1.isOdd)  // true
print(2.isOdd)  // false

var number: Int = 3
print(number.isEven) // false
print(number.isOdd) // true

number = 2
print(number.isEven) // true
print(number.isOdd) // false

/* 메서드 추가
- 메서드 익스텐션을 통해 Int 타입에 인스턴스 메서드인 multiply(by:) 메서드를 추가
- 여러 기능을 여러 익스텐션 블록으로 나눠서 구현해도 전혀 문제가 없다.
- 관련된 기능별로 하나의 익스텐션 블록에 묶어주는 것도 좋다.
*/
extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}
print(3.multiply(by: 2))  // 6
print(4.multiply(by: 5))  // 20

number = 3
print(number.multiply(by: 2))   // 6
print(number.multiply(by: 3))   // 9

/* 이니셜라이저 추가
- 인스턴스를 초기화(이니셜라이즈)할 때 인스턴스 초기화에 필요한 다양한 데이터를 전달받을 수 있도록 여러 종류의 이니셜라이저를 만들 수 있다. 타입의 정의부에 이니셜라이저를 추가하지 않더라도 익스텐션을 통해 이니셜라이저를 추가할 수 있다.
- 익스텐션으로 클래스 타입에 편의 이니셜라이저는 추가할 수 있지만, 지정 이니셜라이저는 추가할 수 없다. 지정 이니셜라이저와 디이니셜라이저는 반드시 클래스 타입의 구현부에 위치해야 한다(값 타입은 상관없다).
 */
extension String {
    init(int: Int) {
        self = "\(int)"
    }
    
    init(double: Double) {
        self = "\(double)"
    }
}

let stringFromInt: String = String(int: 100)
// "100"

let stringFromDouble: String = String(double: 100.0)
// "100.0"
// ** 익스텐션 활용하면 다양하고 강력한 기능을 구현할 수 있지만, 해당 타입에 적합한 익스텐션을 구현하도록 주의해야합니다.


/* 오류 처리
- 스위프트에서 오류(Error)는 Error라는 프로토콜을 준수하는 타입의 값을 통해 표현
- Error 프로토콜은 사실상 요구사항이 없는 빈 프로토콜일 뿐이지만, 오류를 표현하기 위한 타입(주로 열거형)은 이 프로토콜을 채택
- 스위프트의 열거형은 오류의 종류를 나타내기에 아주 적합한 기능
- 연관 값을 통해 오류에 관한 부가 정보를 제공할 수도 있다.
*/

// 오류 표현 : Error 프로토콜과 (주로)열거형을 통해서 오류를 표현
// 자판기 동작 오류의 종류를 표현한 VendingMachineError 열거형
enum VendingMachineError: Error {
    case invalidInput
    case insufficientFunds(moneyNeeded: Int)
    case outOfStock
}

/* 함수에서 발생한 오류 던지기
- 자판기 동작 도중 발생한 오류를 던지는 메서드를 구현
- 오류 발생의 여지가 있는 메서드는 throws를 사용하여 오류를 내포하는 함수임을 표시
*/
class VendingMachine {
    let itemPrice: Int = 100
    var itemCount: Int = 5
    var deposited: Int = 0
    
    // 돈 받기 메서드
    func receiveMoney(_ money: Int) throws {
        
        // 입력한 돈이 0이하면 오류
        guard money > 0 else {
            throw VendingMachineError.invalidInput
        }
        
        // 오류가 없으면 정상처리
        self.deposited += money
        print("\(money)원 받음")
    }
    
    // 물건 팔기 메서드
    func vend(numberOfItems numberOfItemsToVend: Int) throws -> String {
        
        // 원하는 아이템의 수량이 잘못 입력되었으면 오류
        guard numberOfItemsToVend > 0 else {
            throw VendingMachineError.invalidInput
        }
        
        // 구매하려는 수량보다 미리 넣어둔 돈이 적으면 오류
        guard numberOfItemsToVend * itemPrice <= deposited else {
            let moneyNeeded: Int
            moneyNeeded = numberOfItemsToVend * itemPrice - deposited
            
            throw VendingMachineError.insufficientFunds(moneyNeeded: moneyNeeded)
        }
        
        // 구매하려는 수량보다 요구하는 수량이 많으면 오류
        guard itemCount >= numberOfItemsToVend else {
            throw VendingMachineError.outOfStock
        }
        
        // 오류가 없으면 정상처리
        let totalPrice = numberOfItemsToVend * itemPrice
        
        self.deposited -= totalPrice
        self.itemCount -= numberOfItemsToVend
        
        return "\(numberOfItemsToVend)개 제공함"
    }
}

// 자판기 인스턴스
let machine: VendingMachine = VendingMachine()

// 판매 결과를 전달받을 변수
var result_error: String?

/* 오류 처리
- 오류를 던질 수도 있지만 오류가 던져지는 것에 대비하여 던져진 오류를 처리하기 위한 코드도 작성해야 한다. 예를 들어 던져진 오류가 무엇인지 판단하여 다시 문제를 해결한다든지, 다른 방법으로 시도해 본다든지, 사용자에게 오류를 알리고 사용자에게 선택 권한을 넘겨주어 다음에 어떤 동작을 하게 할 것인지 결정하도록 유도하는 등의 코드를 작성해야 한다.
- 오류발생의 여지가 있는 throws 함수(메서드)는 try를 사용하여 호출해야한다. try와 do-catch, try?와 try! 등에 대해 알아보자
*/

/* do-catch
- 오류발생의 여지가 있는 throws 함수(메서드)는 do-catch 구문을 활용하여 오류발생에 대비한다.
- 가장 정석적인 방법으로 모든 오류 케이스에 대응한다
 */
do {
    try machine.receiveMoney(0)
} catch VendingMachineError.invalidInput {
    print("입력이 잘못되었습니다")
} catch VendingMachineError.insufficientFunds(let moneyNeeded) {
    print("\(moneyNeeded)원이 부족합니다")
} catch VendingMachineError.outOfStock {
    print("수량이 부족합니다")
} // 입력이 잘못되었습니다
// 하나의 catch 블럭에서 switch 구문을 사용하여 오류를 분류해본다. 굳이 위의 것과 크게 다를 것이 없다.
do {
    try machine.receiveMoney(300)
} catch /*(let error)*/ {
    
    switch error {
    case VendingMachineError.invalidInput:
        print("입력이 잘못되었습니다")
    case VendingMachineError.insufficientFunds(let moneyNeeded):
        print("\(moneyNeeded)원이 부족합니다")
    case VendingMachineError.outOfStock:
        print("수량이 부족합니다")
    default:
        print("알수없는 오류 \(error)")
    }
} // 300원 받음
// 딱히 케이스별로 오류처리 할 필요가 없으면 catch 구문 내부를 간략화해도 무방
do {
    result_error = try machine.vend(numberOfItems: 4)
} catch {
    print(error)
} // insufficientFunds(100)﻿

// 케이스별로 오류처리 할 필요가 없으면 do 구문만 써도 무방
do {
    result_error = try machine.vend(numberOfItems: 4)
}

/* try? 와 try!
1. try?
- 별도의 오류처리 결과를 통보받지 않고 오류가 발생했으면 결과값을 nil로 돌려받을 수 있다.
- 정상동작 후에는 옵셔널 타입으로 정상 반환값을 돌려 받는다.
 */
result_error = try? machine.vend(numberOfItems: 2)
result_error // Optional("2개 제공함")

result_error = try? machine.vend(numberOfItems: 2)
result_error // nil

/*
2. try!
- 오류가 발생하지 않을 것이라는 강력한 확신을 가질 때 try!를 사용하면 정상동작 후에 바로 결과값을 돌려받는다.
- 오류가 발생하면 런타임 오류가 발생하여 애플리케이션 동작이 중지
 */
result_error = try! machine.vend(numberOfItems: 1)
result_error // 1개 제공함

//result = try! machine.vend(numberOfItems: 1)
// 런타임 오류 발생!

/* 더 알아보기: 추가적으로 더 알아보면 좋은 개념
 rethrows :
 defer :
*/

/* 고차 함수
- 고차 함수(Higher-order function)는 '다른 함수를 전달인자로 받거나 함수실행의 결과를 함수로 반환하는 함수
- 스위프트의 함수(클로저)는 일급시민(일급객체)이기 때문에 함수의 전달인자로 전달할 수 있으며, 함수의 결과값으로 반환할 수 있다
- 이번 파트에서는 스위프트 표준라이브러리에서 제공하는 유용한 고차함수[map, filter, reduce]에 대해 알아본다
- map, filter, reduce 함수는 스위프트 표준 라이브러리의 컨테이너 타입(Array, Set, Dictionary 등)에 구현되어 있다
*/

// map : map함수는 컨테이너 내부의 기존 데이터를 변형(transform)하여 새로운 컨테이너를 생성

// 변형하고자 하는 numbers와 변형 결과를 받을 doubledNumbers, strings
let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNumbers: [Int]
var stringss: [String]
// 기존의 for 구문 사용
    doubledNumbers = [Int]()
strings = [String]()

for number in numbers {
    doubledNumbers.append(number * 2)
    strings.append("\(number)")
}

print(doubledNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]

// map 메서드 사용
// numbers의 각 요소를 2배하여 새로운 배열 반환
doubledNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})

// numbers의 각 요소를 문자열로 변환하여 새로운 배열 반환
strings = numbers.map({ (number: Int) -> String in
    return "\(number)"
})

print(doubledNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
doubledNumbers = numbers.map { $0 * 2 }
print(doubledNumbers) // [0, 2, 4, 6, 8]

// filter : filter함수는 컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출

// 기존의 for 구문 사용

// 변수 사용에 주목
var filtered: [Int] = [Int]()

for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}

print(filtered) // [0, 2, 4]

// filter 메서드 사용
// numbers의 요소 중 짝수를 걸러내어 새로운 배열로 반환
let evenNumbers: [Int] = numbers.filter { (number: Int) -> Bool in
    return number % 2 == 0
}
print(evenNumbers) // [0, 2, 4]

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
let oddNumbers: [Int] = numbers.filter {
    $0 % 2 != 0
}
print(oddNumbers) // [1, 3]

// reduce : reduce함수는 컨테이너 내부의 콘텐츠를 하나로 통합

// 통합하고자 하는 someNumbers
let someNumbers: [Int] = [2, 8, 15]
// 기존의 for 구문 사용
// 변수 사용에 주목
var result_filter: Int = 0

// someNumbers의 모든 요소를 더합니다
for number in someNumbers {
    result_filter += number
}

print(result) // 25

// reduce 메서드 사용
// 초깃값이 0이고 someNumbers 내부의 모든 값을 더합니다.
let sum_reduce: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) + \(second)") //어떻게 동작하는지 확인해보세요
    return first + second
})

print(sum_reduce)  // 25

// 초깃값이 0이고 someNumbers 내부의 모든 값을 뺍니다.
var subtract: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) - \(second)") //어떻게 동작하는지 확인해보세요
    return first - second
})

print(subtract) // -25

// 초깃값이 3이고 someNumbers 내부의 모든 값을 더합니다.
let sumFromThree = someNumbers.reduce(3) { $0 + $1 }

print(sumFromThree) // 28

/* 추가적으로 알아가여 할 문법과 개념들
 - 제네릭 : (Generics)
 - 서브스크립트 : (Subscript)
 - 접근수준 : (Access Control)
 - ARC : (Autumatic Referenxe Counting)
 - 중첩타입 : (Nested Types)
 - 사용자정의 연산자 : (Custom Operators)
*/
