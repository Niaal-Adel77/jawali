import 'package:flutter/material.dart';
import 'myapp.dart';
class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      appBar: AppBar(
        title: Text("Login", style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 45, 45, 45),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(7),
            child: TextField(
              controller: _name,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Name",
                icon: Icon(Icons.account_circle_rounded, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7),
            child: TextField(
              controller: _password,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Password",
                icon: Icon(Icons.password, color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_name.text == "niaal" && _password.text == "123") {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => MyApp()),
                  (route) => false,
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) =>
                      AlertDialog(content: Text("name/password not true")),
                );
              }
            },
            child: const Text("تسجيل الدخول"),
          ),
        ],
      ),
    );
  }
}
