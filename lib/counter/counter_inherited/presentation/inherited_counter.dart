import 'package:flutter/material.dart';

class InheritedCounter extends InheritedWidget {
  const InheritedCounter({
    Key? key,
    required this.value,
    required super.child,
  }) : super(key: key);

  final int value;

  static InheritedCounter? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  }

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) {
    return value != oldWidget.value;
  }
}
