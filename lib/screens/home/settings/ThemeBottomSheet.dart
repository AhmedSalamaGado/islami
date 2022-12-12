import 'package:flutter/material.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemebottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    settingsProvider provider = Provider.of(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            provider.changeThema(ThemeMode.light);
          },
          child: Container(
              child: Text(
            "Light",
            style: Theme.of(context).textTheme.bodyMedium,
          )),
        ),
        InkWell(
          onTap: () {
            provider.changeThema(ThemeMode.dark);
          },
          child: Container(
              child: Text(
            "Dark",
            style: Theme.of(context).textTheme.bodyMedium,
          )),
        ),
      ],
    );
  }
}
