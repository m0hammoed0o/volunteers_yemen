import 'package:flutter/material.dart';
import 'package:volunteers_yemen/App_packages/App_packages.dart';
import 'package:volunteers_yemen/core/utils/size_utils.dart';
import 'package:volunteers_yemen/generated/l10n.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/Pages.dart/log_in_page_tab_container_screen.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale('en'); // لغة افتراضية

  void _changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          locale: _locale,

          fallbackLocale: Locale('en'),

          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,

          themeMode: ThemeMode.system,
          title: 'Volunteers.ye',
          debugShowCheckedModeBanner: false,
          // initialRoute: AppRoutes.StartApp,
          // routes: AppRoutes.routes,
          home: LogInPageTabContainerScreen(),
        );
      },
    );
  }
}
