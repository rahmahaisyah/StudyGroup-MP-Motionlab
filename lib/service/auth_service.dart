import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> login(String username, String password) async {
    try {
      final response = await _dio.post(
        'https://dummyjson.com/auth/login',
        data: {
          'username': username,
          'password': password,
          'expiresInMins': 30,
        },
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('accessToken', data['accessToken']);
        await prefs.setString('username', username);
        return data;
      } else {
        throw Exception('Failed to login');
      }
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }

  Future<Map<String, dynamic>> getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('accessToken');

    if (accessToken == null) {
      throw Exception('No access token');
    }

    try {
      final response = await _dio.get(
        'https://dummyjson.com/auth/me',
        options: Options(
          headers: {'Authorization': 'Bearer $accessToken'},
        ),
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to fetch user data');
      }
    } catch (e) {
      throw Exception('Failed to fetch user data: $e');
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    await prefs.remove('username');
  }
}
