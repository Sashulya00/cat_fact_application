import 'package:cat_fact_application/cats_fact_application.dart';
import 'package:cat_fact_application/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();
  runApp(const CatsFactApplication());
}
