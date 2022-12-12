import 'package:flutter/material.dart';

class ThemebottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Light",style: Theme.of(context).textTheme.bodyMedium,),
        Text("Dark",style: Theme.of(context).textTheme.bodyMedium,),
      ],);
  }
}
