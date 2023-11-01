import 'package:crafty_furniture/layouts/group_layout.dart';
import 'package:crafty_furniture/modules/home_layout.dart';
import 'package:crafty_furniture/shared/componant/componant.dart';
import 'package:crafty_furniture/shared/widgets/favourite_item.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff007575),),onPressed:(){ }),
        title: Center(
          child: Text(
            'Favourite',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize:20 ,
                color: Color(0xff264446),
              shadows:  <Shadow>[
                      Shadow(
                        blurRadius: 15.0,
                        color: Color(0xff000000).withOpacity(.25),
                        offset: Offset(0.0, 8.0),

                      )],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          primary: false,
          // padding: const EdgeInsets.all(20),
          itemCount: favItem.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2/2.9,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index)=>FavouriteItem(img: favItem[index].img, title: favItem[index].title, price: favItem[index].price, dis:  favItem[index].dis,),
        ),
      ),
    );
  }

List<FavouriteItem> favItem=[
  FavouriteItem(img: 'assets/images/chair3.png',title:'Tortor Chair ' ,price: '\$160',dis: '5%',),
  FavouriteItem(img: 'assets/images/chair1.png',title:' Modern Style' ,price: '\$236',dis: '9%',),
  FavouriteItem(img: 'assets/images/chair2.png',title:'Tortor Chair Modern Style' ,price: '\$150',dis: '7%',),
  FavouriteItem(img: 'assets/images/chair4.png',title:'Chair Modern Style' ,price: '\$336',dis: '0%',),
];
}
