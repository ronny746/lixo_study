import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lixo_study/widgets/home_course_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // fetchBatches() async {
  //   var val = await firestore.collection("batches").get();
  //   print(val);
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchBatches();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lixo Study",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        const HomeCourseCard(
          imageUrl:
              "https://d2bps9p1kiy4ka.cloudfront.net/5eb393ee95fab7468a79d189/c9c0f7ec-09a0-43d6-b270-ba8fcebd434b.png",
        ),
        const HomeCourseCard(
          imageUrl:
              "https://www.pw.live/files/repository001/cta/1701084929-popup_w.jpg",
        ),
        const HomeCourseCard(
          imageUrl: "https://i.ytimg.com/vi/wxeKFqe7P5k/maxresdefault.jpg",
        ),
      ],
    );
  }
}
