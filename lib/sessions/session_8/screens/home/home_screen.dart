import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_8/providers/app_provider.dart';
import 'package:flutter_interns/sessions/session_8/widgets/box.dart';
import 'package:flutter_interns/sessions/session_8/widgets/tab_tile.dart';

part 'static/_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = AppState.s(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ..._Data.tabs.map((e) => TabTile(
                      title: e,
                      isSelected:
                          _Data.tabs.indexOf(e) == appState.selectedTabIndex,
                      index: _Data.tabs.indexOf(e),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Box(),
          ],
        ),
      ),
    );
  }
}
