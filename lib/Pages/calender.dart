import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 204, 187),
        elevation: 0,
        title: const Text(
          'schedule',
          style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
        ),
      ),
      body: SfCalendar(
        view: CalendarView.week,
        initialDisplayDate: DateTime(2023, 02, 5, 8, 30),
        dataSource: MeetingDataSource(getAppointments()),
      ),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 5));

  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Japanese: Words and Expressions for Everyday Life',
      color: Colors.blue,
      recurrenceRule: 'FREQ=DAILY;COUNT=1',
      isAllDay: false));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
