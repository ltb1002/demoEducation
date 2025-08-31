import 'package:education_elearning/routes/app_routes.dart';
import 'package:education_elearning/screens/login_screen.dart';
import 'package:education_elearning/screens/welcome_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = AppRoutes.welcome;

  static final pages = [
    GetPage(name: AppRoutes.welcome, page: () => const WelcomeScreen()),
    GetPage(name: AppRoutes.signIn, page: () => LoginScreen()),
    // Nếu có màn hình Register thì thêm vào
    // GetPage(
    //   name: AppRoutes.signUp,
    //   page: () => const RegisterScreen(),
    // ),
  ];
}
