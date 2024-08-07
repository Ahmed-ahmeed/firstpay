import 'package:firstpay/features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // الإنجليزية
        const Locale('ar', ''), // العربية
        // أضف لغات أخرى إذا لزم الأمر
      ],
      locale: Locale('ar'), // لغة التطبيق الافتراضية (العربية)
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
