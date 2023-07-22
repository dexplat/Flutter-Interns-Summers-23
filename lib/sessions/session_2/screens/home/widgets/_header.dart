part of '../s2_home.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(StaticAssets.menu),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(StaticAssets.chat),
        ),
      ],
    );
  }
}
