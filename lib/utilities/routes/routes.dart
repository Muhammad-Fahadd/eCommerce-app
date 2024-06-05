import 'package:flutter/material.dart';
import 'package:shoe_app/common/widgets/success_screen/success_screen.dart';
import 'package:shoe_app/features/authentication/screen/login/login.dart';
import 'package:shoe_app/features/authentication/screen/onboarding_screen/onboarding_screen.dart';
import 'package:shoe_app/features/authentication/screen/password_configuration/forget_password.dart';
import 'package:shoe_app/features/authentication/screen/password_configuration/reset_password.dart';
import 'package:shoe_app/features/authentication/screen/signup_screen/signup_screen.dart';
import 'package:shoe_app/features/authentication/screen/signup_screen/verify_email.dart';
import 'package:shoe_app/features/personalization/screens/adress_screen/add_new_address_screen.dart';
import 'package:shoe_app/features/personalization/screens/adress_screen/adresses_screen.dart';
import 'package:shoe_app/features/personalization/screens/profile/profile_settings_screen.dart';
import 'package:shoe_app/features/shop/screens/all_product_screen/all_product_screen.dart';
import 'package:shoe_app/features/shop/screens/checkout_screen/checkout_screen.dart';
import 'package:shoe_app/features/shop/screens/navigation_menu/navigation_menu.dart';
import 'package:shoe_app/features/shop/screens/order/order_screen.dart';
import 'package:shoe_app/features/shop/screens/product_screen/product_detail_screen.dart';
import 'package:shoe_app/features/shop/screens/review_screen/review_screen.dart';
import 'package:shoe_app/features/shop/screens/shopping_cart/cart_screen.dart';
import 'package:shoe_app/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';

import '../constants/images_string.dart';
import '../constants/text_strings.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      
      case RoutesName.onboardingScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const OnboardingScreen());

      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginScreen());

      case RoutesName.signUpScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const SignUpScreen());

      case RoutesName.verifyEmailScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const VerifyEmail());

      case RoutesName.successScreen:
        return MaterialPageRoute(builder: (BuildContext context) =>  SuccessScreen(
          image: EImageString.staticSuccessIllustration,
          subtitle: ETextStrings.yourAccountCreatedSubTitle,
          title: ETextStrings.yourAccountCreatedTitle,
          onPressed: (){
            Navigator.pushNamed(context, RoutesName.loginScreen);

          },
        ));

      case RoutesName.forgetPasswordScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const ForgetPasswordScreen());

      case RoutesName.resetPasswordScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const ResetPasswordScreen());

      case RoutesName.navigationMenuScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const NavigationMenu());

      case RoutesName.profileSettingScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const ProfileSettingScreen());

      case RoutesName.productDetailScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const EProductDetailScreen());

         case RoutesName.reviewScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const ReviewScreen());

         case RoutesName.addressScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const AddressesScreen());

         case RoutesName.addNewAddressScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const AddNewAddressScreen());

         case RoutesName.cartScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const CartScreen());

      case RoutesName.checkoutScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const CheckOutScreen());

      case RoutesName.orderScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const OrderScreen());

      case RoutesName.subCategoriesScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const SubCategoriesScreen());

      case RoutesName.allProductScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const AllProductScreen());

      default:
        return MaterialPageRoute(builder: (BuildContext context) => const Scaffold());
    }
  }
}