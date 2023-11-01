import 'package:crafty_furniture/modules/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules/cubit/cubit.dart';

class GroupLayout extends StatelessWidget {
 int index=0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FurnitureCubit(),
      child: BlocConsumer<FurnitureCubit, FurnitureStates>(
        listener: (BuildContext context, FurnitureStates state) {},
        builder: (BuildContext context, FurnitureStates state) {
          var cubit=FurnitureCubit.get(context);
          return Scaffold(
            body: cubit.screen[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              selectedLabelStyle: TextStyle(
                color: Color(0xff007575),
                fontWeight: FontWeight.w300,
                fontSize: 14
              ),
              unselectedLabelStyle: TextStyle(
                color: Color(0xff828A89),
                fontSize: 12,
                fontWeight: FontWeight.w100
              ),
              selectedItemColor: Color(0xff05796B),
              // unselectedItemColor: Color(0xff828A89),
              onTap: (index) {
                cubit.changeIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: 'Home'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category),
                    label: 'Category'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    label: 'Favourite',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    label: 'Cart',

                ),
              ],
            ),

          );
        },
      ),
    );
  }

}