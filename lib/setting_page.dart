import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("Settings"),
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _notifications = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Notifications'),
      value: _notifications,
      onChanged: (bool value) {
        setState(() {
          _notifications = value;
        });
      },
      secondary: const Icon(Icons.notifications),
    );
  }
}
