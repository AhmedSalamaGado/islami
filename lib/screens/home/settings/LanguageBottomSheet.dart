import 'package:flutter/material.dart';

class LanguagebottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("English",style: Theme.of(context).textTheme.bodyMedium,),
        Text("العربيه",style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}
