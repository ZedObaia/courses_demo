import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:path/path.dart';
import 'pages/course_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize FFI for SQLite
  if (identical(0, 0.0)) {
    // This is JavaScript - web platform
    throw UnsupportedError(
      'SQLite is not supported on web platform. Consider using a different storage solution for web.',
    );
  } else {
    // This is native platform (Android/iOS/desktop)
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const CourseListPage(),
    );
  }
}
