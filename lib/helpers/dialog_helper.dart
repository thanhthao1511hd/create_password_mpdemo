import 'dart:ffi';

import 'package:create_password_mpdemo/custom_dialog.dart';
import 'package:flutter/material.dart';

class DialogHelper{
  static exit(context) => showDialog(context: context, builder: (context) => CustomDialog());
}