

import 'package:design_doctor/features/whats_app/presentation/screens/wa_chat_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AppRoute {
  static String init = "/";
  static String whatsAppChatScreen = "/whatsAppChatScreen";





  static List<GetPage> routes = [
    GetPage(name: whatsAppChatScreen, page: () => WhatsAppChatScreen(),),

  ];
}