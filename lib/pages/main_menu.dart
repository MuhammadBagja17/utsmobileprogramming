import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/pages/account_page.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget category() {
      Widget categoryCard(String img, String text) {
        return Container(
          padding: const EdgeInsets.all(8),
          width: 130,
          height: 90,
          margin: const EdgeInsets.only(right: 20, bottom: 2, top: 2),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: const Offset(0, 1))
              ]),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 35,
              height: 35,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(img))),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                )
              ],
            )
          ]),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            categoryCard("assets/plant_white_bg.png", "Plant"),
            categoryCard("assets/lamp_white_bg.png", "Lamp"),
            categoryCard("assets/chair_white_bg.png", "Chair")
          ],
        ),
      );
    }

    Widget item() {
      Widget itemCard(String img, String text, String harga) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 185,
          width: 175,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            const Spacer(),
            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Colors.black.withOpacity(0.5)),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      harga,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ]),
        );
      }

      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 12,
              ),
              itemCard("assets/favorite_img_4.jpg", "Cactus", "\$18"),
              itemCard("assets/favorite_img_2.jpg", "Traitional Chair", "\$24"),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 12,
              ),
              itemCard("assets/favorite_img_3.jpeg", "Wooden Chair", "\$44"),
              itemCard("assets/favorite_img_1.jpg", "Elegant lamp", "\$13"),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 12,
              ),
              itemCard("assets/favorite_img_5.jpg", "Beach Beautiful", "\$36"),
              itemCard("assets/favorite_img_6.jpg", "Architectural", "\$30"),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(130),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: const Color(0xffBB8FC2),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        'Discover',
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'What are you looking for ?',
                          prefixIcon: Icon(Icons.search)),
                    ),
                  )
                ],
              ),
            ),
          )),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                'Category',
                style: GoogleFonts.poppins(fontSize: 16),
              )),
          category(),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              'Hot Item',
              style: GoogleFonts.poppins(fontSize: 16),
            ),
          ),
          item()
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xffBC6B6B),
        child: Icon(
          Icons.favorite_rounded,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
