import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';

class LeaveScreen extends StatelessWidget {
  LeaveScreen({super.key});

  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(titleName: 'Leave'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20 ),
        child: Column(
          children: [
            TableCalendar(
              locale: "en_US",
              rowHeight: 43,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 03, 14),
            ),
            SizedBox(height: 20,),
            Center(
              child: Table(
                border: TableBorder.all(),
                children: [
                  // Header Row
                  const TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Age',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Action',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  // Row 1
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('John'),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('25'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('View'),
                        ),
                      ),
                    ],
                  ),
                  // Row 2
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Emma'),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('30'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('View'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerRight,
              child: CustomButton(
                height: 60,
                width: 150,
                onTap: () {
                  Get.toNamed(AppRoutes.leaveNextScreen);
                },
                title: 'Next',
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Table(
                border: TableBorder.all(),
                children: [
                  // Header Row
                  const TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Age',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Action',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  // Row 1
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('John'),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('25'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('View'),
                        ),
                      ),
                    ],
                  ),
                  // Row 2
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Emma'),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('30'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('View'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 0,),
    );
  }
}
