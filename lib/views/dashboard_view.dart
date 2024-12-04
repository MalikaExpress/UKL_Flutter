import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihanukl/widgets/buttom_nav.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});
  final List<String> images = [
    'assets/Ultraman Tiga.jpg',
    'assets/Toy Story 4.jpg',
    'assets/Lego Movie.jpg',
    'assets/Madagascar.jpg',
    'assets/AvengersIW.jpg',
  ];
  final List<String> post = [
    'assets/Ultraman Tiga.jpg',
    'assets/Toy Story 4.jpg',
    'assets/Lego Movie.jpg',
    'assets/AvengersIW.jpg',
    'assets/PowerPuffGirls.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    final PageController halController = PageController(viewportFraction: 0.50);
    final PageController hal1Controller =
        PageController(viewportFraction: 0.40);

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text("Malang"),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_down),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.heart,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_pin,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text("Guest",
                          style: TextStyle(fontSize: 16, color: Colors.black))
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text("Kamu mau nonton apa hari ini?",
                          style: TextStyle(fontSize: 16, color: Colors.black))
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 250,
                    child: PageView(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'assets/Gladiator 2.jpg',
                              height: 250,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'assets/Red One.jpg',
                              height: 250,
                              width: 400,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'assets/Adit Sopo Jarwo.jpg',
                              height: 250,
                              width: 400,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Now Showing",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: const Color.fromARGB(255, 3, 90, 161)),
                      ),
                      Text("see all",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 3, 90, 161)))
                    ],
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      height: 250,
                      child: PageView.builder(
                        controller: halController,
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return AnimatedBuilder(
                            animation: halController,
                            builder: (context, child) {
                              double value = 1.0;
                              if (halController.position.haveDimensions) {
                                value = halController.page! - index;
                                value =
                                    (1 - (value.abs() * 0.3)).clamp(0.7, 1.0);
                              }

                              return Transform.scale(
                                scale: value,
                                child: child,
                              );
                            },
                            child: ClipRRect(
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.fitHeight,
                                height: 250,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: const Color.fromARGB(255, 3, 90, 161)),
                      ),
                      Text("see all",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 3, 90, 161)))
                    ],
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Center(
                      child: Center(
                        child: Container(
                          height: 250,
                          child: PageView.builder(
                            controller: hal1Controller,
                            itemCount: post.length,
                            itemBuilder: (context, index) {
                              return ClipRRect(
                                child: Image.asset(
                                  post[index],
                                  fit: BoxFit.fitHeight,
                                  height: 250,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Promotion",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: const Color.fromARGB(255, 3, 90, 161)),
                      ),
                      Text("see all",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 3, 90, 161)))
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 250,
                    child: PageView(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'assets/Moana.jpg',
                              height: 250,
                              width: 400,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'assets/ZooTopia.jpg',
                              height: 250,
                              width: 400,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'assets/Aladin.jpg',
                              height: 250,
                              width: 400,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(page: 0),
    );
  }
}
