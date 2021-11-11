import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomEditText2 extends StatefulWidget {
  const CustomEditText2({Key? key}) : super(key: key);

  @override
  _CustomEditTextState2 createState() => _CustomEditTextState2(hint: "Xác nhận mật khẩu");
}

class _CustomEditTextState2 extends State<CustomEditText2> {
  final String hint;
  final onTextChange;
  final bool isRequired;
  final errorText;
  final inputType;
  final textController;
  final String textInit;

  _CustomEditTextState2(
      {required this.hint,
        this.onTextChange,
        this.isRequired = false,
        this.errorText,
        this.inputType,
        this.textController,
        this.textInit = ""});
  bool _showPassword = true;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              TextField(
                //controller: textController,
                autofocus: false,
                style: const TextStyle(fontFamily: "Roboto-Regular", fontSize: 16),
                keyboardType: inputType ?? TextInputType.text,
                onChanged: onTextChange,
                decoration: InputDecoration(
                    labelText: hint,
                    fillColor: Colors.black12,
                    filled: true,
                    enabledBorder: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(width: 1)
                    ),

                    suffixIcon: IconButton(
                      icon: Icon(_showPassword
                          ? Icons.visibility_off : Icons.remove_red_eye),
                      onPressed: () {
                        setState((){
                          _showPassword=!_showPassword;
                        });

                      },
                    )),
                obscureText: _showPassword,
                maxLines: 1,
              ),
            ],
          ),
        ));
  }
}
