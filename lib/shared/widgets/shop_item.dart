import 'package:flutter/material.dart';

class ShoppingItem extends StatelessWidget {
    final String img,text,price,numPecies;

  const ShoppingItem({super.key, required this.img, required this.text, required this.price, required this.numPecies});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 86,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
            top: 5, start: 10, end: 10, bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 87,
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
                    text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff264446)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      // Icon(Icons.minimize_outlined),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0xffF0F4F4),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.minimize_outlined,
                              color: Colors.black,
                              size: 9,
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        numPecies,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff101817)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0xff007575),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 10,
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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
                SizedBox(
                  height: 15,
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
            )
          ],
        ),
      ),
    );
  }
}
