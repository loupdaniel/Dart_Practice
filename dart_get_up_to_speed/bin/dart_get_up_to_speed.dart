import 'package:dart_get_up_to_speed/dart_get_up_to_speed.dart' as dart_get_up_to_speed;


/*void main(List<String> arguments) {
  /*String myString = 'Hello world';
  print(myString);
  print(myString.contains('Hello'));

  int myInteger = 5;
  print(myInteger.toString());
  print(myInteger.isEven);
  double myDouble = 5.5;

  num myNumber = 5.5;
  
  bool myBool = false;

  dynamic mySomething = 5;
  mySomething = 'Hello';
  mySomething = 'true';*/

  /*var myString = 'Hello world';
  print(myString);
  myString = 'Update!';*/

//variable that not wants to be reassignable. It can't be changed, nor mutated. Need to initialize them on the same line.
  /*final myString = 'Hello world';
  print(myString);*/
  //myString = 'Update!';
  //Whenever you just declare a variable but not initialize it immediately u should always use the type annotations(ex. String).

  /*String? possible = null; // type? means the type is nullable. For nullable type, null is a default value for a variable. So if u don't initialize it, it's the same as writing  = null
  print(possible?.length); // ?. means safe access operator, !. means unsafe access operator
  */

  /*
  int result;
  double resultDouble = 5 / 5;
  result = 5 ~/ 5;

  int x = 5;
  x++; // 6
  x--; // 5
  x = x + 5; // 10
  x += 5; // 15
  x -= 5; // 10
  x *= 5; // 50
  x ~/= 5; // 10

  bool isEqual = 5 == 10;
  bool isNot = 5 != 10;
  bool isBigger = 5 >= 10;
  bool isSmaller = 5 <= 10;

  //String Concatenate
  String myString = 'Hello ' + isEqual.toString();
  print(myString);

  //String Interpolation : use when u want to put some variable converted to a string inside some string that u want to display to ur user
  String myString1 = 'Hi $isEqual';
  print(myString1);

  //String Interpolation (multiple expressions ver.)
  String myString2 = 'Hi ${123 + 22 * 42}';
  print(myString2);
  */
/*
  final myInteger = 5;
  if (myInteger == 10) {
    print("It's ten!");
  } else if (myInteger == 9) {
    print("It's nine!");
  } else if (myInteger > 20) {
    print('Greater than twenty!');
  } else {
    print('Oh, something went wrong.');
  }

  switch (myInteger) {
    case 10:
      print("It's ten!");
      break;

    case 9:
      print("It's nine!");
      break;
    default:
      print('Oh, something went weird.');
      break;
  }

  for (int i = 0; i < 10; i++){
    print(i);
  }

  bool condition = false;
  while (condition) {
    print('Hello');
  }

  do {
    print('Hello');
  } while (false);
*/

  
  String returnStringNested() {
    return 'hello';
  }

  returnStringNested();
  print(returnString());
}

  // Top Level Function
String returnString() {
  return 'hello world';
}

 void otherFunction() {
   returnString();
}

void positionsParams(int x, double y, String greeting) {
  positionsParams(5, 3.5, 'hi'); // Dart finds out which variable u've passed in depending on the order.
}

// all of the optional ones have to come after the required ones
void optionalPositionalParams(int x, double y, [String greeting = 'hi' /*String? greeting*/ ]){
  optionalPositionalParams(5, 3.5);
  optionalPositionalParams(5, 3.5, 'hi, optionally');
}

//optional parpams must be nullable
void nameOptionalParams({
  int? x,
  double? y,
  String? greeting, //if u provide some sort of default value for a parameter, it doesn't have to be nullable. ex. String greeting = 'hi',
}) {
  nameOptionalParams(x: 5, greeting: 'hi', y: 3.5);
}

// named required parpams
void nameRequiredParams(
  int positional, {
  required int x,
  required double y,
  required String greeting,
}) {
  nameRequiredParams(10, x: 5, y: 3.5, greeting: 'hi');
}//provide arguments of positoinal parameter first, and then specify ur named parameters.*/

