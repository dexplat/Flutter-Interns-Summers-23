import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_8/providers/app_provider.dart';
import 'package:provider/provider.dart';

class TabTile extends StatelessWidget {
  final bool isSelected;
  final String title;
  final int index;
  const TabTile(
      {required this.index,
      required this.title,
      this.isSelected = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppState>(context, listen: false);

    return GestureDetector(
      onTap: () {
        app.changeTab(index);
      },
      child: Container(
        height: 50,
        width: 100,
        color: isSelected ? Colors.blue : Colors.red,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
