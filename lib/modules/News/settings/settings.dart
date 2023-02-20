import 'package:flutter/cupertino.dart';

class settings_Screen extends StatelessWidget {
  const settings_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          )
      ),
    );
  }
}
