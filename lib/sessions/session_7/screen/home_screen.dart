import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_7/models/course.dart';
import 'package:flutter_interns/sessions/session_7/screen/modifications_screen.dart';
import 'package:flutter_interns/sessions/session_7/services/courses/data_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Course>? courses;

  @override
  initState() {
    super.initState();
    getData();
  }

  void getData() async {
    final courses = await CourseProvider.getCourses();
    setState(() {
      this.courses = courses;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Courses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: courses == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(children: [
                ...List.generate(
                  courses!.length,
                  (index) => ListTile(
                    title: Text(courses![index].name),
                    subtitle: Text(courses![index].author.name),
                    trailing: IconButton(
                      onPressed: () {
                        CourseProvider.deleteCourse(courses![index].id);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const DataModScreen(),
                      ),
                    );
                  },
                  child: const Text('Go to next page'),
                )
              ]),
      ),
    );
  }
}
