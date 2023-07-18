import 'package:flutter/material.dart';

class AssignmentOne extends StatelessWidget {
  const AssignmentOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: const Text("Who i am?"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: MediaQuery.sizeOf(context).height / 8,
                width: MediaQuery.sizeOf(context).width,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    title: Text('Muhammad Ilyas'),
                    subtitle: Text('Software Engineer'),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
