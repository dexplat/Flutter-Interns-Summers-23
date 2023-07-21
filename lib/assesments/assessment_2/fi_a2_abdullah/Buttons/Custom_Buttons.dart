import 'package:flutter/material.dart';

/// Custom buttom -- AppButton
// clickable --> onPressed:
// backgroundColor --> color:
// widget --> child:

/// stateful --> initState, setState, dispose etc.
/// stateless --> ghareeb

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final Widget child;
  const AppButton({
    super.key,
    required this.child,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
