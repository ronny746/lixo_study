import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth_controller.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {

    final AuthController controller = Get.put(AuthController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Center(
           child: Text(
            "Accounts",
            style: Theme.of(context).textTheme.titleLarge,
                   ),
         ),
        SizedBox(height: 40,),
        CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage("https://www.google.com/imgres?imgurl=https%3A%2F%2Fpng.pngtree.com%2Fpng-vector%2F20190710%2Fourmid%2Fpngtree-user-vector-avatar-png-image_1541962.jpg&tbnid=cPXYODj90LFBgM&vet=12ahUKEwjci6rZ0LyDAxV3kmMGHUGuDIIQMygAegQIARBS..i&imgrefurl=https%3A%2F%2Fpngtree.com%2Ffree-png-vectors%2Favatar&docid=zKNN2wQnj2wLMM&w=360&h=360&q=user%20avatar%20example&hl=en&ved=2ahUKEwjci6rZ0LyDAxV3kmMGHUGuDIIQMygAegQIARBS") ),
        SizedBox(height: 10,),
        Text("User Name",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            fontSize: 18
          ),),
        Text(controller.user?.email ?? "User Email",
        style: TextStyle(
          color: Colors.black
        ),),
        SizedBox(height: 25,),
        Column(
          children: [
            buildOption('My Courses', Icons.book),
            buildOption('Settings', Icons.settings),
            buildOption('Privacy Policy', Icons.privacy_tip),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                controller.logout();
              },
                child: buildOption('Logout', Icons.exit_to_app)),
          ],
        )
      ],
    );
  }

  Widget buildOption(String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24,color: Colors.black45,),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
