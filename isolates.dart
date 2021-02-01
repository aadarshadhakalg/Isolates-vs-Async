// Dart isolates is the dart language feature that comes with Dart SDK and doesnot require any third party
// plugins to work. To work in dart isolates we just need to import Isolates package.

import 'dart:isolate';


// This Function takes total of 1 second to complete. After the function is triggered it waits for 1 second and 
// then print the provided message in the console i.e 1 Second
void afterOneSec(String message) {
  print('Running Isolate 1');
  Future.delayed(Duration(seconds: 1), () {
    print(message);
  });
}

// This Function takes total of 2 second to complete. After the function is triggered it waits for 2 second and 
// then print the provided message in the console i.e 2 Second
void afterTwoSec(String message) {
  print('Running Isolate 2');
  Future.delayed(Duration(seconds: 2), () {
    print(message);
  });
}

// This Function takes total of 3 second to complete. After the function is triggered it waits for 3 second and 
// then print the provided message in the console i.e 3 Second
void afterThreeSec(String message) {
  print('Running Isolate 3');
  Future.delayed(Duration(seconds: 3), () {
    print(message);
  });
}

// This Function takes total of 4 second to complete. After the function is triggered it waits for 4 second and 
// then print the provided message in the console i.e 4 Second
void afterFourSec(String message) {
  print('Running Isolate 4');
  Future.delayed(Duration(seconds: 4), () {
    print(message);
  });
}

void main() {

// Prints Ready text initially.
  print('Ready!');

// The next four lines creates four different isolates. Each Isolate has its own event loop.
// Isolates doesnot share memory between one another and the main isolates ( Every Dart program runs
// in a simgle isolate by default i.e main isolate ). Isolates may not run in the defined order.
  Isolate.spawn(afterOneSec, '1 Second');
  Isolate.spawn(afterTwoSec, '2 Second');
  Isolate.spawn(afterThreeSec, '3 Second');
  Isolate.spawn(afterFourSec, '4 Second');

// Since Isolates has nothing shared between and runs independently as it's name suggests,
// the main isolate (Main Function ) may terminate first then the other isolates created from the main isolate. 

// The below code makes the main isolate waits for the completion of processes in other isolates. 

// If we comment down this block, our program will end without printing messages from the other isolates.

  Future.delayed(Duration(seconds: 5), () {
    print('Completed!');
  });

// Dart isolates are used for parallel programming. In some cases we may have to do some heavy computation. 
// If we did that in the main isolate then it may block the path for the other stuffs which we may not want. 
// So we can run such computation is a separate isolated. Although the memory beteen isolates are not shared
// we can pass data back and forth from the isolates. 

// There may many dart isolates. Dart isolate can or can not run in different CPU thread. 
}
