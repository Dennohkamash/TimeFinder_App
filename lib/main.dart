import 'package:flutter/material.dart';
import 'Secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Rootwidget(),
      debugShowCheckedModeBanner: false,
    );
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
      body: Container(
        color: const Color(0xFF3D54A9),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.access_time,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "TIME FINDER",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 4.0,
                      fontFamily: "DeliciousHandrawn-Regular",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(top: 30),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()));
                  },
                  child: const Text(
                    "PROCEED",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "DeliciousHandrawn-Regular",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
