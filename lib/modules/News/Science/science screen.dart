import 'package:flutter/cupertino.dart';

class Science_Screen extends StatelessWidget {
  const Science_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Science',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          )
      ),
    );
  }
}
