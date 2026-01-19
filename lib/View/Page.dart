import 'package:flutter/material.dart';
class MYPage extends StatelessWidget {
  const MYPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page 2")),
      body: Center(
        child: Text("مرحبا انا نيال عادل", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
