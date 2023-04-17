import 'package:flutter/material.dart';

class UI02 extends StatefulWidget {
  const UI02({super.key});

  @override
  State<UI02> createState() => _UI02State();
}

class _UI02State extends State<UI02> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[700],
        title: const Text('Manage Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _cardWidget(text: '''Marketing 
Design''', icon: Icons.business_center_sharp, color: Colors.orange),
                _cardWidget(text: '''Online
Payments''', icon: Icons.payment_sharp, color: Colors.green)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _cardWidget(text: '''Discound
Coupons''', icon: Icons.percent, color: Colors.yellow[600]),
                _cardWidget(
                    text: '''My
Customers''',
                    icon: Icons.people_alt_outlined,
                    color: const Color.fromARGB(255, 27, 147, 89))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _cardWidget(text: '''Store QR
Code''', icon: Icons.qr_code_scanner_rounded, color: Colors.grey),
                _cardWidget(text: '''Extra
Charges''', icon: Icons.currency_rupee_sharp, color: Colors.deepPurple)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _cardWidget(
                    isnew: true,
                    text: '''Order
From''',
                    icon: Icons.format_align_center,
                    color: Colors.pinkAccent[700])
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 11,
        unselectedFontSize: 11,
        // type: BottomNavigationBarType.shifting,
        iconSize: 25,

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onTapped,
        items: [
          _bottomnavitm(icon: Icons.home, label: 'Home'),
          _bottomnavitm(icon: Icons.shopping_bag, label: 'Orders'),
          _bottomnavitm(icon: Icons.window_sharp, label: 'Product'),
          _bottomnavitm(icon: Icons.menu_open_rounded, label: 'Manage'),
          _bottomnavitm(icon: Icons.person, label: 'Accounts')
        ],
      ),
    );
  }

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _bottomnavitm({required icon, required label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }

  _newAdder(bool isnew, icon, color) {
    if (!isnew) {
      return Container(
        height: 50,
        width: 50,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(6), color: color),
        child: Icon(
          icon,
          size: 38.0,
        ),
      );
    } else {
      return Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: color),
            child: Icon(
              icon,
              size: 38.0,
            ),
          ),
          const SizedBox(
            width: 70,
          ),
          Container(
            height: 23,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 70, 228, 75)),
            child: const Center(
              child: Text(
                ' NEW ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          )
        ],
      );
    }
  }

  _cardWidget(
      {required String text,
      required icon,
      required color,
      bool isnew = false}) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 40,
        color: Colors.white,
        shadowColor: Colors.black45,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: 195,
          height: 140,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 15, right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _newAdder(isnew, icon, color),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
