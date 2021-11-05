import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CustomPainter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Container(
          height: height * 0.7,
          width: width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [
                Colors.amber.shade900,
                Colors.amber.shade700,
              ],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: CustomPaint(
              size: Size(width, height),
              painter: CardCustomPainter(),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 75,
                    left: 8,
                    right: 8,
                    child: Image.asset(
                      'assets/logo1.png',
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.1),
                      width: width * 0.9,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: Image.asset(
                      'assets/2.png',
                      width: width * 0.7,
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/logo1.png',
                          // color: Colors.amber[700],
                          width: width * 0.4,
                        ),
                      ),
                      Text('Sam\'s Café',
                          style: GoogleFonts.poppins(
                            color: Color(0xCCB67B).withOpacity(1),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 150,
                      ),
                      detailWidget(Icons.phone, '+8801829439936'),
                      detailWidget(Icons.email, 'Sam\'scafe666@cafe.com'),
                      detailWidget(Icons.location_on, 'Dhaka, Bangladesh'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget detailWidget(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 30,
                color: Color(0x3A2A00).withOpacity(1),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(text,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0x3A2A00).withOpacity(1),
                    )),
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
