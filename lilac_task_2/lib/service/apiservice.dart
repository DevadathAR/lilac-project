import 'dart:convert';
import 'package:http/http.dart' as http;

class APIService {
  static const String _baseUrl =
      'https://test.gslstudent.lilacinfotech.com/api';

  Future<void> getFeaturedCourses(String accessToken, int skipValue) async {
    final url = '$_baseUrl/landing/home/featuredCourse';
    final headers = {
      'Authorization': 'Bearer $accessToken',
      'Content-Type': 'application/json',
    };
    final queryParams = {
      'skipValue': '$skipValue',
    };

    final uri = Uri.parse(url);
    final requestUri = uri.replace(queryParameters: queryParams);

    final response = await http.get(requestUri, headers: headers);

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final featuredCourses = responseBody['featuredCourses'];
      print('Featured Courses: $featuredCourses');
    } else {
      print('Error: ${response.statusCode}');
    }
  }

  static Future<Map<String, dynamic>> login(
      String email, String password) async {
    final headers = {'Content-Type': 'application/json'};

    print('Email: $email');
    print('Password: $password');

    final body = jsonEncode({
      'userField': email,
      'password': password,
    });

    print('Request Body: $body');

    final response =
        await http.post(Uri.parse(_baseUrl), headers: headers, body: body);

    print('Response Status Code: ${response.statusCode}');

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login: ${response.statusCode}');
    }
  }

  Future<void> getCourseDetails(String accessToken, int courseId) async {
    final url = '$_baseUrl/courses/$courseId';
    final headers = {
      'Authorization': 'Bearer $accessToken',
      'Content-Type': 'application/json',
    };

    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final courseDetails = responseBody['courseDetails'];
      print('Course Details: $courseDetails');
    } else {
      print('Error: ${response.statusCode}');
    }
  }
}
