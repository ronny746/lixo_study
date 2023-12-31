import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lixo_study/screens/lecture_page.dart';

class SubAllVIdeosPage extends StatelessWidget {
  const SubAllVIdeosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                        "Batch Demo Videos",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const TabBar(
                  indicatorWeight: 3,
                  indicatorColor: Color(0xFF051FBF),
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.video_call),
                      text: "Lectures",
                    ),
                    Tab(
                      icon: Icon(Icons.note),
                      text: "Notes",
                    ),
                    Tab(
                      icon: Icon(Icons.poll_rounded),
                      text: "Dpp",
                    ),
                    Tab(
                      icon: Icon(Icons.video_camera_back_rounded),
                      text: "Dpp Sol",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Expanded(
                  child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      LecturesPage(),
                      Center(child: Text("Nothing to show Here")),
                      Center(child: Text("Nothing to show Here")),
                      Center(child: Text("Nothing to show Here")),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
