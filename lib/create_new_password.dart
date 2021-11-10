import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_edit_text.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          size: 24,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 10.38)),
              const Image(
                image: AssetImage("assets/images/img_key.png"),
                width: 144,
                height: 144,
              ),
              const Text(
                "Tạo mật khẩu",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "Roboto"),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(top: 8),
                height: 80,
                width: 295,
                child: const Text(
                  "Vì lý do bảo mật Quý khách hàng vui lòng đổi mật khẩu lần đầu đăng nhập. Mật khẩu mới có độ dài ít nhất 8 ký tự, bao gồm chữ và số, không chứa dấu cách",
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Roboto-Regular", fontSize: 15),
                ),
              )),
              Container(
                //padding: EdgeInsets.symmetric(horizontal: 32),
                child: CustomEditText(hint: 'Mật khẩu mới',

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
