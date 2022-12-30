import 'package:dio/dio.dart';

import 'network_client.dart';

class ApiService {
  final NetworkClient networkClient;
  ApiService({required this.networkClient});

 Future<Response> SignUp(Map<String, Object> params) {
    return networkClient.post('https://ahsan.metaversepro.space/public/api/register-user', params);
  }

  Future<Response> login(Map<String, Object> params) {
    return networkClient.post('https://ahsan.metaversepro.space/public/api/login-user', params);
  }

  Future<Response> logout() {
    return networkClient.post('api/logout', {});
  }


  Future<Response> getContactData() {
    return networkClient.get('api/show_all_contact', {});
  }

  
}
