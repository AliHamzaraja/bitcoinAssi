import 'package:bitcoin_flutter/services/api_services.dart';
import 'package:bitcoin_flutter/services/network_client.dart';
import 'package:get/get.dart';

import '../Controllers/Signin_Controller.dart';
import '../Controllers/Signup_Controller.dart';

Future<void> initData() async {
  Get.lazyPut(
    () => NetworkClient(),
    fenix: true,
  );

  Get.lazyPut(
    () => ApiService(networkClient: Get.find()),
    fenix: true,
  );
  Get.lazyPut(
    () => SignupController(apiService: Get.find()),
    fenix: true,
  );
   Get.lazyPut(
    () => SigninController(apiService: Get.find()),
    fenix: true,
  );
  //Controllers

  //Demage Report Controller

  //Apis Client

  // String userToken = sharedP.getString('UserToken')!;
}
