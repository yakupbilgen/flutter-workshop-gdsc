import 'package:flutter/material.dart';

class Day4 extends StatelessWidget {
  Day4({Key? key}) : super(key: key);

  final List<Map<String, String>> contacts = [
    {
      "name": "Yakup",
      "cellNumber": "05663434110",
    },
    {
      "cellNumber": "05463434115",
    },
    {
      "name": "Hasan",
      "cellNumber": "05663434110",
    },
    {
      "name": "Emre",
      "cellNumber": "05463434115",
    },
    {
      "name": "Deniz",
      "cellNumber": "05663434110",
    },
    {
      "name": "Ebru",
      "cellNumber": "05463434115",
    },
    {
      "name": "Ayse",
      "cellNumber": "05663434110",
    },
    {
      "name": "Elif",
      "cellNumber": "05463434115",
    },
    {
      "name": "Hatice",
      "cellNumber": "05663434110",
    },
    {
      "name": "Emine",
      "cellNumber": "05463434115",
    },
    {
      "name": "Halil",
      "cellNumber": "05663434110",
    },
    {
      "name": "Hakan",
      "cellNumber": "05463434115",
    },
    {
      "name": "Osman",
      "cellNumber": "05663434110",
    },
    {
      "name": "Hamza",
      "cellNumber": "05463434115",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return Card(
                child: InkWell(
                  splashColor: Colors.pink,
                  onTap: () {
                    if (index == 0) {
                      showAboutDialog(context: context);
                    } else {
                      showDialog(
                        barrierDismissible: true,
                        context: context,
                        builder: (context) {
                          return const SimpleDialog(
                            children: [
                              Card(
                                child: Text("Closed"),
                              ),
                            ],
                          );
                        },
                      ).then((_) {
                        //...
                      });
                    }
                  },
                  child: GridTile(
                    child: Center(
                      child: Text(contacts[index]["name"] ?? ""),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  ListView seperatedListView() {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return (index % 2 == 1)
            ? const Divider(color: Colors.red)
            : const SizedBox();
      },
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return contactItemWidget(
          contacts[index]["name"]!,
          contacts[index]["cellNumber"]!,
        );
      },
    );
  }

  Widget contactItemWidget(String name, String phoneNumber) {
    return ListTile(
      leading: const Icon(Icons.circle),
      title: Text(name),
      subtitle: Text(phoneNumber),
      trailing: const Icon(Icons.arrow_forward_ios_sharp),
      onTap: () {},
    );
  }
}
