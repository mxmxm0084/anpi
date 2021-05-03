import 'package:anpi/main.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('次の画面'),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share),
        ],

      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Center(
              child: ElevatedButton(
                child: Text('戻る'),
                onPressed: (){
                  Navigator.pop(context,'れんと、りゅうとかっこいい');
                },
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}