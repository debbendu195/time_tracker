// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';
import '../../view/screens/class1/class_one_screen.dart';
import '../../view/screens/class17/create_screen.dart';
import '../../view/screens/class17/draft_screen.dart';
import '../../view/screens/class17/note_details_screen.dart';
import '../../view/screens/class17/note_pad_screen.dart';
import '../../view/screens/class9/class_nine_screen.dart';
import '../../view/screens/class9/class_ten_screen.dart';
import '../../view/screens/class9/game_screen.dart';
import '../../view/screens/class9/layoutbuilder.dart';
import '../../view/screens/gallery/gallery_screen.dart';
import '../../view/screens/home_screen/home_screen.dart';
import '../../view/screens/leveScreen/leave_next_screen.dart';
import '../../view/screens/leveScreen/leave_screen.dart';
import '../../view/screens/login/create_pass_screen.dart';
import '../../view/screens/login/forgatePassword.dart';
import '../../view/screens/login/login_screen.dart';
import '../../view/screens/login/otp_screen.dart';
import '../../view/screens/login/signup_screen.dart';
import '../../view/screens/note/note_screen.dart';
import '../../view/screens/note/view_screen.dart';
import '../../view/screens/onbordingScreen/onbordingScreen1.dart';
import '../../view/screens/onbordingScreen/onbordingScreen2.dart';
import '../../view/screens/onbordingScreen/onbordingscreen3.dart';
import '../../view/screens/playRole/play_role_screen.dart';
import '../../view/screens/prifile/change_pass_screen.dart';
import '../../view/screens/prifile/personal_info_screen.dart';
import '../../view/screens/prifile/personal_update_screen.dart';
import '../../view/screens/privacyPolicy/privacy_screen.dart';
import '../../view/screens/project_details/project_details_screen.dart';
import '../../view/screens/report/report_screen.dart';
import '../../view/screens/settings/settings_screen.dart';
import '../../view/screens/splash_screen/splash_screen.dart';
import '../../view/screens/user/user_screen.dart';
import '../../view/screens/userCreate/userCreate_screen.dart';


class AppRoutes {
  ///=========================== Student Part ===============
  static const String splashScreen = "/SplashScreen";
  static const String homeScreen = "/HomeScreen";
  static const String onbordingscreenOne = "/OnbordingscreenOne";
  static const String onbordingscreenTwo = "/OnbordingscreenTwo";
  static const String onbordingscreenThree = "/OnbordingscreenThree";
  static const String userCreate = "/UserCreate";
  static const String login = "/Login";
  static const String forgatePassword = "/ForgatePassword";
  static const String otpScreen = "/OtpScreen";
  static const String createPassScreen = "/CreatePassScreen";
  static const String signupScreen = "/SignupScreen";
  static const String userScreen = "/UserScreen";
  static const String projectDetailsScreen = "/ProjectDetailsScreen";
  static const String reportScreen = "/ReportScreen";
  static const String leaveScreen = "/LeaveScreen";
  static const String leaveNextScreen = "/LeaveNextScreen";
  static const String noteScreen = "/NoteScreen";
  static const String viewScreen = "/ViewScreen";
  static const String personalInfoScreen = "/PersonalInfoScreen";
  static const String personalUpdateScreen = "/PersonalUpdateScreen";
  static const String classOneScreen = "/ClassOneScreen";
  static const String classNineScreen = "/ClassNineScreen";
  static const String gameScreen = "/GameScreen";
  static const String classTenScreen = "/ClassTenScreen";
  static const String layoutbuilder = "/Layoutbuilder";
  static const String notePadScreen = "/NotePadScreen";
  static const String draftScreen = "/DraftScreen";
  static const String createScreen = "/CreateScreen";
  static const String noteDetailsScreen = "/NoteDetailsScreen";
  static const String settingsScreen = "/SettingsScreen";
  static const String playRoleScreen = "/PlayRoleScreen";
  static const String galleryScreen = "/GalleryScreen";
  static const String changePassScreen = "/ChangePassScreen";
  static const String privacyScreen = "/PrivacyScreen";


  static List<GetPage> routes = [
    ///=========================== Student Part ==============
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: onbordingscreenOne, page: () => OnbordingscreenOne()),
    GetPage(name: onbordingscreenTwo, page: () => OnbordingscreenTwo()),
    GetPage(name: onbordingscreenThree, page: () => OnbordingscreenThree()),
    GetPage(name: userCreate, page: () => UserCreate()),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: forgatePassword, page: () => ForgatePassword()),
    GetPage(name: otpScreen, page: () => OtpScreen()),
    GetPage(name: createPassScreen, page: () => CreatePassScreen()),
    GetPage(name: signupScreen, page: () => SignupScreen()),
    GetPage(name: userScreen, page: () => UserScreen()),
    GetPage(name: projectDetailsScreen, page: () => ProjectDetailsScreen()),
    GetPage(name: reportScreen, page: () => ReportScreen()),
    GetPage(name: leaveScreen, page: () => LeaveScreen()),
    GetPage(name: leaveNextScreen, page: () => LeaveNextScreen()),
    GetPage(name: noteScreen, page: () => NoteScreen()),
    GetPage(name: viewScreen, page: () => ViewScreen()),
    GetPage(name: personalInfoScreen, page: () => PersonalInfoScreen()),
    GetPage(name: personalUpdateScreen, page: () => PersonalUpdateScreen()),
    GetPage(name: classOneScreen, page: () => ClassOneScreen()),
    GetPage(name: classNineScreen, page: () => ClassNineScreen()),
    GetPage(name: gameScreen, page: () => GameScreen()),
    GetPage(name: classTenScreen, page: () => ClassTenScreen()),
    GetPage(name: layoutbuilder, page: () => Layoutbuilder()),
    GetPage(name: notePadScreen, page: () => NotePadScreen()),
    GetPage(name: createScreen, page: () => CreateScreen()),
    GetPage(name: noteDetailsScreen, page: () => NoteDetailsScreen()),
    GetPage(name: settingsScreen, page: () => SettingsScreen()),
    GetPage(name: playRoleScreen, page: () => PlayRoleScreen()),
    GetPage(name: galleryScreen, page: () => GalleryScreen()),
    GetPage(name: changePassScreen, page: () => ChangePassScreen()),
    GetPage(name: privacyScreen, page: () => PrivacyScreen()),


  ];
}
