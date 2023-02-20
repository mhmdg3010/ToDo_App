import 'package:flutter/cupertino.dart';

class Sports_Screen extends StatelessWidget {
  const Sports_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Sports',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          )
      ),
    );
  }
}
