import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Notify {

  final isIconPlay = false.obs;

  void setIconPlay(bool value){
    isIconPlay.value = value;
  }
}
