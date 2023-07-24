part of '../s1_home.dart';

class _TabCapsule extends StatefulWidget {
  const _TabCapsule();

  @override
  State<_TabCapsule> createState() => _TabCapsuleState();
}

class _TabCapsuleState extends State<_TabCapsule> {
  // initState
  // dispose
  // ..

  // setState --> bascially helps to update the UI
  // it will call the nearest build() method

  /// index logic
  int currentTab = 0;

  /// String logic
  /// List<String> label =['swap', 'exchange']
  /// String currentLabel = ....

  // enum logic
  /// enum --> type
  /// enum TabLabel {swap, exchange}
  /// TabLabel currentLabel = ...

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 2; i++)
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = i;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: 60.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: currentTab == i
                      ? Constants.primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    i == 0 ? 'Swap' : 'Exchange',
                    style: TextStyle(
                      color: currentTab == i ? Colors.white : Colors.grey,
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
