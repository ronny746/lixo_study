import 'package:flutter/material.dart';

class LecturesPage extends StatelessWidget {
  const LecturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFEAF5FF),
              borderRadius: BorderRadius.circular(7),
              boxShadow: const [
                BoxShadow(
                    blurStyle: BlurStyle.outer,
                    color: Color.fromARGB(255, 136, 136, 136),
                    blurRadius: 5,
                    offset: Offset(2, 2))
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://i.ytimg.com/vi/LvDEO27plw0/maxresdefault.jpg",
                      width: 100,
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Demo Lecture",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "12-04-2023",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                const Text(
                  "1:39:25",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
