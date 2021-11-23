import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListChallengeScreen extends StatelessWidget {
  const ListChallengeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Stack(children:<Widget> [
              Container(
                height: 98,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/header_bg.png"),
                        fit: BoxFit.cover)),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 53.86, left: 18.69, right: 35.84),
                    child: SvgPicture.asset("assets/icons/ic_back.svg"),
                  ),
                  Container(
                    height: 33,
                    width: 250,
                    margin: EdgeInsets.only(top: 47),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Tim kiem thu thach",
                          prefixIcon: Icon(Icons.ten_k)),
                    ),
                  )
                ],
              ),
              // Container(
              //   child: ListView(
              //     children: [
              //       Stack(
              //         children:<Widget> [
              //           Container(
              //             height: 50,
              //             margin: EdgeInsets.only(left: 25),
              //             color: Colors.red,
              //           ),
              //           Container(
              //             height: 30,
              //             width: 60,
              //             color: Colors.amber,
              //           )
              //         ],
              //       )
              //     ],
              //   ),
            ]),
            Container(
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
