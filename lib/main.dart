import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jejuya/app/app.dart';
import 'package:jejuya/app/core_impl/di/injector_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:jejuya/app/layers/data/sources/local/model/hotel/hotel.dart';
import 'package:jejuya/firebase_options.dart';

Future<void> main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Set system UI mode for Android devices
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (GetPlatform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
    );
  }

  await Hive.initFlutter();

  // Register adapters
  Hive.registerAdapter(HotelAdapter());

  runApp(
    FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done ||
            snapshot.hasError) {
          return const SizedBox.shrink();
        }
        return const App();
      },
      future: Future(() async {
        await inj.initialize();
      }),
    ),
  );
}
