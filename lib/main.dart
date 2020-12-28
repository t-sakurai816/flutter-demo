import 'package:flutter/material.dart';
import 'package:flutter_demo/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'KBOYのFlutter大学をやる'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("直書きもできる"),
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: items.length, //itemの個数
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                '${items[index]}',
              ),
            );
          },
        ),
      ),
    );
  }
}
