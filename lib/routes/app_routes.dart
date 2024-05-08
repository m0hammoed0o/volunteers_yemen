import 'package:flutter/material.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/Pages.dart/log_Organization_page.dart';
import 'package:volunteers_yemen/volunteers_yemen_Screens/Pages.dart/log_Vounteers_page.dart';

import '../volunteers_yemen_Screens/Pages.dart/log_in_page_tab_container_screen.dart';

class AppRoutes {
  static const String logInPageTabContainerScreen =
      '/log_in_page_tab_container_screen';
  static const String logOrganizationpage = '/log_Organization_page';
  static const String logVounteerspage = '/log_Vounteers_page';

  static Map<String, WidgetBuilder> routes = {
    //---Login_Screen
    logInPageTabContainerScreen: (context) => LogInPageTabContainerScreen(),
    logOrganizationpage: (context) => Log_Organization_Page(),
    logVounteerspage: (context) => Log_Vounteers_Page(),
  };
}
