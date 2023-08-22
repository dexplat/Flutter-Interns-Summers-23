import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_8/providers/app_provider.dart';
import 'package:provider/provider.dart';

class Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppState>(context, listen: true);

    return Container(
      height: 300,
      width: 300,
      color: app.selectedTabIndex == 0
          ? Colors.blue[700]
          : app.selectedTabIndex == 1
              ? Colors.black
              : app.selectedTabIndex == 2
                  ? Colors.purple
                  : Colors.grey,
    );
  }
}
