import 'package:flutter/material.dart';
import 'package:noteapp/Screens/Home_Screen.dart';
// import 'package:noteapp/Screens/homescreen.dart';

class CreateNotes extends StatefulWidget {
  const CreateNotes({super.key});

  @override
  State<CreateNotes> createState() => _CreateNotesState();
}

class _CreateNotesState extends State<CreateNotes> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController timeFrom = TextEditingController();
  TextEditingController timeTo = TextEditingController();
  var _selectedPriority = "Medium";

  List myTodo = [
    {
      "title": "Flutter Class",
      'description': 'class assignment',
      "from": "12:00",
      'to': '03:00',
      'Priority':'Medium'
    },
  ];

  addToTodo() {
    if (title.text != "" && description.text != "") {
      setState(() {
        myTodo.add({
          "title": title.text,
          'description': description.text,
          'from': timeFrom.text,
          'to': timeTo.text,
          'Priority':_selectedPriority,
        });
        print(myTodo);
        print(_selectedPriority);
        title.clear();
        description.clear();
        timeFrom.clear();
        timeTo.clear();
      });
    } else {
      print("your Field is empty");
    }
  }

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ListTile(
              title: Text(
                "Create a new task",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              trailing: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: timeFrom,
                    decoration: InputDecoration(labelText: 'From'),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: TextField(
                    controller: timeTo,
                    decoration: InputDecoration(labelText: 'To'),

                  ),
                ),
              ],
            ),
            TextField(
              controller: title,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: description,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 20),
            const Text('Choose Priority'),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedPriority = "High";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('High'),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedPriority = "Medium";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: const Text('Medium'),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedPriority = "Low";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text('Low'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 280,),
            SizedBox(
              width: double.infinity,
              height: 43,
              child: 
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  Home_Screen()),
                    );
                  },style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFC00E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  child: const Text("View Notes"),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 43,
              child: 
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ElevatedButton(
                  onPressed: addToTodo,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff79AF92),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text("Add", style: TextStyle(fontWeight: FontWeight.w400),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
