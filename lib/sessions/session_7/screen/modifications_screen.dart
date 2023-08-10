import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_interns/sessions/session_7/models/author.dart';
import 'package:flutter_interns/sessions/session_7/models/course.dart';
import 'package:flutter_interns/sessions/session_7/services/courses/data_provider.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class DataModScreen extends StatelessWidget {
  const DataModScreen({super.key});

  static final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Modification'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              FormBuilderTextField(
                name: 'name',
                validator: FormBuilderValidators.required(),
              ),
              FormBuilderTextField(
                name: 'price',
                validator: FormBuilderValidators.required(),
              ),
              FormBuilderTextField(
                name: 'id',
                validator: FormBuilderValidators.required(),
              ),
              FormBuilderTextField(
                name: 'author-name',
                validator: FormBuilderValidators.required(),
              ),
              FormBuilderTextField(
                name: 'github',
                validator: FormBuilderValidators.required(),
              ),
              ElevatedButton(
                onPressed: () async {
                  final form = _formKey.currentState!;
                  final isValid = form.saveAndValidate();
                  if (!isValid) return;

                  final data = form.value;
                  final course = Course(
                    name: data['name'],
                    price: int.parse(data['price']),
                    id: data['id'],
                    author: Author(
                      name: data['author-name'],
                      github: data['github'],
                    ),
                  );

                  await CourseProvider.createCourse(course);
                },
                child: const Text('Add Course'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
