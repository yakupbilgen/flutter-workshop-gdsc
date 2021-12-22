import 'package:flutter/material.dart';

import '../contants/app_color_contants.dart';
import '../contants/app_text_contansts.dart';
import 'stateles_page.dart';

class StatefulWidgetPage extends StatefulWidget {
  const StatefulWidgetPage({Key? key}) : super(key: key);

  @override
  _StatefulWidgetPageState createState() => _StatefulWidgetPageState();
}

class _StatefulWidgetPageState extends State<StatefulWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppTextContants.appBarrTittle),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Placeholder(
              strokeWidth: 8,
              fallbackHeight: 200,
              fallbackWidth: 100,
              color: AppColorContants.placeholderColor,
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.star,
                size: 56,
                color: AppColorContants.iconColorTheme,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StatelesPage()));
                },
                child: const Text(AppTextContants.buttonNextPage))
          ],
        ),
      ),
    );
  }
}
