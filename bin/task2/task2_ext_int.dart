extension ExtInt on int{
  get x => null;

  bool isPowerOfTwo() {
    int n = this;
    if (n == 0) {
      return false;
    }
    while (n % 2 == 0) {
      n = n ~/ 2;
    }
    return n == 1;
  }

  bool isPowerOfTwo2(){
    if(this == 0){
      return false;
      int x = this;
    }
    return (x & (x - 1) == 0);
  }

  bool isPalindrome() {
    int n = this;
    int temp = n;
    int reminder = 0;
    int sum = 0;
    if(n > 0 && n < 10){
      return false;
    }
    while (n > 0) {
      reminder = n % 10;
      sum = (sum * 10) + reminder;
      n = n ~/ 10;
    }
    if (sum == temp) {
      return true;
    } else {
      return false;
    }
  }

  bool isPowerOfThree() {
    int n = this;
    if (n == 0) {
      return false;
    }
    while (n % 3 == 0) {
      n = n ~/ 3;
    }
    return n == 1;
  }

  bool isPowerOfFour() {
    int n = this;
    if (n == 0) {
      return false;
    }
    while (n % 4 == 0) {
      n = n ~/ 4;
    }
    return n == 1;
  }
}