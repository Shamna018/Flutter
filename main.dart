import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text('Calculator', style: TextStyle(color: Colors.red))),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: Container(
                height: 80,
                width: 200,
                child: Text('1234'),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton(Text('Ac')),
                buildTextButton(Text('+/-')),
                buildTextButton(Text('%')),
                buildTextButton(Text('/'))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton(Text('7')),
                buildTextButton(Text('8')),
                buildTextButton(Text('9')),
                buildTextButton(Text('*'))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton(Text('4')),
                buildTextButton(Text('5')),
                buildTextButton(Text('6')),
                buildTextButton(Text('-'))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton(Text('1')),
                buildTextButton(Text('2')),
                buildTextButton(Text('3')),
                buildTextButton(Text('+'))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextButton(Text('0')),
                buildTextButton(Text('.')),
                buildTextButton(Text('=')),
              ],
            )

          ],
        ),
      ),
    ));
  }

  TextButton buildTextButton(Text text) {
    return TextButton(onPressed: () {}, child: text,
    );
  }
}
