part of '../s2_home.dart';

class _PostCard extends StatelessWidget {
  final String userImagePath;
  final String postImagePath;
  const _PostCard({
    required this.postImagePath,
    required this.userImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 4),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: S2Avatar(
              imagePath: userImagePath,
            ),
            title: const Text(
              'Anton Demeron',
              style: AppText.b1,
            ),
            subtitle: const Text('@anton_demeron'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
              ),
            ),
          ),
          Spaces.y,
          Image.asset(
            postImagePath,
            fit: BoxFit.cover,
          ),
          Spaces.y,
          const Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 25,
              ),
              Text(
                ' 574',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
              Spaces.x,
              Icon(
                Icons.comment,
                color: Colors.grey,
                size: 25,
              ),
              Text(
                ' 23',
                style: AppText.s1,
              ),
              Spaces.x,
              Icon(
                Icons.share,
                color: Colors.grey,
                size: 25,
              ),
              Spacer(),
              Text(
                '35 min ago',
                style: AppText.s1,
              ),
            ],
          ),
          Spaces.y,
          const Text(
            'Down the road',
            style: AppText.b1,
          ),
          Spaces.y,
        ],
      ),
    );
  }
}
