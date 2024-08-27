// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ui_srtreaming_app/colors_schema.dart';

class PlusWidget extends StatelessWidget {
  String name;
  String img;
  bool isSelected;

  PlusWidget({
    Key? key,
    required this.name,
    required this.img,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(shape: BoxShape.circle, color: ColMenu),
              child: Container(
                margin: EdgeInsets.all(17),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/icons/${img}.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: isSelected == true
                    ? Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: Icon(
                            Icons.check_circle,
                            color: ColButton,
                          ),
                        ),
                      )
                    : Container()),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
