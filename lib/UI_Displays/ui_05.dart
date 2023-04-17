import 'package:flutter/material.dart';

class UI05 extends StatelessWidget {
  const UI05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Order #1688068'),
        backgroundColor: Colors.blue[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'May 31, 05:42 PM',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue[700]),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        'Delivered',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              const Divider(
                color: Color.fromARGB(255, 193, 188, 188),
                thickness: 1,
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '1 ITEM ',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.grey),
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        height: 25,
                        width: 20,
                        child: Icon(
                          Icons.receipt_rounded,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'RECEIPT',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 65,
                    child: Image.asset(
                      'assets/images/i3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Explore | Men | Navy Blue',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '1 piece',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        'Size : XL',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.looks_one_outlined,
                            color: Color.fromARGB(255, 58, 123, 176),
                            size: 30,
                          ),
                          Text(
                            'X ₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blueGrey),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              const Divider(
                color: Color.fromARGB(255, 193, 188, 188),
                thickness: 1,
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Item Total',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  Text(
                    '₹799',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Delivery',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  Text(
                    'FREE',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Colors.green),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Grand Total',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Text(
                    '₹799',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              const Divider(
                color: Color.fromARGB(255, 193, 188, 188),
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'CUSTOMER DETAILS',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.grey),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                      ),
                      const Text(
                        '  SHARE',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Deepa',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '+91-7829000484',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color.fromARGB(255, 65, 62, 62)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.blue,
                            size: 35,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chat_bubble_outline_rounded,
                          color: Colors.green,
                          size: 35,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Address',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                '''D 1101 Chartered Beverly
Hills, Subramanyapura P.O Alappuzha''',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Color.fromARGB(255, 65, 62, 62)),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'City',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Banglalore',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Color.fromARGB(255, 65, 62, 62)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  SizedBox(
                    height: 70,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pincode',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '560061',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Color.fromARGB(255, 65, 62, 62)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Payment',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Color.fromARGB(255, 65, 62, 62)),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 250,
                  ),
                  Container(
                    height: 23,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromARGB(255, 186, 240, 187)),
                    child: const Padding(
                      padding: EdgeInsets.all(3),
                      child: Text(
                        '   PAID  ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.green),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              const Divider(
                color: Color.fromARGB(255, 193, 188, 188),
                thickness: 1,
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'ADDITIONAL INFORMATION',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'State',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Karnataka',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Color.fromARGB(255, 65, 62, 62)),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Email',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'greeniceaqua@gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Color.fromARGB(255, 65, 62, 62)),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 2,
                      backgroundColor: const Color.fromARGB(255, 236, 240, 246),
                      side: const BorderSide(
                        color: Colors.blue,
                        width: 1.5,
                      )),
                  onPressed: () {},
                  child: const SizedBox(
                    width: 380,
                    height: 55,
                    child: Center(
                      child: Text(
                        'Share receipt',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                            color: Colors.blue),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
