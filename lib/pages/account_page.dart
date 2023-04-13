import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tools() {
      Widget toolsCard(String img, String text) {
        return Container(
          padding: const EdgeInsets.all(16),
          width: 160,
          height: 130,
          decoration: BoxDecoration(
              color: const Color(0xffF9F9F9),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 2,
                    offset: const Offset(0, 3))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const Spacer(),
              Text(
                text,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              )
            ],
          ),
        );
      }

      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  width: 160,
                  height: 130,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFC6C6),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 2,
                            offset: const Offset(0, 3))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/chair_light_orange_bg.png"))),
                      ),
                      const Spacer(),
                      Text(
                        'Best Chair',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                toolsCard("assets/lamp_light_gray_bg.png", "Best Lamps"),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                toolsCard("assets/chair_light_gray_bg.png", "Best Chair"),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: 160,
                  height: 130,
                  decoration: BoxDecoration(
                      color: const Color(0xffA4BDFF),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 2,
                            offset: const Offset(0, 3))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/plant_light_blue_bg.png"))),
                      ),
                      const Spacer(),
                      Text(
                        'Best Choise',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, left: 20),
              width: 92,
              height: 92,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/profile_photo.png"))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Muhammad Bagja',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Text(
                    'Mobile Application Developer',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 12),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('24 Collection',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black)),
                      const Spacer(),
                      Text('12 History',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black.withOpacity(0.3))),
                    ],
                  ),
                ],
              ),
            ),
            tools()
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 1,
              offset: const Offset(0, 1))
        ]),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 70),
          child: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/Menu-page');
                },
                icon: Icon(Icons.home)),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/Account-page');
                },
                icon: Icon(Icons.person)),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffBC6B6B),
        child: const Icon(
          Icons.favorite_rounded,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
