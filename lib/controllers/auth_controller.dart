import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find<AuthController>();

  final isLogged = false.obs;
  final username = ''.obs;

  static const _kIsLogged = 'is_logged_in';
  static const _kUsername = 'username';

  static const _validUser = 'demo';
  static const _validPass = '123456';

  @override
  void onInit() {
    super.onInit();
    _loadSession();
  }

  Future<void> _loadSession() async {
    final prefs = await SharedPreferences.getInstance();
    isLogged.value = prefs.getBool(_kIsLogged) ?? false;
    username.value = prefs.getString(_kUsername) ?? '';
  }

  Future<void> login(String user, String pass) async {
    if (user.trim() == _validUser && pass == _validPass) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_kIsLogged, true);
      await prefs.setString(_kUsername, user.trim());
      username.value = user.trim();
      isLogged.value = true;
    } else {
      Get.snackbar(
        'Acceso denegado',
        'Usuario o contraseña inválidos',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_kIsLogged);
    await prefs.remove(_kUsername);
    isLogged.value = false;
    username.value = '';
  }
}
