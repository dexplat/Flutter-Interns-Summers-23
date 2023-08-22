import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppState extends ChangeNotifier {
  static AppState s(BuildContext context) => Provider.of<AppState>(context, listen: true); 

  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }

  bool isLoading = false;

  void toggleLoader() {
    isLoading = !isLoading;
    notifyListeners();
  } 

  List<int> data = [];

  void fetchData() {
    toggleLoader();
    Future.delayed(const Duration(seconds: 2), () {
      data = List.generate(10, (index) => index);
      toggleLoader();
    });
  }

  int selectedTabIndex = 0;

  void changeTab(int index) {
    selectedTabIndex = index;
    notifyListeners();
  }
}