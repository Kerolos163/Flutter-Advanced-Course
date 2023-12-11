import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? argumant}) {
    return Navigator.of(this).pushNamed(routeName, arguments: argumant);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? argumant}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: argumant);
  }

  void pop() {
    return Navigator.pop(this);
  }
}