/*
void main(List<String> arguments) {
  int plusFive(int x) {
    return x + 5;
  }


  final twicePlusFive = twice(plusFive);
  final result = twicePlusFive(3);

  print(result);
}


int Function(int) twice(int Function(int) f) {
  return (int x) {
    return f(f(x));
  };
}
*/
/*
void main(List<String> arguments) {
  final twicePlusFive = twice((x) {return x + 5;});
  final result = twicePlusFive(3);

  print(result);
}


int Function(int) twice(int Function(int) f) {
  return (int x) {
    return f(f(x));
  };
} 
*/
/*
void main(List<String> arguments) {
  final twicePlusFive = twice((x) => x + 5);
  final result = twicePlusFive(3);

  print(result);
}


int Function(int) twice(int Function(int) f) {
  return (int x) {
    return f(f(x));
  };
}
*/

/*
void main(List<String> arguments) {
  final twicePlusFive = twice((x) => x + 5);
  final result = twicePlusFive(3);

  print(result);
}

typedef IntTransformer = int Function(int);

IntTransformer twice(IntTransformer f) {
  return (int x) {
    return f(f(x));
  };
}
*/
/*
void main(List<String> arguments) {
  List<int> myList = [1, 2, 3]; // No arrays in dart. There's nothing more low level than list.
  
  final firstElement = myList[0];

  final myList2 = [1, 2, 3];

  <int>[1, 2, 3];

  Map<String, dynamic> myMap = {
    'name': 'John Doe',
    'age': 42,
    'registered': true,
  };
  final name = myMap['name'];

  Set<int> mySet = {1, 2, 3, 2};
  print(mySet.length);
}*/

/*
void main(List<String> arguments) {
  final names = ['John', 'Jane', 'Matthew'];

/*
  final nameLengths = names.map((name) => name.length).toList();
  // Iterables cannot access any certain element on them. Write .toList() after map call to access elements.
  print(nameLengths[0]);
*/

/*
  final namesFiltered = names.where((name) => name.length == 4).toList();

  print(namesFiltered);


  for (int i = 0; i < namesFiltered.length; i++) {
    print(namesFiltered[i]);
  }


  for (final name in namesFiltered) {
    print(name);
  }

  //names.forEach((element) => print(element));
  //namesFiltered.forEach((name) => print(name));
  namesFiltered.forEach(print);
*/
/*
  bool isSignedIn = true;
  <String> [
    'This is a fake content.',
    if (isSignedIn) 'Signed Out' else 'Sign In'

  ];

  final x = <String>[
    for (int i = 0; i < 5 ; i++) i.toString(),
    for (final number in [1, 2, 3]) number.toString(),
  ];

  print(x);

  final list1 = ['hello', 'there'];
  final list2 = ['what', 'up'];
  final y = <String>[
    ...list1,
    ...list2,
  ]; //Spread Operator

  print(y);


}*/
*/

/*
enum AccountType {free, premium, vip}
void main(List<String> arguments) {
  //AccountType userAccountType = AccountType.premium;
  const userAccountType = AccountType.premium; //Like any normal variable in Dart, the variable declared with the final keyword can also infer the type of data it is going to store with the help of dartAnalyzer.

  print(userAccountType.index);
  AccountType.values[1];
  switch (userAccountType) {
    case AccountType.free:
      print('0 USD');
      break;
    case AccountType.premium:
      print('20 USD');
      break;
    default:
      break;
  }
}

//lints: ^2.0.0
//test: ^1.16.0
*/
/*
void main(List<String> arguments){
  User myUser = User(name: 'John Doe', photoUrl: 'http://example.com/abcd');
}

class User {
  String name;
  String photoUrl;

  User({
    required this.name,
    required this.photoUrl,
    
  });
}
*/
/*
void main() {
  late final String name;
  //do something, ex. go to api
  name = 'nico';
}*/
/*
late는 final 혹은 var 앞에 붙이는 수식어다.
late는 초기 데이터 없이 선언을 할 수 있게 해준다.

```dart
void main(){
late final String name;

name = "jisoung";
// 에러!
name = 16
}
```

late 변수는 값을 할당되기 전에는 접근할 수 없다.
late 변수는 data fetching을 할 때 매우 유용하게 사용된다.
왜냐하면 fianl 키워드를 혼자 사용하면 바로 선언을 해야하지만 late 키워드를 사용한다면 선언이 아닌 할당을 하더라도 그 변수의 수정을 막을 수 있기 때문이다.
*/

