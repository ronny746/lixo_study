import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lixo_study/screens/subject_chapters.dart';
import 'package:lixo_study/widgets/sub_card.dart';

class SubjectCoursePage extends StatelessWidget {
  const SubjectCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  Expanded(
                    child: Text(
                      "Prayas JEE 2.0 2024",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GridView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(const SubjectChaptersPage(),
                            transition: Transition.fade);
                      },
                      child: const SubCard(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
