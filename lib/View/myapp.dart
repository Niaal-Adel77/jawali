import 'package:flutter/material.dart';
import 'mydrower.dart';
import 'accaunts.dart';
import 'image.dart';
import 'slide.dart';
import 'Page.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(95, 88, 88, 88),
      appBar: AppBar(title: Text("Jwali"), centerTitle: true),
      endDrawer: MYDROWER(),

      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75),
                topRight: Radius.circular(75),
              ),
            ),
            width: 500,
            height: 350,

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(Accaunts());
                            },
                            icon: Icon(
                              Icons.supervisor_account_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text("\n الحسابات"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(ImagePickerPage());
                            },
                            icon: Icon(Icons.image, color: Colors.black),
                          ),
                        ),
                        Text("\nاضافة صورة"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(CarouselPage());
                            },
                            icon: Icon(Icons.slideshow, color: Colors.black),
                          ),
                        ),
                        Text("\nالعروض"),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(MYPage());
                            },
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text("\nمشتريات"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(MYPage());
                            },
                            icon: Icon(Icons.atm, color: Colors.black),
                          ),
                        ),
                        Text("\n سحب من صراف الي"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(MYPage());
                            },
                            icon: Icon(Icons.receipt_long, color: Colors.black),
                          ),
                        ),
                        Text("\nسداد فواتير"),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(MYPage());
                            },
                            icon: Icon(Icons.sim_card, color: Colors.black),
                          ),
                        ),
                        Text("\nاشتراك باقات"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(MYPage());
                            },
                            icon: Icon(
                              Icons.send_and_archive,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text("\nتحويل الى محفظة"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(MYPage());
                            },
                            icon: Icon(
                              Icons.add_circle_outline_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text("\nاضافة خدمة"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.filter_alt_outlined),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.rotate_right_sharp),
                  ),
                  Text("العملايات"),
                ],
              ),
            ],
          ),
          Container(
            width: 500,
            height: 329,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75),
                topRight: Radius.circular(75),
              ),
              color: Colors.black38,
            ),
            child: Text(
              "\n\n\n\n   العمليات المسجلة",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