/*
dart의 상수는 자바스크립트와 다르다.
자바스크립트의 상수는 dart의 fianl과 같다.
dart의 const는 compoile-time constant를 만들어 준다.
const와 fianl의 가장 큰 차이점은 컴파일이 되는 시점에 그 값을 알 수 있는지 없는지의 차이다.

예를 들어 fetchApi를 하는 변수는 컴파일하는 시점에 그 변수를 알 수가 없다.

```dart
// 컴파일하는 시점에는 API의 값을 알 수 없다
const API = fetchAPI()
```

위 코드의 경우에는 const가 아닌 final이 더 적합하다.

final를 쓰는 대표적인 경우는
API fetching, 사용자가 화면에서 입력해야하는 값 등이 있다.

const를 쓰는 대표적인 경우는
max_allowed_price와 같은 상수에 쓰인다.
*/
/*
void main() {
  var giveMefive = true;
  var numbers = [1, 2, 3, 4, if(giveMefive) 5,];
  print(numbers);
}*/
/*
dark에서 lists를 선언하는 것은 두 가지 방법이 있다.
```dart
void main(){
int case1 = [1,2,3,4,5];
List case2 = [1,2,3,4,5];
}
```
만약 vscode나 dartPad를 사용한다면 맨 끝을 쉽표로 마무리하면 유용하다.
```dart
void main(){
int case1 = [
1,
2,
3,
4,
5,
];
}
```

dart의 유용한 점은 `collection if`와 `collection for`을 지원하는 것이다.

collection if를 사용하면 `존재할 수도 안할 수도 있는 요소를 가지고 올 수 있다.`

```dart
void main(){
var giveMeSix = true;
int case1 = [
1,
2,
3,
4,
5,
if(giveMeSix) 6,
];
// 아래와 같은 기능이다.
if(giveMeSix){
case1.add(6);
}
}
```*/

/*
string을 추가할 때 dart에서는 유용한 문법을 지원한다.
```dart
void main(){
var name = "jisoung";
var greeting = "Hello $name";
}
```
자바스크립트에 템플릿 리터럴과 매우 비슷한 문법이다.
dart에서 단순한 변수를 담고 싶다면 변수 앞에 $(달러)기호만 붙이면 된다.
만약 단순하지 않은 식을 담고 싶다면 ${} ```dart
void main(){
var name = "jisoung";
var age = 17;
var greeting = "Hello $name, age 2 years ago: ${age - 2}";
}
```
*/

/*
dart의 유용한 기능중 하나다.
전에 Collection If와 같이 배열안에 For문을 넣을 수 있는 기능이다.
대표적으로 UI를 만들 때 유용하게 사용된다.
예제를 보자.
```dart
void main(){
var persons = ['chanhong', 'hyeonseok', 'jisoung'];
var newPerson = [
'person: nico',
'person: lynn',
for(var person in persons) "person: $person"
];
print(newPerson);
}
```
결과는 다음과 같다.
```
[person: nico, person: lynn, person: chanhong, person: hyeonseok, person: jisoung]
```
*/

/*
map이란 js에 object, python에 dictionary와 같다.
예제를 보며 설명하겠다.
```dart
void main(){
var player = {
"name":"jisoung",
"age": 17,
"isLoveFlutter": true,
};
}
```
다음과 같은 코드가 있을 때 우리는 var로 선언한 변수의 타입을 지정해야 한다.
그러면 어떻게 타입을 지정해 줄 수 있을까? Map을 사용하면 손쉽게 지정해 줄 수 있다.

```dart
void main(){
Map player = {
"name":"jisoung",
"age": 17,
"isLoveFlutter": true,
};
}
```
Map안에 List를 넣어줄 수도 있다.
```dart
void main(){
Map, bool> player = {
[1,2,3,4,5]: true,
[6,7,8,9,10]: false,
};
}
```
*/

/*
Sets

Set에 속한 모든 아이템들이 유니크해야될 때 사용한다.
유니크할 필요가 없다면 List를 사용하면 된다.
```
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
set: 모든 아이템들이 유니크하다
ex) var numbers ={1,2,3}에 numbers.add(1)을 반복해도
값은 {1,2,3}으로 변하지 않는다
*/

