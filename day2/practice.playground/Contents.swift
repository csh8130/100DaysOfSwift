import UIKit
/*:
 ### [100days of Swift - day2](https://www.hackingwithswift.com/100/2)
 * playground는 Swift코드를 즉시 볼 수 있는 샌드박스 입니다.
 * shift + command + enter (Run playground) 로 즉시 실행 합니다.
 * 코드 오른쪽에서 결과 값을 확인할 수 있습니다.
 ### [1. 배열(Array)](https://www.hackingwithswift.com/sixty/2/1/arrays)
 * 배열은 값들의 모음입니다.
 * 코드에서는 다음과 같이 작성합니다.
 */
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
/*:
 * 마지막 행은 배열을 만듭니다. 배열의 각 항목을 쉼표로 구분하여 대괄호로 시작하고 끝납니다.
 * 대괄호 안에 숫자를 써서 배열에서 값을 읽을 수 있습니다. 배열 위치는 0부터 계산되므로 "Paul McCartney"를 읽으려면 다음과 같이 작성하십시오.
 * 주의 : 존재하지 않는 항목을 읽으면 스위프트가 충돌합니다. 예를 들어, beatles[9]를 읽는것은 나쁜 생각입니다.
 */
beatles[1]
/*:
 ### [1.1 배열을 사용하는 이유(Why does Swift have arrays?)](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-variables)
 
 * Swift의 string, int, bool 및 double을 사용하면 단일 값을 임시로 저장할 수 있지만 많은 값을 저장하려는 경우 종종 배열을 사용합니다.

 * 다른 유형의 데이터와 마찬가지로 배열의 상수와 변수를 만들 수 있지만 차이점은 배열 안에 많은 값이 있다는 것입니다. 따라서 여러 날 동안의 온도 변화와 같은것을 저장하려면 단일 값이 아닌 배열이 필요합니다.

 * Swift의 배열은 원하는만큼 크거나 작을 수 있습니다. 변수가 가변적이면 시간이 지남에 따라 자유롭게 데이터를 추가하거나 원하는 경우 항목을 제거하거나 다시 정렬 할 수 있습니다.

 * 우리는 숫자 위치를 사용하여 0부터 계산하여 배열에서 값을 읽습니다. Swift의 배열은 0부터 시작합니다 . 잘못된 인덱스를 사용하여 배열을 읽으려고하면 Swift가 자동으로 프로그램을 중단시킵니다. 예를 들어, 세 개의 항목으로 배열을 만든 다음 인덱스 10을 읽으려고 하면 프로그램은 중단됩니다.
*/
var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"
//:* 만약 위의 favoriteShow 앞에 모두 var를 붙이면 3번이나 favoriteShow라는 이름의 변수를 생성하시오 라는 의미가 된다.
//:* swift에서는 이와같이 같은 이름의 변수를 여러번 생성하면 오류로 판단하고 빨갛게 표시한다. (Swift는 애매한 상황을 싫어한다, 모든것을 명확하게 하려 한다.)
//:* 변수는 swift의 핵심이지만 어떤 상황에서는 변수를 사용하지 않는게 더 좋을때도 있다 (뒤에서  다시)
/*:
 ### [2. 집합(Set)](https://www.hackingwithswift.com/sixty/2/2/sets)
 * 집합은 두 가지 차이점이 있다는 점을 제외하면 배열과 같은 값의 모음입니다.

    1. 항목은 어떤 순서로도 저장되지 않습니다. 그것들은 사실상 임의의 순서로 저장됩니다.
    2. 세트에 항목이 두 번 나타날 수 없습니다. 모든 항목은 고유해야합니다.
 * 다음과 같이 배열에서 직접 세트를 만들 수 있습니다.
*/
let colors = Set(["red", "green", "blue"])
/*:
 * colors의 출력 결과를 보면 만들 때 사용한 순서와 일치하지 않는것을 알 수 있습니다.
 * 순서가 보장되지 않으므로 배열에서처럼 숫자 순서를 사용해서 데이터에 접근 할 수 없습니다.
 * 집합에 중복된 값을 저장하려하면 무시됩니다.
 * 아래의 green red blue는 각각 한번씩만 저장됩니다.
 */
let colors2 = Set(["red", "green", "blue", "red", "blue"])
/*:
 ### [2.1 집합과 배열이 다른이유(Why are sets different from arrays in Swift?)](https://www.hackingwithswift.com/quick-start/understanding-swift/why-are-sets-different-from-arrays-in-swift)
 
 * 집합과 배열은 모두 데이터 모음이므로 단일 변수 내에 여러 값을 보유합니다. 그러나  값을 보유 하는 방법 이 중요합니다. 세트는 정렬되지 않고 중복을 포함 할 수 없지만 배열은 순서를 유지하고 중복 을 포함 할 수 있습니다.

 * 이 두 가지 차이점은 작지만 흥미로운 부작용이 있습니다. 집합은 추가 한 순서대로 오브젝트를 저장할 필요가 없기 때문에 빠른 검색을 위해 최적화하는 임의의 순서로 오브젝트를 저장할 수 있습니다. 따라서 "이 세트에 항목 X가 포함되어 있습니까?"라고 하면 세트의 크기에 상관없이 몇 초 만에 답을 얻을 수 있습니다.

 * 이에 비해, 배열은 아이템을 사용자가 지정한 순서대로 저장해야하므로 아이템 X가 10,000 개의 아이템을 포함하는 어레이에 있는지 확인하려면 스위프트는 첫 번째 아이템에서 시작하여 발견 될 때까지 모든 아이템을 확인해야합니다.

 * 이 차이는 "이 항목이 존재합니까?"라고 하고 싶을 때 세트가 더 유용하다는 것을 의미합니다. 예를 들어, 단어가 사전에 나타나는지 확인하려면 세트를 사용해야합니다. 복제본이없고 빠른 검색을 원하는 경우.
*/

