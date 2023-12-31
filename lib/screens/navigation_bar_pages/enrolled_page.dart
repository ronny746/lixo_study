import 'package:flutter/material.dart';
import 'package:lixo_study/widgets/enrolled_card.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Enrolled Batches", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(
          height: 20,
        ),
        const EnrolledCourseCard(),
      ],
    );
  }
}
