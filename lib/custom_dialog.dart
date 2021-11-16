import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }
}

_buildChild(BuildContext context) => Container(
  height: 204,
  width: 295,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16)
  ),
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
              Image.asset("assets/images/img_success.png", height: 88, width: 88,),
              const Padding(padding: EdgeInsets.only(bottom: 16)),
              const Text("Đổi mật khẩu thành công", style: TextStyle(fontFamily: "Roboto-Regular", fontSize: 15, color: Colors.black),)

        ],
    ),
  )

);
