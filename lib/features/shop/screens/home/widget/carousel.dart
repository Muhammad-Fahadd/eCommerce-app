import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../common/widgets/carousel_image/carousel_image.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/images_string.dart';
import '../../../controllers/home_page_controller.dart';

class ECarousel extends StatelessWidget {
  const ECarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomePageController());

    return Column(
      children: [
        CarouselSlider(
          carouselController: controller.carouselController,
            items: const [
              EBanner(image: EImageString.promoBanner1),
              EBanner(image: EImageString.promoBanner2),
              EBanner(image: EImageString.promoBanner3),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index,_){
                controller.updateCurrentCarouselIndex(index);
              },
            )),
        const SizedBox(height: ESizes.spaceBetweenItems,),
        Obx(() => AnimatedSmoothIndicator(
          effect: const JumpingDotEffect(
            dotColor: EColors.greyColor,
            activeDotColor: EColors.primaryColor,
            dotHeight: 6,
          ),
          activeIndex: controller.currentCarouselIndex.value,
          count: 3,
        )
        )
      ],
    );
  }
}
