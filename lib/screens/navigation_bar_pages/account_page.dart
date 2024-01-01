import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth_controller.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {

    final AuthController controller = Get.put(AuthController());

    return Column(
      children: [
        Text(
          "Accounts",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Image.network(controller.user?.photoURL ?? ""),
        Text(controller.user?.displayName ?? "Name"),
        Text(controller.user?.email ?? "Email"),
      ],
    );
  }
}