/*:
 ### [3. 튜플](https://www.hackingwithswift.com/sixty/2/3/tuples)
 * 튜플을 사용하면 여러 값을 단일 값으로 함께 저장할 수 있습니다. 배열처럼 들리지만 튜플은 다릅니다.

    1. 튜플에서 항목을 추가하거나 제거 할 수 없습니다. 그들은 크기가 고정되어 있습니다.
    2. 튜플에서 데이터 타입을 변경할 수 없습니다. 그들은 항상 그들이 만든 것과 같은 타입을 가지고 있습니다.
    3. 숫자 위치를 사용하거나 이름을 지정하여 튜플의 항목에 액세스 할 수 있지만 Swift에서는 존재하지 않는 숫자 나 이름을 읽을 수 없습니다.
 * 튜플은 다음과 같이 여러 항목을 괄호 안에 배치하여 만듭니다.
*/
var name = (first: "Taylor", last: "Swift")
//:그런 다음 0부터 시작하는 숫자 위치를 사용하여 항목에 액세스합니다.
name.0
//:또는 이름을 사용하여 항목에 액세스 할 수 있습니다.
name.first
//:튜플을 만든 후에는 튜플 내부의 값을 변경할 수 있지만 값 유형 은 변경할 수 없습니다 .
//name = (first: "Justin", age: 25)
/*:
 ### [3.1 튜플과 배열이 어떻게 다른가?](https://www.hackingwithswift.com/quick-start/understanding-swift/how-are-tuples-different-from-arrays-in-swift)
 * 튜플과 배열 모두 하나의 변수에 여러 값을 보유 할 수 있지만 튜플은 변경할 수없는 고정 된 항목들을 보유 하지만 변수 배열에는 항목을 계속 추가 할 수 있습니다.
*/
//:예를 들어 웹 사이트를 저장하기 위해 가변 튜플을 원한다면 다음과 같이 작성할 수 있습니다.
var website = (name: "Apple", url: "www.apple.com")
//:여기에 마지막으로 방문한 사이트라는 것을 추가하고 싶다면 튜플은 불가능 하다. 이미 name 과 url 이라는 두개의 항목으로 고정되어 있다.
//:튜플의 값에 접근할때 각 항목마다 이름을 사용할 수 있다. website.name및 website.url
website.name
website.url
//: 이에 비해 배열을 원한다면 다음과 같이 작성했을 수 있습니다.
var website2 = ["Apple", "www.apple.com"]
//: 배열은 값에 접근할때 이름이 없습니다.
website2[0]
website2[1]
//:튜플의 또 다른 장점은 이름을 제공 할뿐만 아니라 type을 제공한다는 것 입니다 . 따라서 다음과 같은 튜플을 만들 수 있습니다.
var person = (name: "Paul", age: 40, isMarried: true)
//: 뒤에서 나올 Dictionaries는 이와비슷한 역할을 수행하는 세번째 선택지를 제공할 것이다.

//이제부터는 나한태 어렵다고 생각되지않으면 정리하지 않고 넘어가겠음, 직접 사이트에 가서 내용 확인 할 것
/*:
 ### [4. Arrays vs sets vs tuples](https://www.hackingwithswift.com/sixty/2/4/arrays-vs-sets-vs-tuples)
*/
/*:
 ### [4.1 각각 언제 사용해야 하나요?](https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-an-array-a-set-or-a-tuple-in-swift)
*/
/*:
 ### [5. Dictionary](https://www.hackingwithswift.com/sixty/2/5/dictionaries)
*/
/*:
 ### [5.1 왜 딕셔너리와 배열이 따로 있습니까?](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-dictionaries-as-well-as-arrays)
*/
/*:
 ### [6. Dictionary 기본값](https://www.hackingwithswift.com/sixty/2/6/dictionary-default-values)
*/
/*:
 ### [6.1 왜 딕셔너리에 기본값이 필요한가?](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-default-values-for-dictionaries)
*/
/*:
 ### [7. 비어있는 컬렉션 만들기](https://www.hackingwithswift.com/sixty/2/7/creating-empty-collections)
 * 배열이나 집합 딕셔너리는 값을 수집하기(?) 때문에 컬렉션이라고 합니다.
*/
/*:
 ### [7.1 빈 컬렉션을 만들고 싶은 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-create-an-empty-collection)
*/
/*:
 ### [8. Enumerations (열거형)](https://www.hackingwithswift.com/sixty/2/8/enumerations)
*/
/*:
 ### [8.1 열거형이 필요한 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-enums)
*/
/*:
 ### [9. Enum associated values (열거형 - 관련값)](https://www.hackingwithswift.com/sixty/2/9/enum-associated-values)
*/
/*:
 ### [9.1 열거형에 관련값을 사용하는 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-associate-a-value-with-an-enum-case)
*/
/*:
 ### [10. Enum raw values (열거형 - 원시값)](https://www.hackingwithswift.com/sixty/2/10/enum-raw-values)
*/
/*:
 ### [10.1 열거형에 원시값이 있는 이유](https://www.hackingwithswift.com/quick-start/understanding-swift/why-do-swifts-enums-have-raw-values)
*/
/*:
 ### [요약](https://www.hackingwithswift.com/sixty/2/11/complex-types-summary)
*/
