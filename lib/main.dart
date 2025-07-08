import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'app.dart';
import 'core/services/Auth_service.dart';
import 'core/utils/logging/loggerformain.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AuthService.init();
  await Hive.initFlutter();
  var box = await Hive.openBox("nifat");
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
        (value) {
      Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
      runApp(const MyApp());
    },
  );
}
