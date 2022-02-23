import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/screens/Categories/courses.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Models/drawer.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.2, 0.6, 0.8],
                colors: [gradiant1, gradiant3, gradiant2])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Categories',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: color1),
            ),
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.longArrowAltLeft,
                    color: color1,
                  )),
            ],
            centerTitle: true,
          ),
          drawer: const Drawer_Menu(),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 30, right: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          color: const Color(0xfff05c2f),
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            height: 50,
                            width: 310,
                            child: TextField(
                              decoration: InputDecoration(
                                enabled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent)),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Search for anything...',
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.search,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: value2,
                        ),
                        Text(
                          'Running Courses',
                          style: TextStyle(fontSize: 20, color: color1),
                        ),
                        const SizedBox(
                          height: value3,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              category1(),
                              const SizedBox(
                                width: value1,
                              ),
                              category2(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: value2,
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(fontSize: 20, color: color1),
                        ),
                        const SizedBox(
                          height: value3,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              category3(),
                              const SizedBox(
                                width: value1,
                              ),
                              category4(),
                              const SizedBox(
                                width: value1,
                              ),
                              category5(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: value3,
                        ),
                        Text(
                          'More',
                          style: TextStyle(fontSize: 20, color: color1),
                        ),
                      ])),
            ),
          ),
        ),
      ),
    );
  }

  category1() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 170,
          width: 250,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/eCommerce.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 170,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'E-COMMERCE',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }

  category2() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 170,
          width: 250,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/amazon.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 170,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'Amazon Marketing',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }

  category3() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/eCommerce.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              color: Colors.black26, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'E-COMMERCE',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }

  category4() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/amazon.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'Amazon Marketing',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }

  category5() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/freelancing.jpeg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'Freelancing',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }
}
