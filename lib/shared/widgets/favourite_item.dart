import 'package:flutter/material.dart';

class FavouriteItem extends StatelessWidget {
  final String img,title,price,dis;

  const FavouriteItem({super.key, required this.img, required this.title, required this.price, required this.dis});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 5, end: 5),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 15, start: 10),
                  child: Image(
                    image: AssetImage(img),
                    width: 105,
                    height: 105,
                  ),
                ),
                Spacer(),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/Vector2.png'),
                      width: 26,
                      height: 44,
                    ),
                    Center(
                      child: Text(
                        dis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF)),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff264446)),
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
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
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Color(0xffE49E62)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
