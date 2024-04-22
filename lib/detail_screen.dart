import 'package:e_commerce_application/utils/list/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
          child: Column(
            children: [
                     img(
                    image: all[Index]['image'],
                  ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Container(
                  height: 80,
                  width: 460,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 21, top: 10),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '38',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 21, top: 10),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '40',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 21, top: 10),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              '42',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: Colors.grey.shade300,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 21, top: 10),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '44',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 21, top: 10),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '46',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              detail(),
            ],
          ),
        ),
      ),
    );
  }

  Container img({required String image}) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 460,
      width: 380,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 300, left: 5),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade900,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(7),
                ),
                padding: EdgeInsets.only(left: 7),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 230,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 300,
            ),
            child: Container(
                height: 35,
                width: 35,
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
                  size: 25,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 300,
            ),
            child: Container(
                height: 35,
                width: 35,
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
                  size: 25,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }

  Container detail() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 318.0445,
      width: 380,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 17, top: 5),
                  child: Text(
                    all[Index]['name'],
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 33,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.only(right: 220, top: 3),
              child: Text(
                'Description : ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(19, 0, 10, 0),
            child: Text(
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 19, top: 10),
            decoration: BoxDecoration(),
            alignment: AlignmentDirectional(-1, 0),
            child: Text(
              'Price',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(),
            alignment: AlignmentDirectional(-1, 0),
            child: Text(
              '${all[Index]['price']}/-',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              cart.add(all[Index]);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    ' ADD TO CART',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
