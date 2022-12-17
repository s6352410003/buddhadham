import 'package:buddhadham/views/chap1.dart';
import 'package:flutter/material.dart';


class Chap1 extends StatefulWidget {
  const Chap1({super.key});

  @override
  State<Chap1> createState() => _Chap1State();
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');

  int finalColor = int.parse(newColor);
  return finalColor;
}

class _Chap1State extends State<Chap1> {
  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    // SizedBox(
    //           height: width_screen * 0.1,
    //         ),
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xff37445E),
        backgroundColor: Color(hexColor('#202d48')),
        title: const Text('สารบัญ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 20.0,
              ),
              child: GestureDetector(
                child: Text(
                  "พุทธธรรม",
                  style: TextStyle(
                    color: Colors.grey[850],
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 20.0,
              ),
              child: GestureDetector(
                child: Text(
                  "คำนำ",
                  style: TextStyle(
                    color: Colors.grey[850],
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chap1Ui(),
                    ),
                  );
                },
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     top: 5,
            //     left: 20.0,
            //   ),
            //   child: Text(
            //     "ภาค 1 มัชเณนธรรมเทศนา",
            //     style: TextStyle(
            //       color: Colors.grey[850],
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 20.0,
              ),
              child: GestureDetector(
                child: Text(
                  "บทที่ 1",
                  style: TextStyle(
                    color: Colors.grey[850],
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chap2Ui(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 20.0,
              ),
              child: GestureDetector(
                child: Text(
                  "Test 3",
                  style: TextStyle(
                    color: Colors.grey[850],
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChapTest(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
