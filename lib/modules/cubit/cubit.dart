import 'package:bloc/bloc.dart';
import 'package:crafty_furniture/modules/cart.dart';
import 'package:crafty_furniture/modules/category.dart';
import 'package:crafty_furniture/modules/cubit/states.dart';
import 'package:crafty_furniture/modules/favourit.dart';
import 'package:crafty_furniture/modules/home_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class FurnitureCubit extends Cubit<FurnitureStates>{
  FurnitureCubit() : super(InitialState());

  static FurnitureCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;
  List<Widget> screen=[
    HomeScreen(),
    CategoryScreen(),
    FavouriteScreen(),
    CartScreen()
  ];
  void changeIndex(int index){
    currentIndex=index;
    emit(ChangeBottomNavStates());
  }





}