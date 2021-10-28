import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Image.asset('assets/images/logo_image.png')],
        ),
      ],
    );
  }
}