/*
dart에서 함수는 다음과 같이 선언한다.
```
첫 번째 케이스
(반환 자료형) 함수이름(파라미터){}

두 번째 케이스
(반환 자료형) 함수이름(파라미터) => {}
```
```dart
// 첫 번째 케이스
String sayHello(String name) {
return "Hello $name";
}

void main(){
print(sayHello("jisoung"));
}
```
```dart
// 두 번째 케이스
String sayHello(String name) => return "Hello $name";

void main(){
print(sayHello("jisoung"));
}
```
*/

/*
다음 코드를 보자
```dart
String sayHello(String name, int age, String country) => return "Hello $name, age: $age, country $country";

void main(){
print(sayHello("jisoung", 17, "korea"));
}
```
위 코도는 문제가 있다. 저 17이 무슨 의미를 하는지 korea가 무슨 의미를 하는지 알 수가 없다.
이 문제를 해결하기 위해 dart에서는 named parameters를 지원한다.
```dart
String sayHello({
String name,
int age,
String country
}) => return "Hello $name, age: $age, country $country";

void main(){
print(sayHello({
name: "jisoung",
age: 17,
country: "korea",
});
}
```
required을 사용하면 null safety를 적용할 수 있다.(required를 쓰면 값이 반드시 있어야 한다.)
```dart
String sayHello({
required String name,
required int age,
required String country
}) => return "Hello $name, age: $age, country $country";

void main(){
print(sayHello({
name: "jisoung",
age: 17,
country: "korea",
});
}
```
*/
/*
그러면 파라미터에 옵셔널을 설정하려면 어떻게 해야 할까?
매우 간단하다. ?(물음표)를 타입 뒤에 붙이면 된다.
인자를 보내지 않아도 기본 값을 가지게 하려면 다음과 같이 하면 된다.
```dart
String sayHello(
String name,
int age,
// default value
[String? country = "korea"],
) => return "Hello $name, age: $age, country $country";

void main(){
print(sayHello({
name: "jisoung",
age: 17,
country: "korea",
});
}
```

Dart에서 [] 은 optional, positional parameter를 명시할 때 사용된다.
name, age는 필수값이고 []를 통해 country를 optional값으로 지정해줄 수 있다.

```
String sayHello(String name, int age, [String? country = ""]) {
return 'Hello ${name}, You are ${age} from the ${country}';
}

void main() {
var result = sayHello("sugar", 10);
print(result);
}
```
*/

/*
String capitalizeName(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'ANON';
}
*/
/*
String capitalizeName(String? name) =>
  name != null ? name.toUpperCase() : 'ANON';
*/
/*
String capitalizeName(String? name) =>
  name?.toUpperCase() ?? 'ANON';

void main() {
  capitalizeName('nico');
  capitalizeName(null);
}*/
/*
void main() {
  String? name;
  name ??= 'nico';
  name = null;
  name ??= 'another';
  print(name);
}
*/

/*
## QQ Operator
### QQ question operator
다음 코드를 보자
```dart
String upperName(String name) => name.toUpperCase();

void main(){
upperName('jisoung');
upperName(null); // Error!
}
```
위 코드는 인자 값이 null 인것을 허용하지 않는다.
다음과 같이 고칠 수 있다.
```dart
String upperName(String? name){
if(name != null){
return name.toUpperCase();
}
return 'NONE';
}
```
위 코드를 더 짧게 만들 수 있다.
```dart
String upperName(String? name) => name != null name.toUpperCase() : "NONE";
```
하지만 dart에서는 위와 같은 코드를 더욱 짧게 할 수 있다
```dart
String upperName(String? name) => name?.toUpperCase() ?? "NONE";
```
??(QQ)의 뜻은 만약 왼쪽의 있는 값이 Null이라면 오른쪽 값을 return 시킨다는 것이다.
쉽게 말해서 위 코드를 보면 name.toUpperCase()를 리턴할 것이다.
그런데 만약 name이 null이여서 toUpperCase()를 실행할 수 없다면 "NONE"을 리턴하는 것이다.
name에 ?(옵셔널)을 붙인 이유는 name이 null일 수도 있기 때문이다.
### QQ equal
다음 코드를 보자, 이번 개념은 정말 쉽다.
```dart
void main(){
String? name;
// 만약 name이 null인 경우 할당한다.
name ??= 'jisoung';
}
```
QQ Operator는 flutter에서 자주 사용된다.
*/

