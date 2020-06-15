import UIKit
/*:
 ### [100days of Swift - day3](https://www.hackingwithswift.com/100/3)
 ## 연산자 및 조건
 ### [1. 산술 연산자](https://www.hackingwithswift.com/sixty/3/1/arithmetic-operators)
 * 기본적인 연산자로 덧셈 뺄셈이 있다.
 */
//: ### [1. 1 스위프트에서 Int와 Double을 더할 수 없는 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-cant-swift-add-a-double-to-an-int)
//: ### [1. 2 스위프트에 나머지 연산이 있는 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-a-dedicated-division-remainder-operator)
//: * 표 같은경우 읽기쉽도록 색을 번갈아가며 다르게 하는경우가 있다. 이와같은 상황에서 나머지 연산이 활용 가능 (지브라 스트라이핑)

//: ### [2. 연산자 오버로딩](https://www.hackingwithswift.com/sixty/3/2/operator-overloading)
//: ### [2.1 스위프트에 연산자 오버로딩이 있는 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-operator-overloading)

//: ### [3. 복합 대입 연산자](https://www.hackingwithswift.com/sixty/3/3/compound-assignment-operators)
//: ### [3.1 스위프트에 복합 대입 연산자가 있는 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-compound-assignment-operators)
//: * 성능적인 이유는 아니다. 코드 작성상의 이유로 존재한다.

//: ### [4. 비교 연산자](https://www.hackingwithswift.com/sixty/3/4/comparison-operators)
//: ### [4.1 스위프트에서 여러 타입들의 비교방식](https://www.hackingwithswift.com/quick-start/understanding-swift/how-does-swift-let-us-compare-many-types-of-data)
//: * Swift 5.3이상에서 enum을 비교하는 예제

//: ### [5. 조건문](https://www.hackingwithswift.com/sixty/3/5/conditions)
//: ### [5.1 if와 else if의 차이](https://www.hackingwithswift.com/quick-start/understanding-swift/whats-the-difference-between-if-and-else-if)
//: *if를 중첩해서 사용하면 읽기가 힘들다.

//: ### [6. 조건 결합](https://www.hackingwithswift.com/sixty/3/6/combining-conditions)
//: ### [6.1 다수의 조건을 확인하는 법](https://www.hackingwithswift.com/quick-start/understanding-swift/how-to-check-multiple-conditions)
//:* &&와 ||를 섞어 쓸 경우 해석하는 순서에따라 다르게 보이므로 괄호를 직접 사용하자

//: ### [7. 삼항 연산자](https://www.hackingwithswift.com/sixty/3/7/the-ternary-operator)
//: ### [7.1 언제 삼항 연산자를 사용하는가?](https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-the-ternary-operator-in-swift)
//:* 가능하면 피해라, 사용하지 않는편이 길게 쓰더라도 이해하기 쉽다. Swift UI에서는 삼항연산자를 많이 사용한다.

//: ### [8. 스위치 문](https://www.hackingwithswift.com/sixty/3/8/switch-statements)
//: ### [8.1 if가 아닌 switch를 사용해야 하는 경우](https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-switch-statements-rather-than-if)
//:* 열거형인 경우 if를 사용하면 실수로 놓칠 수 있음, 여러가지 케이스를 비교하는경우 if는 여러번 비교하지만 switch는 한번만 비교하므로 성능상 좋음, Swift의 패턴 매칭을 사용하는 경우, 가동성도 더 좋다

//: ### [9. 범위 연산자](https://www.hackingwithswift.com/sixty/3/9/range-operators)
//: ### [9.1 왜 범위 연산자는 두가지가 있는가](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-two-range-operators)

//: ### [연산자 및 조건 요약](https://www.hackingwithswift.com/sixty/3/10/operators-and-conditions-summary)
