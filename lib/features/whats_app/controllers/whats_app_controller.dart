

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

class WhatsAppController extends GetxController{

  final messageTEController = TextEditingController();
  final myBox = Hive.box("nifat");
  var imagePath = "".obs;

  void pickImage() async{
    final picker = ImagePicker();

    final image = await picker.pickImage(source: ImageSource.camera);

    if(image != null){
      imagePath.value = image.path;
    }
  }

  void submitAndPrint() {
    final list = ["nifat", 'mahin'];
    final list1 = [
      {
        "name" : "Nifat",
        "password" : "Nifat",
      },
      {
        "name" : "Mahin",
        "password" : "Mahin",
      },
    ];

    myBox.put("message", messageTEController.text);
    myBox.put("list", list1.toList());

    // final String fetchedMessage = myBox.get("list")??"";
    //
    //  print(fetchedMessage.split(",").toList());
    final List<Map<String, dynamic>> fetchedMessage = myBox.get("list");
    log(fetchedMessage[0]['name']);

  }
}