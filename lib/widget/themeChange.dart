// ignore: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:khudkibook/pages2/tm.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return 
   Consumer(
    builder: (context, ThemeModel themeNotifier, child) {
       return IconButton(
                  onPressed: () {
                    themeNotifier.isDark
                        ? themeNotifier.isDark = false
                        : themeNotifier.isDark = true;
                  },
                  icon: Icon(
                      themeNotifier.isDark ? Icons.wb_sunny : Icons.nightlight),
                );
    },
    
   );
  }
}