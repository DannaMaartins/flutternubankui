import 'package:flutter/material.dart';

class ActionBtn{
  Icon icon;
  String text;
  Function onPressd;
  
  ActionBtn(this.icon, this.text, this.onPressd);
}