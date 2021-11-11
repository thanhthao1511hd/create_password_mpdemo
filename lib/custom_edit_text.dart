import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  bool isButtonActive=true;
  late TextEditingController controller;
  late TextEditingController controller2;
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
            padding: EdgeInsets.only(bottom: 24),
            child: TextField(
              controller: controller,
              autofocus: false,
              style: const TextStyle(fontFamily: "Roboto-Regular", fontSize: 16),
              keyboardType: inputType ?? TextInputType.text,
              onChanged: onTextChange,
              decoration: InputDecoration(
                  labelText: "Nhập mật khẩu",
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
          ),
          Container(
            padding: EdgeInsets.only(bottom: 48),
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
          ),
          Container(
            child: Center(
                child: ElevatedButton(
                    onPressed: isButtonActive ? (){
                      setState(() {
                        isButtonActive=false;
                      });
                    }: null,
                    child: Text("Đổi mật khẩu"))
            )
          )

        ],
      ),
    ));
  }
}
