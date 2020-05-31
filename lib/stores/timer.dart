import 'dart:async';

import 'package:mobx/mobx.dart';

part 'timer.g.dart';

class TimerStore = _Timer with _$TimerStore;

abstract class _Timer with Store {
  @observable
  bool isStart = true;
  @observable
  bool isStop = true;
  @observable
  bool isReset = true;
  @observable
  String timerText = '0:00:00';
  @observable
  var sw = Stopwatch();
  @observable
  var duration = const Duration(seconds: 1);

  @action
  void startTimer() {
    Timer(duration, running);
  }

  @action
  void running() {
    if (sw.isRunning) {
      startTimer();
    }
    timerText = sw.elapsed.inHours.toString().padLeft(2, '0') +
        ':' +
        (sw.elapsed.inMinutes % 60).toString().padLeft(2, '0') +
        ':' +
        (sw.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  @action
  void start() {
    isStart = false;
    isStop = false;
    isReset = true;
    sw.start();
    startTimer();
    print('started');
  }

  @action
  void stop() {
    isStart = true;
    isStop = true;
    isReset = false;
    sw.stop();
    print('stopped');
  }

  @action
  void reset() {
    isReset = true;
    sw.reset();
    timerText = '0:00:00';
    print('reseted');
  }
}
