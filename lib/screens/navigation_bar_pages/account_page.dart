import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Accounts",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