/*
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reverseListOfNumbers([1, 2, 3]));
}

typedef를 이용하면 자료형을 간편하게 작성할 수 있다.
다음과 같은 코드를 typedef를 사용해서 간편하게 작성해 볼 것이다.
```dart
// 전
List reverseListOfNumbers(List list) {
var reversed = list.reversed;
return reversed.toList();
}
```
```dart
// 후
typedef ListOfInts = List;

ListOfInts reverseListOfNumbers(ListOfInts list) {
var reversed = list.reversed;
return reversed.toList();
}
```
*/

/*
dart에서 property를 선언할 때는 타입을 사용해서 정의한다.
```dart
class Player {
final String name = 'jisoung';
final int age = 17;
void sayName(){
// class method안에서는 this를 쓰지 않는 것을 권장한다.
print("Hi my name is $name")
}
}

void main(){
// new를 꼭 붙이지 않아도 된다.
var player =Player();
}
```
*/
/*
class Player {
  late final String name;
  late int xp = 150;

  Player(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print("Hi my naem is $name");
  }
}
*/
/*
class Player {
  final String name;
  int xp = 150;

  Player(this.name, this.xp);

  void sayHello() {
    print("Hi my naem is $name");
  }
}
void main() {
  var player = Player("nico", 1500);
  player.sayHello();
  var player2 = Player("lynn", 2500); 
  player2.sayHello();
}

dart에서 생성자(constructor) 함수는 클래스 이름과 같아야 한다.

```dart
class Player {
// 이럴 때 late를 사용한다.
late final String name;
late final int age;
// 클래스 이름과 같아야한다!
Player(String name){
this.name = name;
}
}

void main(){
// Player 클래스의 인스턴스 생성!
var player = Player("jisoung", 1500);
```

위의 생성자 함수는 다음과 같이 줄일 수 있다.
```dart
// 생략
Player(this.name, this.age);
```
첫 번째 인자는 this.name으로 두 번째 인자는 this.age로 갈 것이다.
*/

/*
class Player {
  final String name;
  int xp = 150;
  String team;
  int age;

  Player({this.name, this.xp, this.team, this.age});

  void sayHello() {
    print("Hi my naem is $name");
  }
}
void main() {
  var player = Player("nico", 1500);
  player.sayHello();
  var player2 = Player("lynn", 2500); 
  player2.sayHello();
}

클래스가 거대해질 경우 위와 같이 생성자 함수를 만드는 것은 비효율적일 것이다.
예를 들어보자
```dart
class Team {
final String name;
int age;
String description;

Team(this.name, this.age, this.description);
}

void main(){
// 헉 너무 많은 인자를 받아야 해서 햇갈린다.
// 거기다 각 인자의 의미를 알 수가 없다.
var myTeam = Team("jisoung", 17, "Happy coding is end coding");
```

이 문제를 해결할려면 너무 간단하다.
첫 번째는 중괄호({})를 이용하는 것이다.

```dart
class Team {
final String name;
int age;
String description;

Team({this.name, this.age, this.description});
}

void main(){
// 한 눈에 볼 수 있다.
var player = Player(
name: "jisoung",
age: 17,
description: "Happy coding is end coding"
}
}
```
두 번째는 name parameter를 사용하는 것이다.
```dart
// 생략
Player(name:"jisoung", age: 17, description: "Happy coding is end coding");
```
하지만 여기에는 큰 문제가 있다.
변수가 null일 수도 있기 때문에 우리는 이걸 required를 이용하거나 기본 값을 줘서 처리해 줘야한다. 우리는 required를 사용할 것이다.

```dart
// 생략
Team({
required this.name,
required this.age,
required this.description,
});,
```
훨씬 좋아졌다.
*/
/*
class Player {
  final dynamic name;
  dynamic xp;
  dynamic team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var apiData = [
    {
      "name": "nico",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "lynn",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "dal",
      "team": "red",
      "xp": 0,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
   });
}
*/
/*
class Player {
  String name;
  int xp;
  String team;

  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var nico = Player(name: 'nico', xp: 1200, team: 'red')
  ..name = 'las'
  ..xp = 12000000
  ..team = 'blue'
  ..sayHello();
}

예제를 보자
```dart
// 생략
void main(){
var jisoung = Player(name: "jisoung", age: 17, description: "Happy code is end coding");
jisoung.name = "nico";
jisoung = 20;
jisoung.description = "Best Project is End Project";
}
```
위를 보면 반복되는 부분이 있다. dart에서는 이걸 간단하게 ..으로 해결할 수 있다.
```dart
// 생략
void main(){
var jisoung = Player(name: "jisoung", age: 17, description: "Happy code is end coding");
...name = "nico"
..age = 20
..description = "Best Project is End Project";
}
```
각 '..'들은 jisoung을 가리킨다. 매우 유용한 operator이다.
앞에 class가 있다면 그 클래스를 가리킨다.
*/

