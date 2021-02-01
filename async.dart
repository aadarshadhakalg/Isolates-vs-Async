// Dart async is the dart language feature that comes with Dart SDK and doesnot require any third party
// plugins to work. To work in dart async we just need to import async package.

import 'dart:async';

Future<void> afterOneSec(String message) {
  print('Running Future 1');
  Future.delayed(Duration(seconds: 1), () {
    print(message);
  });
}

Future<void> afterTwoSec(String message) {
  print('Running Future 2');
  Future.delayed(Duration(seconds: 2), () {
    print(message);
  });
}

Future<void> afterThreeSec(String message) {
  print('Running Future 3');
  Future.delayed(Duration(seconds: 3), () {
    print(message);
  });
}

Future<void> afterFourSec(String message) {
  print('Running Future 4');
  Future.delayed(Duration(seconds: 4), () {
    print(message);
  });
}

void main() async {
  print('Ready!');

  afterOneSec('1 Second');
  afterTwoSec('2 Second');
  afterThreeSec('3 Second');
  afterFourSec('4 Second');
//
//  await afterOneSec('1 Second');
//  await afterTwoSec('2 Second');
//  await afterThreeSec('3 Second');
//  await afterFourSec('4 Second');
//
//  Future.delayed(Duration(seconds: 5), () {
//    print('Completed!');
//  });
}
