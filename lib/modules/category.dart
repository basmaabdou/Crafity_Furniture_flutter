import 'package:flutter/material.dart';

import '../layouts/group_layout.dart';
import '../shared/componant/componant.dart';
import '../shared/widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff007575),),onPressed:(){ }),
        title: Center(
          child: Text(
            'Category',
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
          // primary: false,
          itemCount: catItem.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // mainAxisSpacing: 5,
            crossAxisSpacing: 10,
            childAspectRatio: 8/6.5,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index)=>CategoryItem(img: catItem[index].img, title: catItem[index].title,),
        ),
      ),
    );
  }

  List<CategoryItem> catItem=[
    CategoryItem( img: 'assets/images/bed.png', title: 'Bed',),
    CategoryItem( img: 'assets/images/Armchair.jpeg', title: 'Armchair',),
    CategoryItem( img: 'assets/images/sofa.png', title: 'Sofa',),
  ];
}
