import 'package:flutter/material.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xC5C5C5C5), width: 1),
        // boxShadow: const [
        //   BoxShadow(
        //       color: Color(0xDEDEDEFF),
        //       spreadRadius: 2,
        //       blurRadius: 10,
        //       blurStyle: BlurStyle.outer
        //   )
        // ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://static.vecteezy.com/system/resources/previews/004/243/615/non_2x/creative-coming-soon-teaser-background-free-vector.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "COMING SOON",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text("All Batches"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
