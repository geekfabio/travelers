import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            crossAxisCount: 3,
          ),
          children: [
            builDashItem("Option 1", Icons.access_alarms),
            builDashItem("Option 1", Icons.access_alarms),
            builDashItem("Option 1", Icons.access_alarms),
            builDashItem("Option 1", Icons.access_alarms),
            builDashItem("Option 1", Icons.access_alarms),
            builDashItem("Option 1", Icons.access_alarms),
          ],
        ),
      ),
    );
  }

  Container builDashItem(String optionName, IconData optionIcon) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.red),
      ),
      width: 100,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            optionIcon,
            size: 50,
            color: Colors.blue,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            optionName,
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
