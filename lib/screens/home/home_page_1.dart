import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2E292E),
      appBar: AppBar(
        backgroundColor: const Color(0xff464646),
      ),
      body: const Center(
        child: Text("Home Page 1"),
      ),
    );
  }
}
