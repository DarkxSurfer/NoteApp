import 'package:flutter/material.dart';
import 'package:noteapp/Screens/Create_Note.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8A9DFF),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "My Notes",
          style: TextStyle(fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "  Manage your Daily TO DO ",
              style: TextStyle(fontSize: 40),
            ),
            Image.asset('assets/image.png', height: 500, width: 300),
            const Text(
              "Without much worry just manage \n things as easy as piece of cake",
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateNotes()),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFC00E)),
                  child: const Text("Create a Note")),
            )
          ],
        ),
      ),
    );
  }
}
