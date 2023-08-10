import 'package:dio/dio.dart';
import 'package:flutter_interns/sessions/session_7/gateway/courses/courses_gateway.dart';
import 'package:flutter_interns/sessions/session_7/models/course.dart';

class CourseProvider {
  static final _client = Dio();

  static Future<List<Course>> getCourses() async {
    try {
      final raw = await _client.get(CoursesGateway.fetchCoursesEndPoint);
      if (raw.statusCode != 200) throw Exception('Failed to fetch courses');

      final courses = raw.data as List;
      return courses
          .map((course) => Course.fromMap(course as Map<String, dynamic>))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> createCourse(Course course) async {
    try {
      final res = await _client.post(
        CoursesGateway.courseEndPoint,
        data: course.toMap(),
      );
      if (res.statusCode != 201) throw Exception('Failed to create course');
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> deleteCourse(String id) async {
    try {
      await _client.delete(
        '${CoursesGateway.courseEndPoint}/$id',
      );
    } catch (e) {
      rethrow;
    }
  }
}
