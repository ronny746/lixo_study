import 'package:flutter/material.dart';

class SubCard extends StatelessWidget {
  const SubCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 213, 213, 213),
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://d1k5j68ob7clqb.cloudfront.net/thumb/480/processed/thumb/p2C7R06hM6r43E.png",
            width: 70,
          ),
          const SizedBox(height: 10),
          Text(
            "Notices",
            style: Theme.of(context).textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
