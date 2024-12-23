import '../models/course.dart';

abstract class StorageInterface {
  Future<Course> insertCourse(Course course);
  Future<List<Course>> getAllCourses();
}
