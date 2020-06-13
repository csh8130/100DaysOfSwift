import UIKit
/*:
 * playground는 Swift코드를 즉시 볼 수 있는 샌드박스 입니다.
 * shift + command + enter (Run playground) 로 즉시 실행 합니다.
 * 코드 오른쪽에서 결과 값을 확인할 수 있습니다.
 ### [1. 변수](https://www.hackingwithswift.com/100/1)
 * 처음 프로젝트를 생성하면 변수가 이미 생성되어 있습니다.
    * var str = "Hello, playground"
 * 변수는 값을 변경 할 수 있습니다.
 
 str에 "Hello, playground"라는 값이 저장되어있습니다.
*/
var str = "Hello, playground"
//: str 변수의 값을 바꿀 수 있습니다. 변수가 이미 생성되어 있으므로 var 를 다시 쓸 필요는 없습니다.
str = "Goodbye"
/*:
 ### [1.1 변수가 있는 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-variables)
 
 * 변수는 정보를 저장하여 Swift 프로그램의 핵심을 구성한다.
 * 어떤 정보든 저장 할 수 있다.
 * 한번 변수를 생성하면 var를 다시 쓰지않고 원하는만큼 변수를 변경할 수 있다.
 * var의 의미를 "새 변수 만들기"라고 생각해도 좋다.
*/
var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"
//:* 만약 위의 favoriteShow 앞에 모두 var를 붙이면 3번이나 favoriteShow라는 이름의 변수를 생성하시오 라는 의미가 된다.
//:* swift에서는 이와같이 같은 이름의 변수를 여러번 생성하면 오류로 판단하고 빨갛게 표시한다. (Swift는 애매한 상황을 싫어한다, 모든것을 명확하게 하려 한다.)
//:* 변수는 swift의 핵심이지만 어떤 상황에서는 변수를 사용하지 않는게 더 좋을때도 있다 (뒤에서  다시)
/*:
 ### [2. 문자열, 정수](https://www.hackingwithswift.com/sixty/1/2/strings-and-integers)
 * Swift의 모든 변수는 하나의 특정 타입입니다.
    * var str = "Hello, playground"
    * 처음에 만들었던 str 변수는 "Hello, playground" 라는 문자열을 저장하는 String 타입 변수입니다.
 * 반면에 나이를 저장하기위해서 age라는 변수를 만들 수 있습니다.
*/
var age = 38
var population = 8_000_000
/*:
 * 이것은 정수를 가지고있기 때문에 Int타입입니다. (Int는 정수의 약자입니다)
 * 가령 큰 숫자를 보기 쉽게 하기위해서 _(밑줄)을 사용할 수 있습니다. 밑줄이 있어도 숫자가 변경되지 않습니다.
 * 문자열과 정수는 타입이 다르므로 혼용해서 사용할 수 없습니다.
 * 가령 age 38을 저장한 후 문자열을 다시 저장하려 하면 오류가 발생합니다 Int 타입의 변수에 String을 저장하려 했기 때문입니다.
 */
/*:
 ### [3. 여러줄의 문자열](https://www.hackingwithswift.com/sixty/1/3/multi-line-strings)
 * Swift의 문자열을 큰따옴표로 표현하지만 줄바꿈을 표현할 수 없습니다.
 * 여러줄의 문자열을 표현하려면 큰따옴표 세개를 사용합니다.
*/
var str1 = """
This goes
over multiple
lines
"""
/*:
 * 코드에서 줄바꿈을 했었지만 실제로 줄바꿈을 포함하지 않고 싶은 경우 줄 마지막에 \로 끝내십시오.
 */
var str2 = """
This goes \
over multiple \
lines
"""
/*:
 ### [4. Double타입, Boolean타입](https://www.hackingwithswift.com/sixty/1/4/doubles-and-booleans)
 * Swift의 다른 두가지 기본타입이고 아주 많이 사용한다.
 * Double는 배정밀도 부동소수점 수의 약자이다 3.141592654와 같은 소수를 저장할 수 있다.
 * 변수에 소수를 저장할때 자동으로 Double로 생성된다.
 * boolean은 훨씬 간단하다. true와 false 두가지 값만 가질 수 있는 타입이다.
*/
var pi = 3.141
var awesome = true
var not_awesome = false
/*:
 ### [4.1 Double과 Int가 모두 필요한 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-both-doubles-and-integers)
 * 숫자 변수를 만들 때 Swift는 소수점 포함 여부에 따라 Int 또는 Double으로 간주할지 결정합니다. 예를 들면 다음과 같습니다.
*/
var myInt = 1
var myDouble = 1.0
/*:
 * 보시다시피, 둘 다 숫자 1을 포함하지만 전자는 Int이고 후자는 Double입니다.
 * var total = myInt + myDouble 라고 할 수 있을까?
 * Swift는 type-safe 언어입니다. 그렇기 때문에 허용되지 않습니다.
 * 1 과 1.0을 더하면 2가 된다는것을 우리는 알고있습니다. 하지만 만약 1과 1.1을 더한다면? 0.1을 잃어버리고 2가 될지도 모릅니다. 이같은 안전하지 않은 상황을 Swift는 허락하지 않습니다. 처음에는 짜증이 나지만 나중에 도움이 됩니다.
 */