/*
enum Team { red, blue }
enum XPLevel { beginner, medium, pro }

class Player {
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var nico = Player(
    name: 'nico',
    xp: XPLevel.medium,
    team: Team.red,
  );
  var potato = nico
    ..name = 'las'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
}

enum은 우리가 실수하지 않도록 도와주는 타입이다.
dart에서 enum type을 만드는 법은 다음과 같다
```dart
enum Team {
red,
blue,
}
class Player {
String name;
int age;
Team team;

Player({
required this.name,
required this.age,
required this.team,
});
}

void main(){
var jisoung = Player(name: "jisoung", age: 17, team: Team.red);
var sushi = jisoung
..name = "sushi"
..age = 12
..team = Team.blue;
```
*/

/*
abstract class Human {
  void walk();
}

enum Team { red, blue }
enum XPLevel { beginner, medium, pro }

class Player extends Human{
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print('Im Walking');
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var nico = Player(
    name: 'nico',
    xp: XPLevel.medium,
    team: Team.red,
  );
  var potato = nico
    ..name = 'las'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
}

추상화 클래스는 다른 클래스들이 직접 구현 해야하는 메소드들을 모아놓은 일종의 `청사진`이라 보면 된다.
추상 클래스에서는 기능을 구현하지 않는다.
```dart
abstract class Human {
void walk();
}
```
extends를 이용해 상속, 확장을 할 수 있다.
```dart
abstract class Human {
void walk();
}
class Player extends Human {
// 생략
void walk(){
print("working!");
}
}
```
*/
/*
class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name
  }) : super(name: name);

  @override
  void sayHello()
  {
    super.sayHello();
    print('and I play for ${team}');
  }
}
void main() {
  var player = Player(team: Team.red, name:'nico');
}

//super. allows u to call the methods or to access the properties of the class that u extended from.

Human class가 있고,
이것의 constructor에서
Human({required this.name});
처럼 {객체}형태의 파라미터로 선언된 경우면(named 파라미터를 사용할 경우에는),

Human을 상속받는 class에서 constructor를 구성할 때

class Player extends Human {
final Team team;
Player({required this.team, required String name})
: super(name: name);
// super를 써서 Human의 name을 사용하려면 argument는 객체를 입력하는 형태 name: name 이 되어야 되고

-----

class Human {
final String name;
Human(this.name);
//positional 파라미터를 사용해서 그냥 변수형태라면

이것을 상속받는 클래스에서는
class Player extends Human {
final Team team;
Player({required this.team, required String name})
: super(name);
// super를 써서 Human의 name을 사용하려면, 지금은 그냥 argument 들어간다.

상속을 하고 super를 이용해 부모 클래스의 생성자를 호출할 수 있다.
```dart
class Human {
final String name;
Human(this.name); // 호출 받는다.
void sayHello(){
print("Hello! $name");
}
}

class Player extends Human {
Player({
required this.team,
required String name
}) : super(name: name);
// Human의 생성자 함수를 호출한다.
}
```
@override를 이용해 부모 클래스의 객체를 받아올 수 있다.
```dart
// 생략
@override
void sayHello(){
super.sayHello();
}
```
*/

/*
class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuun!");
  }
}


class Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(
    team: Team.red,
  );
  player.runQuick();
}

## Mixins
Mixin은 생성자가 없는 클래스를 의미한다.
Mixin 클래스는 상속을 할 때 extends를 하지 않고 with 를 사용한다.
Mixin의 핵심은 여러 클래스에 재사용이 가능하다는 점이다.
```dart
class Tall {
final double tall = "190.00"
}

class Human with Tail {
// 생략
}
```
extends와 차이점은 extend를 하게 되면 확장한 그 클래스는 부모 클래스가 되지만 with는 부모의 인스턴스 관계가 된다. 단순하게 mixin 내부의 프로퍼티를 갖고 오는 거라고 생각하면 쉽다.
*/