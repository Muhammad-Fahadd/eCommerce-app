import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoe_app/firebase_options.dart';
import 'data/repositories/authentication/authentication_repositories.dart';
import 'my_app.dart';

/// Entry point of flutter app
Future<void> main() async {

  /// Add Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  ///get storage
  await GetStorage.init();

  /// Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  ///initialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,).then(
      (FirebaseApp value) => Get.put(AuthenticationRepositories()));

  // Todo: Initialize Authentication
  
  runApp(const MyApp());
}



