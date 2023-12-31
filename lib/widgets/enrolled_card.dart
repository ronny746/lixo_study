import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lixo_study/screens/subject_course_page.dart';

class EnrolledCourseCard extends StatelessWidget {
  const EnrolledCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                "https://d2bps9p1kiy4ka.cloudfront.net/5eb393ee95fab7468a79d189/c9c0f7ec-09a0-43d6-b270-ba8fcebd434b.png"),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Prayas JEE 2.0 2024",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Enrolled",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    FilledButton(
                      onPressed: () {
                        Get.to(const SubjectCoursePage(),
                            transition: Transition.fade);
                      },
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF051FBF))),
                      child: const Text(
                        "Study Now",
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
