import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_03/UI_Displays/ui_01.dart';
import 'package:project_03/UI_Displays/ui_02.dart';
import 'package:project_03/UI_Displays/ui_03.dart';
import 'package:project_03/UI_Displays/ui_04.dart';
import 'package:project_03/UI_Displays/ui_05.dart';
import 'package:project_03/UI_Displays/ui_06.dart';
import 'package:project_03/UI_Displays/verthe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Home Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _elevatedButton(
              title: 'UI-1',
              context: context,
              screen: UI01(),
            ),
            _sizedBox(),
            _elevatedButton(
              title: 'UI-2',
              context: context,
              screen: const UI02(),
            ),
            _sizedBox(),
            _elevatedButton(
              title: 'UI-3',
              context: context,
              screen: const UI03(),
            ),
            _sizedBox(),
            _elevatedButton(
              title: 'UI-4',
              context: context,
              screen: const UI04(),
            ),
            _sizedBox(),
            _elevatedButton(
              title: 'UI-5',
              context: context,
              screen: const UI05(),
            ),
            _sizedBox(),
            _elevatedButton(
              title: 'UI-6',
              context: context,
              screen: const UI06(),
            ),
            _sizedBox(),
            _elevatedButton(
              title: 'Ui_Design4',
              context: context,
              screen: const Ui_Design4(),
            ),
          ],
        ),
      ),
    );
  }

  _sizedBox() {
    return const SizedBox(
      height: 50,
    );
  }

  _elevatedButton({required String title, required context, required screen}) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => screen)));
        },
        child: Text(
          title,
          style: TextStyle(),
        ));
  }
}
