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
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3, //横のリストの数
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Column(
              children: [
                Expanded( //画像のサイズをいい感じにする
                  child: Image.network(
                      'https://avatars2.githubusercontent.com/u/53470730?s=460&u=e4dc5d4e559b0cfc32d7794e4f76327d28f447ab&v=4'),
                ),
                Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
