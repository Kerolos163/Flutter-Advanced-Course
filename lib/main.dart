import 'package:flutter/material.dart';
import 'Core/di/dependency_injection.dart';
import 'doc_app.dart';

void main() {
  setupGetIt();
  runApp(const DocApp());
}
