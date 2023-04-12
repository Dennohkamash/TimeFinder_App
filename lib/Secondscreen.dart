import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_flags/country_flags.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/standalone.dart';
import 'package:time/time.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Rootwidget();
  }
}

class Rootwidget extends StatefulWidget {
  const Rootwidget({Key? key}) : super(key: key);

  @override
  State<Rootwidget> createState() => _RootwidgetState();
}

class _RootwidgetState extends State<Rootwidget> {
  String _selectedCountryCode = "";
  late String _selectedCountryTime;
  Future<Location> getTimeZoneLocation(String timeZoneId) async {
    final database = await timeZoneDatabase;
    return database.locations[timeZoneId]!;
  }

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
          onChanged: (CountryCode? code) async {
            final now = DateTime.now();
            final location = await getTimeZoneLocation(code!.code!);
            final timeZone = location.timeZone;
            final currentTime =
                tz.TZDateTime.now(timeZone as tz.Location).toLocal();
            final formattedTime = DateFormat.jm().format(currentTime);
            setState(() {
              _selectedCountryCode = code.code!;
              _selectedCountryTime = formattedTime;
            });
          },
        ),
      ),
    );
  }
}
