

import 'package:design_doctor/features/finance_app/starting/presentation/screens/starting_screen.dart';
import 'package:design_doctor/features/whats_app/presentation/screens/wa_chat_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../features/coffee_app_design/onboarding/presentation/coffee_onboarding_screen.dart';

class AppRoute {
  static String init = "/";
  static String whatsAppChatScreen = "/whatsAppChatScreen";

  // Finance App
  static String financeAppStartingScreen = "/financeAppStartingScreen";


  // Coffee App
  static String coffeeOnboardingScreen = "/coffeeOnboardingScreen";





  static List<GetPage> routes = [
    GetPage(name: whatsAppChatScreen, page: () => WhatsAppChatScreen(),),

    // Finance App
    GetPage(name: financeAppStartingScreen, page: () => StartingScreen(),),


    // Coffee App
    GetPage(name: coffeeOnboardingScreen, page: () => CoffeeOnboardingScreen(),),

  ];
}