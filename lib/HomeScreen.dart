import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  final CalendarController controller = CalendarController();

  Timer clockUpdateTimer;
  DateTime time = DateTime.now();
  DateTime currentDate;
  String date;
  String hour, min;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
    currentDate = DateTime(time.year, time.month, time.day);
    date = '${getMonth(currentDate)} , ${time.day}';
    hour = '${time.hour}';
    min = reformatMinute(time);
    clockUpdateTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      updateTimer();
    });
    //TODO: Implement landing page
  }

  /// Updates the current clock time
  void updateTimer() {
    time = DateTime.now();
    setState(() {
      currentDate = DateTime(time.year, time.month, time.day);
      date = '${getMonth(time)}, ${time.day}';
      hour = '${time.hour}';
      min = reformatMinute(time);
    });
  }

  /// Returns a string with the correct month name using input date
  String getMonth(DateTime date) {
    List<String> months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    return (months[date.month - 1]);
  }

  /// Returns a string with a 0 infront if a single digit minute, for use with the displayed minutes on home page
  String reformatMinute(DateTime date) {
    if (date.minute < 10)
      return '0${date.minute}';
    else
      return '${date.minute}';
  }

  @override
  // builds the view
  Widget build(BuildContext context) {

    // scaffold generates the UI
    return new Scaffold(
      // App bar is the top most bar of the app
        appBar: AppBar(
          title: Text('Olakino'),
        ),

        body: Column(
          children: [
            Center(
              child: Text('$date', style: TextStyle(fontSize: 40)),
            ),
            Center(
              child: Text('$hour:$min', style: TextStyle(fontSize: 40)),
            ),
            Center(child: TableCalendar(calendarController: controller)),
          ],
        ),
        drawer: GlobalDrawer.getDrawer(context)
    );
  }
}