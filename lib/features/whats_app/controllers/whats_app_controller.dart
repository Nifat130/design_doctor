

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
     myBox.put("message", messageTEController.text);
     final fetchedMessage = myBox.get("message");

     log(fetchedMessage);
  }
}