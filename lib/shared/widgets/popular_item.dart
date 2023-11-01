import 'package:flutter/material.dart';

import '../../modules/detail.dart';
import '../componant/componant.dart';

class PopularItem extends StatelessWidget {
final String img,title,price;

  const PopularItem({super.key, required this.img, required this.title, required this.price});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, DetailScreen());
      },
      child:   Container(
        // height: 300,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffFFFFFF),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 5, start: 10, end: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffF2F2F2)),
                child:  Image(
                  image: AssetImage(img),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff264446)),
                    ),
                    Text(
                      price,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffE49E62)),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 17,
                backgroundColor: Color(0xffF0F4F4),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Color(0xff007575),
                      size: 20,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
