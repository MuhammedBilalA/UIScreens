import 'package:project_03/UI_Displays/product_object.dart';

List<Product> productlist = [];
productlistcreating() {
  List imagelist = [
    "https://images.pexels.com/photos/291759/pexels-photo-291759.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3JWag1xOfeApX9LgG61MW4A5CWaLZu__3tg&usqp=CAU",
    "https://cdn.shopify.com/s/files/1/1305/2183/products/EmojiMugs_17_1024x1024.jpg?v=1606895774",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcdfTnxOpz8Wq_V77RB7fjBT70OEj1CW3vpw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvSJeM-TSYW0bAv_L-0OpR-EykQuuWqolnbLMm9b4R1ZVPDXerbLiYq9lkQiC4BKIxynY&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi79oXZF206v4TcCXnclnkf5WMUuiad3cXKw&usqp=CAU",
    "https://images.unsplash.com/photo-1588449668365-d15e397f6787?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWNvdXN0aWMlMjBndWl0YXJ8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1612225330812-01a9c6b355ec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dmlvbGlufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ27OP7-PgrkDo0DT78QKadL5TSVJInCLMu5w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-BeHkKvrw8mi39kdDJXXYAdCkY32Hiois3w&usqp=CAU",
  ];
  List namelist = [
    "Couch  Potato | Women Dresses  (WHITE Yes)",
    "Couch  Potato | Men Dresses String (6 Strings)",
    "Mug |Explore",
    "Couch  Potato | Women Dresses  (BROWN Yes)",
    "Couch  Potato | Men Dresses String  (6 Strings)",
    "Couch Potato | Kids Dresses",
    "KADENCE KAD-NAT-C Acoustic Guitar Spruce Rosewood Right Hand Orientation  (Beige)",
    "KADENCE V001WH-C 4/4 Classical (Modern) Violin (WHITE Yes)",
    "Couch Potato |Kids Dresses Combo",
    "Mug |Orchard",
  ];
  List quantitylist = [
    1,
    1,
    1,
    1,
    2,
    1,
    1,
    3,
    1,
    1,
  ];
  List<num> amount = [
    799,
    799,
    399,
    699,
    449,
    599,
    1299,
    1199,
    799,
    150,
  ];
  for (int i = 0;
      i < imagelist.length &&
          i < namelist.length &&
          i < quantitylist.length &&
          i < amount.length;
      i++) {
    productlist.add(Product(
        image: imagelist[i],
        title: namelist[i],
        quantity: quantitylist[i],
        price: amount[i],
        instock: true));
  }

  productlist[1].instock = false;
  productlist[5].instock = false;
  productlist[3].instock = false;
}
