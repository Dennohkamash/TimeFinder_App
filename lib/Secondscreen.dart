import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_flags/country_flags.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Rootwidget();
  }
}

class Rootwidget extends StatefulWidget {
  const Rootwidget({super.key});

  @override
  State<Rootwidget> createState() => _RootwidgetState();
}

class _RootwidgetState extends State<Rootwidget> {
  String _selectedCountryCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select a Country",
          style: TextStyle(
            fontFamily: "DeliciousHandrawn-Regular",
          ),
        ),
      ),
      body: Center(
        child: CountryListPick(
          appBar: AppBar(
            title: Text('Select country'),
          ),
          theme: CountryTheme(
            isShowFlag: true,
            isShowTitle: true,
            isShowCode: true,
            isDownIcon: true,
            showEnglishName: true,
          ),
          initialSelection: '+1',
          onChanged: (CountryCode? code) {
            setState(() {
              _selectedCountryCode = code!.code!;
            });
          },
        ),
      ),
    );
  }
}
