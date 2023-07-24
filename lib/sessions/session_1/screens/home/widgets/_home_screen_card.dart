part of '../s1_home.dart';

class _HomeScreenCard extends StatelessWidget {
  const _HomeScreenCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 4),
            blurRadius: 12.0,
          ),
        ],
      ),
    );
  }
}
