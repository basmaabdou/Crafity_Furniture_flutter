import 'package:flutter/material.dart';

class DefaultRow extends StatelessWidget {
  const DefaultRow({super.key,  this.title,  this.subTitle});
  final String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          title!,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xff264446)),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child:  Text(
             subTitle!,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: Color(0xffF2A666)),
            )),
      ],
    );
  }
}

