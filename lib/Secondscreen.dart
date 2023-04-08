import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Rootwidget();
  }
}

class Rootwidget extends StatefulWidget {
  const Rootwidget({super.key});

  @override
  State<Rootwidget> createState() => _RootwidgetState();
}

class _RootwidgetState extends State<Rootwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Select a Country",
          style: TextStyle(
            fontFamily: "DeliciousHandrawn-Regular",
          ),
        ),
      ),
    );
  }
}
