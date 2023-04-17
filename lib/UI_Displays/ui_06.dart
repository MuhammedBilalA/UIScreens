import 'package:flutter/material.dart';
import 'package:project_03/UI_Displays/product_object.dart';
import 'package:project_03/UI_Displays/productlist.dart';

class UI06 extends StatefulWidget {
  const UI06({super.key});

  @override
  State<UI06> createState() => _UI06State();
}

class _UI06State extends State<UI06> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    productlistcreating();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Catalog'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.white,
              tabs: const [
                Tab(
                  text: 'Products',
                ),
                Tab(
                  text: 'Catagories',
                )
              ]),
        ),
        body: TabBarView(controller: tabController, children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CardMaker(obj: productlist[0]),
                  CardMaker(obj: productlist[1]),
                  CardMaker(obj: productlist[2]),
                  CardMaker(obj: productlist[3]),
                  CardMaker(obj: productlist[4]),
                  CardMaker(obj: productlist[5]),
                  CardMaker(obj: productlist[6]),
                  CardMaker(obj: productlist[7]),
                  CardMaker(obj: productlist[8]),
                  CardMaker(obj: productlist[9]),
                  CardMaker(obj: productlist[1]),
                ],
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 15,
              shadowColor: Colors.yellow,
              child: Container(
                width: 400,
                height: 200,
                color: const Color.fromARGB(255, 198, 165, 248),
                child: const Center(
                    child: Text(
                  'Catagories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                )),
              ),
            ),
          )
        ]));
  }
}

class CardMaker extends StatefulWidget {
  late String image;
  late String name;
  late int quantity;
  late num price;
  late bool instock;

  CardMaker({super.key, required Product obj}) {
    image = obj.image;
    name = obj.title;
    quantity = obj.quantity;
    price = obj.price;
    instock = obj.instock;
  }

  @override
  State<CardMaker> createState() => _CardMakerState();
}

class _CardMakerState extends State<CardMaker> {
  late bool value1;

  @override
  void initState() {
    super.initState();

    value1 = widget.instock;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        widget.image,
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 245,
                                child: Text(
                                  widget.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                  overflow: TextOverflow.ellipsis,
                                )),
                            const Icon(Icons.more_vert_outlined)
                          ],
                        ),
                        Text(
                          "${widget.quantity} piece",
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(
                          "₹${widget.price}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                widget.instock ? "In stock" : "Out of stock",
                                style: TextStyle(
                                    color: widget.instock
                                        ? Colors.green
                                        : Colors.red),
                              ),
                            ),
                            Switch(
                                activeColor: Colors.blue,
                                value: value1,
                                onChanged: (value) {
                                  setState(() {
                                    if (value1 == true) {
                                      value1 = false;
                                    } else {
                                      value1 = true;
                                    }
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: .5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.share_outlined,
                        size: 26,
                      ),
                    ),
                  ),
                  const Text(
                    'Share Product',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
