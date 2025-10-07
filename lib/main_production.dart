import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templatemoh/core/DI/dependency_injection.dart';
import 'package:templatemoh/core/routing/app_router.dart' show AppRouter;
import 'package:templatemoh/doc_app.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
