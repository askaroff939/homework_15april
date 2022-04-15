import 'dart:math';
import 'task2/task2_ext_int.dart';


void main() async{
  late int number = 8;
  print(number.isPowerOfTwo());
  print(number.isPalindrome());
  print(number.isPowerOfThree());
  print(number.isPowerOfFour());

  final number2 = randomNumbers();
  await for(int item in number2){
    List list1 =  ["\n||===========================================================||"
        "\n|| CИМВОЛ\tПОСЛЕДНЯЯ ЦЕНА\tИЗМЕНЕНИЯ ЗА 24Ч\tОБЬЕМ ЗА 24Ч ||"
        "\n|| BTC/USD\t\t40.200\t\t\t-2.94%\t\t\t\t   103$item ||"
        "\n||===========================================================||\n"
    ];
    print(list1);
  }
}

Stream<int> randomNumbers() async* {
  final random = Random();

  for (var i = 10; i < 100; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield random.nextInt(90) + 1;
  }
}