import 'package:app/core/di/dependency_injection.dart';
import 'package:app/core/routing/app_router.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/shoes_app.dart';
import 'package:flutter/material.dart';

void main() {
  setUpGetIt();
  runApp(ShoesApp(appRouter: AppRouter()));
}
