import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomEditText extends StatelessWidget {

  final String hint;
  final onTextChange;
  final bool isRequired;
  final errorText;
  final inputType;
  final textController;
  final String textInit;

  const CustomEditText({
     required this.hint, this.onTextChange, this.isRequired=false,
    this.errorText, this.inputType, this.textController, this.textInit =""
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: textController,
            autofocus: false,
            style: TextStyle(fontFamily: "Roboto-Regular", fontSize: 16),
            keyboardType: inputType ?? TextInputType.number,
            onChanged: onTextChange,
            decoration: InputDecoration(
              hintText: hint,

            ),
          )
        ],
      ),
    );
  }
}