/*:
 ### [5. 문자열 보간](https://www.hackingwithswift.com/sixty/1/5/string-interpolation)
 * 코드에 문자열 값을 직접 입력하는 방법을 보았지만 Swift에는 문자열 보간이라는 기능도 있습니다. 즉, 문자열 내에 변수를 배치하여 더 유용하게 사용할 수 있습니다.
 * 문자열 안에 모든 유형의 변수를 배치 할 수 있습니다. 역 슬래시를 작성하고 \변수 이름을 괄호로 묶기 만하면됩니다. 예를 들면 다음과 같습니다.
*/
var score = 85
var str3 = "Your score was \(score)"
/*:
 * playgrond 출력에서 볼 수 있듯이 str3변수가 "Your score was 85"로 설정됩니다.
 * 필요한 경우 문자열을 문자열로 만들어 필요한 횟수만큼 문자열 보간을 수행 할 수 있습니다.
*/
var results = "The test results are here: \(str3)"
//: 나중에 보겠지만 문자열 보간은 변수를 배치하는 것에 만 국한된 것이 아니라 실제로 내부에서 코드를 실행할 수 있습니다.
//: [문자열 보간이 왜 있습니까?](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-string-interpolation)

/*:
 ### [6. 상수](https://www.hackingwithswift.com/sixty/1/6/constants)
 * 변수의 이름은 시간이 지남에 따라 변경 될 수 있기 때문에 그 이름을 가지고 있다고 말했습니다. 그러나 종종 값을 한 번 설정하고 변경하지 않기를 원하므로 var키워드라는 대체 키워드로 let이 있습니다.
 * let키워드로 상수를 생성할 수 있으며, 한번 설정된 값을 다시는 바꿀 수 없습니다.
 * 값을 변경하려고하면 Xcode는 코드 실행을 거부합니다. 그것은 안전의 한 형태입니다. 상수를 사용할 때 실수로 무언가를 바꿀 수 없습니다.
 * 자신의 Swift 코드를 작성할 때 값을 특별히 값을 변경하지 않으려면 항상 let을 사용해야 합니다. 당신이 var를 사용하는 경우 사실, 엑스 코드는 경고합니다 - let을 사용하고 var를 사용하지 마십시오
*/
let taylor = "swift"
/*:
 ### [6.1 Swift에 상수와 변수가 있는 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-constants-as-well-as-variables)
 변수는 프로그램에 임시 데이터를 저장하는 좋은 방법이지만 Swift는 더 나은 두 번째 옵션으로 상수를 제공합니다. 상수는 모든면에서 변수와 동일하지만 한 가지 중요한 차이점이 있습니다. 일단 설정 한 값은 변경할 수 없습니다.

 Swift는 상수를 정말 좋아하며 실제로 변수를 만든 다음 값을 변경하지 않으면 상수를 사용하는 것이 좋습니다. 그 이유는 문제를 피하기위한 것입니다. 생성하는 모든 변수는 원할 때마다 원하는만큼 자주 변경할 수 있으므로 통제력을 잃어 버릴 수 있습니다. 사용자가 숨겨둔 중요한 사용자 데이터가 제거되거나 교체 될 수 있습니다.

 상수는 일단 설정되면 값을 변경할 수 없으므로 Swift와의 계약과 비슷합니다.“이 값이 중요합니다. 내가하는 일에 관계없이 값을 변경하지 마십시오.” 물론 변수를 사용하여 동일한 계약을 만들 수는 있지만 실수로 망칠 수 있으며 Swift는 도움을 줄 수 없습니다. 상수를 사용하여 절대 변경 불가능한 값을 만든것이다.
*/

/*:
 ### [7 타입 어노테이션 (명시적 타입 선언)](https://www.hackingwithswift.com/sixty/1/7/type-annotations)
 * Swift는 생성 될 때 제공되는 값에 따라 각 변수와 상수에 유형을 유추하여 할당합니다. 따라서이 Swift와 같은 코드를 작성하면 문자열이 있음을 알 수 있습니다.
*/
let str4 = "Hello, playground"
/*
 * str문자열 이 만들어 지므로 나중에 Int 또는 Boolean을 할당 할 수 없습니다. 이것을 타입 추론 이라고 합니다.
 * Swift는 생성 한 방식에 따라 무언가의 유형을 유추 할 수 있습니다.
 * 원하는 경우 다음과 같이 Swift의 형식 유추에 의존하지 않고 데이터 형식에 대해 명시적일 수 있습니다.
 */
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
/*:
### [7.1 타입 어노테이션이 있는 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-type-annotations)
 * 답은 주로 세 가지 이유 중 하나입니다.
     1. 스위프트는 어떤 유형을 사용 해야하는지 알 수 없습니다.
     2. Swift가 기본값과 다른 유형을 사용하기를 원합니다.
     3. 아직 값을 할당하고 싶지 않습니다.
 * 또다른 답은 .을 사용하지않고 소수를 만들고 싶을 때 입니다. var percentage: Double = 99
 * 99.0이라고 적지 않아도 됩니다.
 * 가능하면 명시적 타입선언을 선호하는 편입니다.
    1. 코드가 읽기 편해집니다.
    2. 값을 넣기전에 의도하지 않게 타입이 바뀌지 않습니다.
 */

/*:
 ### [요약](https://www.hackingwithswift.com/sixty/1/8/simple-types-summary)
 * 이 시리즈의 첫 번째 부분이 끝났으므로 요약 해 보겠습니다.

     1. let을 사용하여 상수를 var을 사용하여 변수를 만듭니다. 상수를 가능한 자주 사용하는 것이 좋습니다.
     2. 문자열은 큰 따옴표로 시작하고, 끝나지 만 여러 줄을 가로 질러 실행하려면 세 쌍의 큰 따옴표를 사용해야합니다.
     3. int는 정수를, double는 소수를, bool은 참 또는 거짓을 갖습니다.
     4. 문자열 보간을 사용하면 다른 변수 및 상수에서 문자열을 만들어 값을 문자열 안에 넣을 수 있습니다.
     5. Swift는 타입 유추를 사용하여 각 변수 또는 상수에 유형을 지정하지만 원하는 경우 명시 적 타입을 제공 할 수 있습니다.
 */
