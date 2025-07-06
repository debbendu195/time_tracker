// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';
import '../../view/screens/home_screen/home_screen.dart';
import '../../view/screens/onbordingScreen/onbordingScreen1.dart';
import '../../view/screens/splash_screen/splash_screen.dart';


class AppRoutes {
  ///=========================== Student Part ===============
  static const String splashScreen = "/SplashScreen";
  static const String homeScreen = "/HomeScreen";
  static const String onbordingscreenOne = "/OnbordingscreenOne";






  static List<GetPage> routes = [
    ///=========================== Student Part ==============
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: onbordingscreenOne, page: () => OnbordingscreenOne()),





  ];
}
