import 'package:e_commerce_application/utils/list/list.dart';
import 'package:flutter/material.dart';

class ChildrenHomeScreen extends StatefulWidget {
  const ChildrenHomeScreen({super.key});

  @override
  State<ChildrenHomeScreen> createState() => _ChildrenHomeScreenState();
}

class _ChildrenHomeScreenState extends State<ChildrenHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.black87,
              ],
            )),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 245,
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Icon(
                          Icons.shopping_bag,
                          size: 30,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Icon(
                          Icons.qr_code_scanner_outlined,
                          size: 30,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Search...',
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 215,
                    ),
                    Icon(
                      Icons.highlight_remove,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(
                  top: 12,
                ),
                height: 50,
                width: 375,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade900,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 14, top: 12),
                child: Text(
                  'REAL TIME',
                  style: TextStyle(
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 35),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 14),
                child: Text(
                  'SHOPING',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 35),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 25),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade900),
                      child: Center(
                        child: Text(
                          '🔥',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/man');
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 25),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade900),
                      child: Center(
                        child: Text(
                          'Man',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/women');
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 25),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade900),
                      child: Center(
                        child: Text(
                          'Woman',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 25),
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade800),
                    child: Center(
                      child: Text(
                        'Children',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ...List.generate(
                      l1[0]['l4'].length,
                          (index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/detail');
                            Index=index;
                            mapIndex='l4';
                          },
                          child: product_box(
                              image: l1[0]['l4'][index]['image'],
                              name: l1[0]['l4'][index]['name'],
                              price: l1[0]['l4'][index]['price']))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget product_box(
      {required String image, required String name, required int price}) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 290, top: 8),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white54,
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    '🔥',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.only(top: 14),
          height: 250,
          width: 370,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white),
        ),
        Container(
          height: 70,
          width: 370,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      '$price/-',
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                    size: 31,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
