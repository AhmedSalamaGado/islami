import 'package:flutter/material.dart';
import 'package:islami/screens/home/settings/settings_tab.dart';
import 'package:provider/provider.dart';

import '../../../provider/settings_provider.dart';

class LanguagebottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    settingsProvider provider = Provider.of(context);
    return Column(
      children: [
        Container(
            child: InkWell(
                onTap: () {
                  provider.changeLocal("en");
                },
                child: Text(
                  "English",
                  style: Theme.of(context).textTheme.bodyMedium,
                ))),
        Container(
          child: InkWell(
            onTap: () {
              provider.changeLocal("ar");
            },
            child: Text(
              "العربيه",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
