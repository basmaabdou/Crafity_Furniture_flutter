import 'package:crafty_furniture/layouts/group_layout.dart';
import 'package:crafty_furniture/shared/componant/componant.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff007575),),onPressed:(){ navigateTo(context, GroupLayout());}),
        actions: [
          CircleAvatar(
            radius: 20,
              backgroundColor: Color(0xffF0F4F4),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Color(0xff007575),))
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage('assets/images/detail.png'),width: 311,height: 236,),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Pearl Furniture New Style',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff101817),
                      shadows:  <Shadow>[
                        Shadow(
                          blurRadius: 15.0,
                          color: Color(0xff000000).withOpacity(.15),
                          offset: Offset(0.0, 8.0),

                        )],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '  \$180   ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffE49E62),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Icon(Icons.shopping_cart,color: Color(0xff0C8A7B),size: 25,),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '2.1 k',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.remove_red_eye,color: Color(0xff0C8A7B),weight: 25,size: 25),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '5.0 k',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                Spacer(),
                Image(image: AssetImage('assets/images/groupImg.png'),width: 71,height: 30,),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Text(
                  'Rating',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                    shadows:  <Shadow>[
                      Shadow(
                        blurRadius: 15.0,
                        color: Color(0xff000000).withOpacity(.15),
                        offset: Offset(0.0, 8.0),

                      )],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image(image: AssetImage('assets/images/star.png'),width: 72,height: 24,),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '(200 rated)',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff525863),

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                shadows:  <Shadow>[
                  Shadow(
                    blurRadius: 15.0,
                    color: Color(0xff000000).withOpacity(.25),
                    offset: Offset(0.0, 8.0),

                  )],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff828A89),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Color',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                    shadows:  <Shadow>[
                      Shadow(
                        blurRadius: 15.0,
                        color: Color(0xff000000).withOpacity(.25),
                        offset: Offset(0.0, 8.0),

                      )],
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    // Icon(Icons.minimize_outlined),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor:  Color(0xffF0F0F2),
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
                      '04',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff101817)
                    ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor:  Color(0xff007575),
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
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1E6159),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                CircleAvatar(
                  radius: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff5165A7),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffC19859),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffAE3B80),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffDDEBE9),
                    borderRadius: BorderRadius.circular(15)
                  ),
                    width: 50,
                    height: 50,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 25,),color: Color(0xff007575),)
                ),
                SizedBox(width: 10,),
                Container(
                  width:250,
                  child: MaterialButton(
                    onPressed: (){},
                    color: Color(0xff007575),
                    height: 50,
                    child: Text(
                        'Add To Cart',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        )
                    ),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
