

import 'package:get/get.dart';
import 'package:interview/services/secure_storage/secure_storage.dart';
import 'package:interview/views/home/home_base_view.dart';

class AppController extends GetxService {
  @override
  Future<void> onInit() async {
    super.onInit();
    await Future.delayed(
        const Duration(seconds: 3), () async => await getFirstScreen());
  }
  Future<void> getFirstScreen() async {
    final token = await SecureStorage().retrieveToken();

    if (token != null && token.isNotEmpty) {
      Get.off(() => const HomeBaseView());
    } else {
      Get.off(() => const HomeBaseView());
    }
  }
}
