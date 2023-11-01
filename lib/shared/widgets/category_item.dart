import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String img,title;

  const CategoryItem({super.key, required this.img, required this.title});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 110,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    img,
                  ))),
        ),
        Container(
          color: Colors.grey.withOpacity(.6),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
