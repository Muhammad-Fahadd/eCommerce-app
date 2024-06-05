import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/bindings/general_bindings.dart';
import 'package:shoe_app/utilities/constants/colors.dart';
import 'package:shoe_app/utilities/routes/routes.dart';
import 'package:shoe_app/utilities/theme/theme.dart';

///This class is to set theme , animations ,initial bindings and more
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Scaffold(
        backgroundColor: EColors.primaryColor,
        body: Center(child: CircularProgressIndicator(color: EColors.whiteColor,),),),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      // initialRoute: RoutesName.onboardingScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}