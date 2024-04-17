import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../services/app_service.dart';

abstract class DependencyInjection {
//final locator = GetIt.instance;

  static void initialize() {
    debugPrint("setup is called");
    GetIt.instance.registerSingleton<AppService>(AppService());
  }
}
