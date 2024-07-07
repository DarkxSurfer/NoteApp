import 'package:flutter/material.dart';
import 'package:noteapp/Screens/create_note.dart';
import 'package:noteapp/Widgets/priorityContainer.dart';

// ignore: camel_case_types
class Home_Screen extends StatefulWidget {
   Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

// ignore: camel_case_types
class _Home_ScreenState extends State<Home_Screen> {
  List myTodo = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff8A9DFF),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "My Notes",
            style: TextStyle(fontSize: 40),
          ),
          centerTitle: true,
        ),
        body:  SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const ListTile(
            title: Text(
              "Welcome to Notes",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Have a great Day",
              style: TextStyle(fontSize: 20),
            ),
            trailing: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
          ),
          const Text(
            "My Priority Task ",
            style: TextStyle(fontSize: 24),
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(children: [
                  PriContainer(
                    image: ('assets/camera.png'),
                    title: '2 hours Ago',
                    heading1: 'Mobile App',
                    heading2: 'UI Design',
                    subTitle: 'Using figma\nand other tool',
                  ),
                  SizedBox(
                    width: 05,
                  ),
                  PriContainer(
                      title: '4 hours Ago',
                      heading1: 'Capture sun',
                      heading2: 'Rise Shots',
                      subTitle: 'complete GuroShorts\nChallenging',
                      image: 'assets/mobile.png')
                ])),
                


            
          ]),
          const SizedBox(height: 20,),
                /// Task bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Text('My Tasks',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
                  IconButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateNotes()),
                    );}, icon: const Icon(Icons.add))
                ],
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: Text("Today's Task",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold))),
                    Expanded(child: Text("Weekly Task",style: TextStyle(fontSize: 17))),
                    Expanded(child: Text("Monthly Task",style: TextStyle(fontSize: 17,))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: myTodo.length,
                itemBuilder: (context, ind) {
                  return ListTile(
                    title: Text("${myTodo[ind]["title"]}"),
                    subtitle: Text("${myTodo[ind]["description"]}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            setState(() {
                              myTodo.removeAt(ind);
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                      ],

                    ),

                  );
                })
        ])));
  }
}
