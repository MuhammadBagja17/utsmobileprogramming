import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/pages/main_menu.dart';

class LoginMenu extends StatelessWidget {
  const LoginMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Stack(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xffBB8FC2)),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    'Your Future',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xffFFFFFF)),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Center(
                  child: Text(
                    'Furniture',
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFFFFFF)),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Center(
                  child: Container(
                    height: 6,
                    width: 90,
                    decoration: const BoxDecoration(color: Color(0xffFECDA0)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(2, 2))
                      ]),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Login First',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            labelText: 'Username',
                            prefixIcon: Icon(Icons.person)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility)),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainMenu()),
                    );
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 155),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffBB8FC2),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(2, 2))
                        ]),
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                          color: const Color(0xffFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 22),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
