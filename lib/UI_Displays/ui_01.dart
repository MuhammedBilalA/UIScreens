import 'package:flutter/material.dart';

class UI01 extends StatefulWidget {
  const UI01({super.key});

  @override
  State<UI01> createState() => _UI01State();
}

class _UI01State extends State<UI01> {
  bool value1 = true;
  @override
  Widget build(BuildContext context) {
    List listtitle = [
          "Share Dhukaan App",
          "Change Language",
          "WhatsApp Chat Support",
          "Privacy Policy",
          "Rate Us",
          "Sign Out"
        ],
        leadingicon = [
          const Icon(Icons.share),
          const Icon(Icons.chat_bubble_outline_sharp),
          const Icon(Icons.wechat),
          const Icon(Icons.lock_outline),
          const Icon(Icons.star),
          const Icon(Icons.logout),
        ],
        trialingicon = [
          const Icon(Icons.arrow_forward_ios_outlined),
          Switch(
              activeColor: Colors.blue,
              value: value1,
              onChanged: (value) {
                setState(() {
                  //
                  value1 = value;
                });
              })
        ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Additional Information'),
        backgroundColor: const Color.fromARGB(255, 3, 66, 118),
      ),
      body: Column(
        children: [
          listtilefunction(
              leading: leadingicon[0],
              title: listtitle[0],
              trailing: trialingicon[0]),
          listtilefunction(
              leading: leadingicon[1],
              title: listtitle[1],
              trailing: trialingicon[0]),
          listtilefunction(
              leading: leadingicon[2],
              title: listtitle[2],
              trailing: trialingicon[1]),
          listtilefunction(
            leading: leadingicon[3],
            title: listtitle[3],
          ),
          listtilefunction(
            leading: leadingicon[4],
            title: listtitle[4],
          ),
          listtilefunction(
            leading: leadingicon[5],
            title: listtitle[5],
          ),
          const SizedBox(
            height: 350,
          ),
          Expanded(
              child: Column(
            children: const [
              Text(
                'Version 2.4.2',
                style: TextStyle(
                    color: Color.fromARGB(255, 194, 192, 192),
                    fontStyle: FontStyle.italic),
              ),
            ],
          ))
        ],
      ),
    );
  }

  listtilefunction(
      {required Widget leading, required String title, Widget? trailing}) {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: ListTile(
        leading: leading,
        title: Text(title),
        trailing: trailing,
      ),
    );
  }
}
