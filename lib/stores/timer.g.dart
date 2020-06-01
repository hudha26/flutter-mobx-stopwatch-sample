// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TimerStore on _Timer, Store {
  final _$isStartAtom = Atom(name: '_Timer.isStart');

  @override
  bool get isStart {
    _$isStartAtom.reportRead();
    return super.isStart;
  }

  @override
  set isStart(bool value) {
    _$isStartAtom.reportWrite(value, super.isStart, () {
      super.isStart = value;
    });
  }

  final _$isStopAtom = Atom(name: '_Timer.isStop');

  @override
  bool get isStop {
    _$isStopAtom.reportRead();
    return super.isStop;
  }

  @override
  set isStop(bool value) {
    _$isStopAtom.reportWrite(value, super.isStop, () {
      super.isStop = value;
    });
  }

  final _$isResetAtom = Atom(name: '_Timer.isReset');

  @override
  bool get isReset {
    _$isResetAtom.reportRead();
    return super.isReset;
  }

  @override
  set isReset(bool value) {
    _$isResetAtom.reportWrite(value, super.isReset, () {
      super.isReset = value;
    });
  }

  final _$timerTextAtom = Atom(name: '_Timer.timerText');

  @override
  String get timerText {
    _$timerTextAtom.reportRead();
    return super.timerText;
  }

  @override
  set timerText(String value) {
    _$timerTextAtom.reportWrite(value, super.timerText, () {
      super.timerText = value;
    });
  }

  final _$_TimerActionController = ActionController(name: '_Timer');

  @override
  void startTimer() {
    final _$actionInfo =
        _$_TimerActionController.startAction(name: '_Timer.startTimer');
    try {
      return super.startTimer();
    } finally {
      _$_TimerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void running() {
    final _$actionInfo =
        _$_TimerActionController.startAction(name: '_Timer.running');
    try {
      return super.running();
    } finally {
      _$_TimerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void start() {
    final _$actionInfo =
        _$_TimerActionController.startAction(name: '_Timer.start');
    try {
      return super.start();
    } finally {
      _$_TimerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo =
        _$_TimerActionController.startAction(name: '_Timer.stop');
    try {
      return super.stop();
    } finally {
      _$_TimerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo =
        _$_TimerActionController.startAction(name: '_Timer.reset');
    try {
      return super.reset();
    } finally {
      _$_TimerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isStart: ${isStart},
isStop: ${isStop},
isReset: ${isReset},
timerText: ${timerText}
    ''';
  }
}
