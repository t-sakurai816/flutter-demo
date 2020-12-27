import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  //NextPageを呼び出すときにnameを入れる
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次の画面"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //中央寄せ
          children: <Widget>[
            Text(name),
            Center(
              child: RaisedButton(
                child: Text('戻る'),
                onPressed: () {
                  //ここに押したら反応するコードを書く
                  //戻る処理
                  Navigator.pop(context, 'I will be back');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
