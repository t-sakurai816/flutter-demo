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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = '次へ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("直書きもできる"),
      ),
      body: Container(
        width: double.infinity, //幅すべて
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //中央寄せ
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.liquor,
              size: 200,
            ),
            RaisedButton(
              child: Text(text),
              onPressed: () async {
                //ここに押したら反応するコードを書く
                //画面遷移のコードを書く
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    //呼び出すクラスは画面遷移したいファイル名
                    builder: (context) => NextPage('Sakurai'),
                  ),
                );
                setState(() {
                  text = result;
                });
                print(result);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
