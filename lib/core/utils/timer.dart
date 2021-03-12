import 'dart:async';

startTimer(Duration duration, Function onDone) {
  Timer.periodic(duration, onDone);
}
