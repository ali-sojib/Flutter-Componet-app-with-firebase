import 'package:flutter_app_with_firebase/src/repository/authenticaiton_repository/authenticaiton_repository.dart';

import '../../../../../constant/consts.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(sAppName, style: Theme.of(context).textTheme.headline4),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: sCardBgColor),
          child: IconButton(
            onPressed: () {
              AuthenticationRepository.instance.logout();
            },
            icon: Icon(Icons.person, color: Colors.black),
            // const Image(image: AssetImage(sUserProfileImage)),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}
