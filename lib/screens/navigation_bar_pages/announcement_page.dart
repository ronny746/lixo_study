import 'package:flutter/material.dart';
import 'package:lixo_study/widgets/announcement_card.dart';

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Announcements", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(
          height: 20,
        ),
        const AnnouncementCard(),
      ],
    );
  }
}
