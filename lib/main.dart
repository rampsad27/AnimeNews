import 'package:aniime_news/di/fcm_notification_helper.dart';
import 'package:aniime_news/di/service_locator.dart';
import 'package:aniime_news/firebase_options.dart';
import 'package:aniime_news/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setup();
  getIt.get<FCMNotificationHelper>().init();
  onBgMessage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
    );
  }
}
