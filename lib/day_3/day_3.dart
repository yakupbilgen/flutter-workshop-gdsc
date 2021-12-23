import 'package:flutter/material.dart';

import './widgets_pages/auto_complete_widget.dart';
import 'widgets_pages/my_form.dart';

class Day3 extends StatelessWidget {
  const Day3({Key? key}) : super(key: key);
/* 
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Flutter Input Widgets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AutoCompleteWidget(),
                    ),
                  );
                },
                title: const Text("Autocomplete Widget"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  //

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MyForm(),
                    ),
                  );
                },
                title: const Text("Form Widget"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
