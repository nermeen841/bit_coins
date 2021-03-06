
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorD {
  static const Color GOLD_COLOR = Color(0XFFD5BF84);
  static const Color BRAWN_BLACK_COLOR = Color(0XFFBFAB75);
  static const Color BRAWN_White_COLOR = Color(0XFFF2E6C6);
  static const Color GREEN_COLOR = Color(0xFF4AD58B);
  static const Color GREY_COLOR = Color(0XFF676870);
  static const Color MINT_GREEN_COLOR = Color(0XFF4AD58B40);
}

// ignore: non_constant_identifier_names
Widget Main_text(String txt,
    {FontWeight fontWeight, Color color, double size, double fonthight}) {
  return Text(
    txt,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.w500,
        height: fonthight ?? 1,
        fontSize: size ?? 15,
        color: color ?? Colors.black),
  );
}

// ignore: non_constant_identifier_names
Widget Loading() {
  return Center(
    child: CupertinoActivityIndicator(
      radius: 17,
      animating: true,
    ),
  );
}


card_container(Widget childd, double width , color) {
  return Container(
    width: width,
    // height: MediaQuery.of(context).size.height * .15,
    padding: EdgeInsets.only(right: 15, left: 15, top: 20, bottom: 20),
    child: childd,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
  );
}

generalCon(String name, BuildContext context, Function fun) {
  return Container(
    width: MediaQuery.of(context).size.width * .8,
    height: MediaQuery.of(context).size.height * .065,
    padding: EdgeInsets.only(right: 21, left: 21),
    margin: EdgeInsets.all(8),
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Main_text(name, color: Colors.black, fontWeight: FontWeight.w500),
        IconButton(
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          ),
          onPressed: () {
            fun();
          },
        )
      ],
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.black)),
  );
}
