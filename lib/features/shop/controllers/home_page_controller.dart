import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{


RxInt currentCarouselIndex = 0.obs;
  final  pageController = PageController();
  final carouselController = CarouselController();


  void updateCurrentCarouselIndex(index){
    currentCarouselIndex.value = index;
  }



}