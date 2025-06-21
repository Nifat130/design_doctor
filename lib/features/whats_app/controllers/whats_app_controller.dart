

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class WhatsAppController extends GetxController{

  final messageTEController = TextEditingController();
  var imagePath = "".obs;

  void pickImage() async{
    final picker = ImagePicker();

    final image = await picker.pickImage(source: ImageSource.camera);

    if(image != null){
      imagePath.value = image.path;
    }
  }
}