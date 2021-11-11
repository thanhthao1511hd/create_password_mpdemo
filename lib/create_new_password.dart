import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_edit_text.dart';
import 'custom_edit_text2.dart';

class CreateNewPassword extends StatelessWidget {
  bool isButtonActive=true;
  CreateNewPassword({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: const Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
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
                      "Đổi mật khẩu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Roboto"),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      height: 80,
                      width: 295,
                      child: const Text(
                        "Vì lý do bảo mật Quý khách hàng vui lòng đổi mật khẩu lần đầu đăng nhập. Mật khẩu mới có độ dài ít nhất 8 ký tự, bao gồm chữ và số, không chứa dấu cách",
                        maxLines: 4,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: "Roboto-Regular",
                            fontSize: 15),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: CustomEditText()),

                    // Container(
                    //   margin: const EdgeInsets.only(top: 48),
                    //   color:  Colors.blue,
                    //   child: const MaterialButton(
                    //     onPressed: null,
                    //     elevation: 0,
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(22))),
                    //     highlightColor: Colors.blue,
                    //     child: Text("Đổi mật khẩu", style: TextStyle(color: Colors.white, fontFamily: "Roboto", fontWeight: FontWeight.bold),),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
