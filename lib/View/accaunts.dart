import 'package:flutter/material.dart';
import 'Show_user.dart';
import 'package:get/get.dart';
class Accaunts extends StatefulWidget {
  const Accaunts({super.key});
  @override
  State<Accaunts> createState() => _AccauntsState();
}

List Accaunt = [];

TextEditingController name = TextEditingController();
TextEditingController mony = TextEditingController();

class _AccauntsState extends State<Accaunts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jwali"), centerTitle: true),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(7.0),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid,
                    width: 5,
                  ),
                ),

                fillColor: Colors.black,
                labelText: "Name",
                hintText: "Input your name",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(7.0),
            child: TextField(
              controller: mony,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid,
                    width: 5,
                  ),
                ),
                fillColor: Colors.black,
                labelText: "Monay",
                hintText: "Input your Monay",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () {
                  setState(() {});
                  String a = "Name : " + name.text + " Monay : " + mony.text;
                  Accaunt.add(a);
                },
                child: Text("Add user", style: TextStyle(color: Colors.black)),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AllUsers(all_user: Accaunt),
                    ),
                  );
                },
                child: Text(
                  "Show all users",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Accaunt.length,
              itemBuilder: (context, i) => Card(
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {
                      setState(() {});
                      Accaunt.removeAt(i);
                    },
                    icon: Icon(Icons.delete_forever, color: Colors.red),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {});
                      String a =
                          "Name : " + name.text + " Monay : " + mony.text;

                      Accaunt[i] = a;
                    },
                    icon: Icon(Icons.edit, color: Colors.blue),
                  ),
                  onTap: () {
                    String a = "Name : " + name.text + " Monay : " + mony.text;
                    a = Accaunt[i];
                  },
                  title: Text(Accaunt[i], textAlign: TextAlign.center),
                  textColor: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
