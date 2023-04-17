import 'package:flutter/material.dart';

class UI03 extends StatelessWidget {
  const UI03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          centerTitle: true,
          title: Text('Payments'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.info_outline_rounded,
                  size: 28,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _cardwidgetTop(),
            _sizedHeightBox(10),
            _titlewidget('Default Method', 'Online Payments',
                Icons.arrow_forward_ios_rounded),
            _sizedHeightBox(15),
            _titlewidget('Payment Profile', 'Bank Account',
                Icons.arrow_forward_ios_rounded),
            _sizedHeightBox(5),
            _Divider(),
            _sizedHeightBox(3),
            _titlewidget('Payment OverView', 'Life Time',
                Icons.arrow_drop_down_outlined),
            _contnrcolor(),
            _sizedHeightBox(10),
            const Text(
              '   Transaction',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _cardrounded(' On Hold ', Colors.grey),
                  _cardrounded(' Payout (50) ', Colors.blue),
                  _cardrounded(' Refunds ', Colors.grey)
                ],
              ),
            ),
            _sizedHeightBox(4),
            _itemList(
                'assets/images/i1.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i2.jpg', '1175654', 'May 10, 06:05', '699'),
            _itemList(
                'assets/images/i3.jpg', '1173253', 'Mar 09, 02:06', '519'),
            _itemList(
                'assets/images/i4.jpg', '1173487', 'Mar 09, 02:06', '999'),
            _itemList(
                'assets/images/i5.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i1.jpg', '1173537', 'Mar 09, 02:06', '899'),
            _itemList(
                'assets/images/i2.jpg', '1173537', 'Mar 09, 02:06', '569'),
            _itemList(
                'assets/images/i3.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i4.jpg', '1173537', 'Mar 09, 02:06', '599'),
            _itemList(
                'assets/images/i5.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i6.jpg', '1173537', 'Mar 09, 02:06', '869'),
            _itemList(
                'assets/images/i1.jpg', '1173537', 'Mar 09, 02:06', '999'),
            _itemList(
                'assets/images/i2.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i3.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i4.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i5.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i6.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i1.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i2.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i3.jpg', '1173537', 'Mar 09, 02:06', '799'),
            _itemList(
                'assets/images/i5.jpg', '1173537', 'Mar 09, 02:06', '799'),
          ]),
        ));
  }

  Widget _sizedHeightBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget _cardrounded(String text, Color color) {
    return Chip(
      padding: EdgeInsets.all(10),
      label: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
    );
  }

  Widget _itemList(String image, String id, String date, String price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
          ),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 50,
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, bottom: 3),
                child: Column(
                  children: [
                    Text(
                      'Order #${id}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(date),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '₹${price}',
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                      ),
                      Text(' Successfull'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 10),
          child: Text('₹${price} deposited for 86642628${id}'),
        ),
        const Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: Colors.black,
            thickness: 0.3,
          ),
        )
      ],
    );
  }

  Widget _contnrcolor() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 16, top: 5),
          child: Card(
            elevation: 7,
            color: Colors.orange,
            shadowColor: Colors.black,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.orange[400]),
              width: 180,
              
              height: 85,
              child: Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _sizedHeightBox(13),
                    const Text(
                      'AMOUNT ON HOLD',
                      style: TextStyle(color: Colors.white),
                    ),
                    _sizedHeightBox(5),
                    const Text(
                      '₹0',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 5),
          child: Card(
            elevation: 7,
            color: Colors.orange,
            shadowColor: Colors.black,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color: Colors.green),
              width: 180,
              height: 85,
              child: Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _sizedHeightBox(13),
                    const Text(
                      'AMOUNT RECIEVED',
                      style: TextStyle(color: Colors.white),
                    ),
                    _sizedHeightBox(5),
                    const Text(
                      '₹13,332',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _Divider() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Divider(
        thickness: 0.6,
        color: Colors.black,
      ),
    );
  }

  Widget _titlewidget(String head, String tail, icon) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            head,
            style: TextStyle(fontSize: 16),
          ),
          Row(
            children: [
              Text(
                tail,
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                icon,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardwidgetTop() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 3,
        shadowColor: Colors.black,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Colors.white),
          height: 180,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sizedHeightBox(5),
              const Text(
                '  Transaction Limit',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              _sizedHeightBox(8),
              const Text(
                '''  A free limit up to which you will recieve the online payments
  directly in your bank''',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              _sizedHeightBox(15),
              const Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    color: Colors.blue,
                    value: 0.4,
                  ),
                ),
              ),
              _sizedHeightBox(10),
              const Text(
                '  ₹32,668 left out of ₹50000',
                style: TextStyle(color: Colors.grey),
              ),
              _sizedHeightBox(10),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      'Increase limit',
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
