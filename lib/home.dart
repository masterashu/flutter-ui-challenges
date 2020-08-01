import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static WidgetBuilder get route {
    return (_) => HomePage();
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          "Flutter UI Challenge",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (_, i) => ListTile(
          leading: Icon(Icons.pages),
          title: Text('Challenge ${i + 1}'),
          onTap: () {
            Navigator.of(context).pushNamed('/${i + 1}');
          },
        ),
      ),
    );
  }
}
