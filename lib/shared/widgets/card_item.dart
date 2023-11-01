import 'package:flutter/material.dart';

import '../../modules/detail.dart';
import '../componant/componant.dart';

class CardItem extends StatelessWidget{
  final String img,title,price;

  const CardItem({super.key, required this.img, required this.title, required this.price});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, DetailScreen());
      },
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.50),

              // offset: Offset(0, 4),

              // blurRadius: 8,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 5,
            end: 10,
            top: 10,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xffF0F4F4),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Color(0xff007575),
                            size: 17,
                          )),
                    ),
                  ),
                ],
              ),
              Image(
                height: 80,
                image: AssetImage(img),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                    title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff264446)),
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xff0C8A7B),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_bag,
                            color: Color(0xffFFFFFF),
                            size: 16,
                          )),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                     Text(
                   price,
                      style: TextStyle(
                          color: Color(0xffF79F1A),
                          decoration: TextDecoration.lineThrough),
                    ),
                    const Spacer(),
                    const Text(
                      '32% OFF',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}