import 'package:flutter/material.dart';
import 'package:templatemoh/core/DI/dependency_injection.dart';
import 'package:templatemoh/core/routing/app_router.dart' show AppRouter;
import 'package:templatemoh/doc_App.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
