import 'package:flutter/cupertino.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      child: Center(
        child: Text("My Page"),
      ),
    );
  }
}
