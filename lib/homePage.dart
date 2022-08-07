import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onboarding_plant/onboarding.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  Text("Home"),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.account_circle_sharp))
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {},
                      ),
                      hintText: 'Find perfect plant..',
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "indoor plant",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(0, 2),
                              blurRadius: 15),
                        ],
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.teal.shade700),
                  ),
                  Text("outdoor plant",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey)),
                  Text("flower plant",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              // border: Border.all(
                              //   color: Color.fromARGB(255, 176, 166, 166),
                              //   width: 1,
                              // ),

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.15),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            width: 200,
                            height: 300,
                            child: Column(
                              children: [
                                Image.network(
                                  'https://i.pinimg.com/564x/97/6f/7e/976f7e960b1564f8f9d3c9aaa47af056.jpg',
                                  width: 200,
                                  height: 190,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text("Freash Green Plant",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.teal.shade700)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("%15.5",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 89, 198, 183))),
                                OutlinedButton(
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      primary: Colors.white,
                                      backgroundColor: Colors.teal.shade700,
                                    ),
                                    onPressed: () {},
                                    child: Text("Add to Cart",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)))
                              ],
                            )),
                        //////////////////////////////
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              // border: Border.all(
                              //   color: Color.fromARGB(255, 176, 166, 166),
                              //   width: 1,
                              // ),

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.15),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            width: 200,
                            height: 300,
                            child: Column(
                              children: [
                                Image.network(
                                  'https://i.pinimg.com/564x/84/93/c8/8493c8b2d717faa8012ab00efed5ca69.jpg',
                                  width: 200,
                                  height: 190,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text("Freash Green Plant",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.teal.shade700)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("%15.5",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 89, 198, 183))),
                                OutlinedButton(
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      primary: Colors.white,
                                      backgroundColor: Colors.teal.shade700,
                                    ),
                                    onPressed: () {},
                                    child: Text("Add to Cart",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)))
                              ],
                            )),
                        /////////////////////////////////
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              // border: Border.all(
                              //   color: Color.fromARGB(255, 176, 166, 166),
                              //   width: 1,
                              // ),

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.15),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            width: 200,
                            height: 300,
                            child: Column(
                              children: [
                                Image.network(
                                  'https://i.pinimg.com/564x/02/5c/f6/025cf6928f69d6284a8851e46bbe99da.jpg',
                                  width: 200,
                                  height: 190,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text("Freash Green Plant",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.teal.shade700)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("%15.5",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 89, 198, 183))),
                                OutlinedButton(
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      primary: Colors.white,
                                      backgroundColor: Colors.teal.shade700,
                                    ),
                                    onPressed: () {},
                                    child: Text("Add to Cart",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)))
                              ],
                            )),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(children: [
                  Text(
                    "Popular Plants",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(0, 2),
                              blurRadius: 15),
                        ],
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.teal.shade700),
                  ),
                  SizedBox(width: 160),
                  TextButton(
                      onPressed: () {},
                      child: Text("More",
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset: const Offset(0, 2),
                                    blurRadius: 15),
                              ],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)))
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(children: [
                    ////////////////////////////////
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.15),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        margin: EdgeInsets.only(right: 20),
                        width: 200,
                        height: 190,
                        child: Column(
                          children: [
                            Image.network(
                                width: 200,
                                height: 140,
                                fit: BoxFit.cover,
                                'https://i.pinimg.com/564x/31/53/d4/3153d479a44c7de3da5e85fc979bd68b.jpg'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Monstra",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.teal.shade700,
                                    ))
                              ],
                            ),
                          ],
                        )),
                    ////////////////////////////////////////
                    Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          )
                        ], borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.only(right: 20),
                        width: 200,
                        height: 190,
                        child: Column(
                          children: [
                            Image.network(
                                width: 200,
                                height: 140,
                                fit: BoxFit.cover,
                                'https://i.pinimg.com/564x/10/76/25/1076257cc1cdb6f2b5ca8c7f9f4e1ae5.jpg'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Monstra",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.teal.shade700,
                                    ))
                              ],
                            ),
                          ],
                        )),
                    ///////////////////////////////
                    Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          )
                        ], borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.only(right: 20),
                        width: 200,
                        height: 190,
                        child: Column(
                          children: [
                            Image.network(
                                width: 200,
                                height: 140,
                                fit: BoxFit.cover,
                                'https://i.pinimg.com/564x/56/24/34/562434e065095664793607f04739a1e8.jpg'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Monstra",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.teal.shade700,
                                    ))
                              ],
                            ),
                          ],
                        )),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
