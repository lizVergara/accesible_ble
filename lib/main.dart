import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/auth_controller.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'theme/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthController());
  runApp(const AccesibleBleApp());
}

class AccesibleBleApp extends StatelessWidget {
  const AccesibleBleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      useMaterial3: true,
    );

    return GetMaterialApp(
      title: 'Accesible BLE',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Obx(() => AuthController.to.isLogged.value
          ? const HomeScreen()
          : const LoginScreen()),
    );
  }
}
