import 'dart:async';

import 'package:create_password_mpdemo/helpers/dialog_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomEditText extends StatefulWidget {
  const CustomEditText({Key? key}) : super(key: key);

  @override
  _CustomEditTextState createState() => _CustomEditTextState(hint: "Nhập mật khẩu");
}

class _CustomEditTextState extends State<CustomEditText> {
  final String hint;
  final onTextChange;
  final bool isRequired;
  final errorText;
  final inputType;
  final textController;
  final String textInit;


  _CustomEditTextState(
      {required this.hint,
      this.onTextChange,
      this.isRequired = false,
      this.errorText,
      this.inputType,
      this.textController,
      this.textInit = ""});
  bool _showPassword = true;
  bool _showPassword1 = true;
  bool isButtonActive=true;
  late TextEditingController controller;
  late TextEditingController controller2;
  var focus = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=TextEditingController();
    controller2=TextEditingController();
    controller.addListener(() {
      final isButtonActive =controller.text.isNotEmpty;
      setState(() {
        this.isButtonActive=isButtonActive;
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Container(
      padding: EdgeInsets.only(top: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Container(
            child: Focus(
              onFocusChange: (focus) {
                setState(() {
                  this.focus = focus;
                });
              },
              child: TextField(
                controller: controller,
                autofocus: false,
                style: const TextStyle(fontFamily: "Roboto-Regular", fontSize: 16),
                keyboardType: inputType ?? TextInputType.text,
                onChanged: (text) {
                  print(text);
                },
                decoration: InputDecoration(
                    hintText: "Nhập mật khẩu",
                    fillColor: Colors.black12,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(width: 1,  color: Colors.white)
                    ),

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(width: 1, color: Colors.black)
                    ),
                    suffixIcon: IconButton(
                      icon: _showPassword
                          ? SvgPicture.asset('assets/icons/ic_eye_closed.svg') : SvgPicture.asset('assets/icons/ic_eye.svg'),
                      onPressed: () {
                        setState((){
                          _showPassword=!_showPassword;
                        });

                      },
                    )),
                obscureText: _showPassword,
                maxLines: 1,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 48, top: 24),
            child: TextField(
              controller: controller2,
              autofocus: false,
              style: const TextStyle(fontFamily: "Roboto-Regular", fontSize: 16),
              keyboardType: inputType ?? TextInputType.text,
              onChanged: onTextChange,
              decoration: InputDecoration(
                  labelText: "Xác nhận mật khẩu",
                  fillColor: Colors.black12,
                  filled: true,
                  enabledBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(width: 1)
                  ),

                  suffixIcon: IconButton(
                    icon:_showPassword1 ? SvgPicture.asset("assets/icons/ic_eye_closed.svg") : SvgPicture.asset("assets/icons/ic_eye.svg"),
                    onPressed: () {
                      setState((){
                        _showPassword1=!_showPassword1;
                      });

                    },
                  )),
              obscureText: _showPassword1,
              maxLines: 1,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 105, right: 105),
            height: 44,
            width: 166
           ,
            child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    onPrimary: Colors.white,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22)))
                  ),
                    onPressed: isButtonActive ? (){
                      DialogHelper.exit(context);
                      setState(() {
                        isButtonActive=false;
                      });
                    }: null,
                    child: const Text("Đổi mật khẩu", style: TextStyle(color: Colors.white, fontFamily: "Roboto", fontSize: 15),))
            )
          )

        ],
      ),
    ));
  }
}
