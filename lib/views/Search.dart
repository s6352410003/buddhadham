import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

//มันจะเก็บไว้ในนี้ครับ

class _SearchState extends State<Search> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": 1,
      "chap":
          """พุทธธรรม\nหรือ\nกฎธรรมชาติ และคุณค่าสำหรับชีวิต\nความนำ\nสิ่งที่ควรเข้าใจก่อน\n         พระพุทธศาสนานั้น เมื่อมองในทัศนะของคนสมัยใหม่ มักเกิดปัญหาขึ้นบ่อยๆ ว่า เป็นศาสนา (religion) หรือเป็นปรัชญา (philosophy) หรือว่าเป็นเพียงวิธีครองชีวิตแบบหนึ่ง (a way of life) เมื่อปัญหาเช่นนี้เกิดขึ้นแล้ว ก็เป็นเหตุให้ต้องถกเถียงหรือแสดงเหตุผล ทำให้เรื่องยืดยาวออกไป อีกทั้งมติในเรื่องนี้ ก็แตกต่างไม่ลงเป็นแบบเดียวกัน ทำให้เป็นเรื่องฟั่นเฝือ ไม่มีที่สิ้นสุด \n          ในที่นี้ แม้จะเขียนเรื่องพุทธธรรมไว้ในหมวดปรัชญา  ก็จะไม่พิจารณาปัญหานี้เลย มุ่งแสดงแต่ในขอบเขตว่า พุทธธรรมสอนว่าอย่างไร มีเนื้อหาอย่างไรเท่านั้น ส่วนที่ว่าพุทธธรรมจะเป็นปรัชญาหรือไม่ ให้เป็นเรื่องของปรัชญาเองที่จะมีขอบเขตครอบคลุมหรือสามารถตีความให้ครอบคลุมถึงพุทธธรรมได้หรือไม่ โดยที่ว่าพุทธธรรม ก็คือพุทธธรรม และยังคงเป็นพุทธธรรมอยู่นั่นเอง มีข้อจำกัดเพียงอย่างเดียวว่า หลักการหรือคำสอนใดก็ตาม ที่เป็นเพียงการคิดค้นหาเหตุผลในเรื่องความจริงเพื่อสนองความต้องการทางปัญญา โดยมิได้มุ่งหมายและมิได้แสดงแนวทางสำหรับประพฤติปฏิบัติในชีวิตจริง อันนั้น ให้ถือว่า ไม่ใช่พระพุทธศาสนา โดยเฉพาะอย่างที่ถือว่า เป็นคำสอนเดิมแท้ของพระพุทธเจ้า ซึ่งในที่นี้เรียกว่าพุทธธรรม\n          การประมวลคำสอนในพระพุทธศาสนามาวางเป็นข้อสรุปลงว่า พุทธธรรมที่พระพุทธเจ้าทรงสอนและทรงมุ่งหมายแท้จริง เป็นอย่างไรนั้น เป็นเรื่องยาก แม้จะยกข้อความในคัมภีร์ซึ่งถือกันว่าเป็นพุทธพจน์มาอ้าง เพราะคำสอนในคัมภีร์มีปริมาณมากมาย มีแง่ด้านระดับความลึกซึ้งต่างๆ กัน และขึ้นต่อการตีความของบุคคล โดยใช้สติปัญญาและความสุจริตใจหรือไม่เพียงไรด้วย ในบางกรณี ผู้ถือความเห็นต่างกันสองฝ่าย อาจยกข้อความในคัมภีร์มาสนับสนุนความคิดเห็นของตนได้ด้วยกันทั้งคู่ การวินิจฉัยความจริงขึ้นต่อความแม่นยำในการจับสาระสำคัญ และความกลมกลืนสอดคล้องแห่งหลักการและหลักฐานที่แสดงทั้งหมดโดยหน่วยรวมเป็นข้อสำคัญ แม้กระนั้น เรื่องที่แสดงและหลักฐานต่างๆ ก็มักไม่กว้างขวางครอบคลุมพอ จึงหนีไม่พ้นจากอิทธิพลความเห็นและความเข้าใจพื้นฐานต่อพุทธธรรมของบุคคลผู้แสดงนั้น \n          ในเรื่องนี้ เห็นว่ายังมีองค์ประกอบอีกอย่างหนึ่งที่ควรนำมาเป็นเครื่องวินิจฉัยด้วย คือความเป็นไปในพระชนมชีพ และพระปฏิปทาขององค์สมเด็จพระบรมศาสดา ผู้เป็นแหล่งหรือที่มาของคำสอนเอง""",
      "detail": ""
    },
    {
      "id": 2,
      "chap":
          "ตัวสภาวะ \n พุทธธรรมมองเห็นสิ่งทั้งหลายเป็นธาตุ เป็นธรรม เป็นสภาวะ27 อันมีอยู่เป็นอยู่ตามภาวะของมัน ที่เป็น \n ของมันอย่างนั้น เช่นนั้น ตามธรรมดาของมัน มิใช่มีเป็นสัตว์ บุคคล อัตตา ตัวตน เราเขา ที่จะยึดถือเอาเป็น \n เจ้าของ ครอบครอง บังคับบัญชาให้เป็นไปตามปรารถนาอย่างไรๆ ได้ \n บรรดาสิ่งทั้งหลายที่รู้จักเข้าใจกันอยู่โดยทั่วไปนั้น มีอยู่เป็นอยู่เป็นไปในรูปของส่วนประกอบต่างๆ ที่มา \n ประชุมกันเข้า ตัวตนแท้ๆ ของสิ่งทั้งหลายไม่มี เมื่อแยกส่วนต่างๆ ที่มาประกอบกันเข้านั้นออกไปให้หมด ก็จะไม่ \n พบตัวตนของสิ่งนั้นเหลืออยู่ ตัวอย่างง่ายๆ ที่ยกขึ้นอ้างกันบ่อยๆ คือ “รถ” เมื่อน าส่วนประกอบต่างๆ มา \n ประกอบเข้าด้วยกันตามแบบที่ก าหนด ก็บัญญัติเรียกกันว่า “รถ” 28 แต่ถ้าแยกส่วนประกอบทั้งหมดออกจากกัน  \nก็จะหาตัวตนของรถไม่ได้ มีแต่ส่วนประกอบทั้งหลาย ซึ่งมีชื่อเรียกต่างๆ กันจ าเพาะแต่ละอย่างอยู่แล้ว คือ  \nตัวตนของรถมิได้มีอยู่ต่างหากจากส่วนประกอบเหล่านั้น มีแต่เพียงค าบัญญัติว่า “รถ” ส าหรับสภาพที่มารวมตัว \nกันเข้าของส่วนประกอบเหล่านั้น แม้ส่วนประกอบแต่ละอย่างๆ นั้นเอง ก็ปรากฏขึ้นโดยการรวมกันเข้าของ \nส่วนประกอบย่อยๆ ต่อๆ ไปอีก และหาตัวตนที่แท้ไม่พบเช่นเดียวกัน เมื่อจะพูดว่าสิ่งทั้งหลายมีอยู่ ก็ต้องเข้าใจ \nในความหมายว่า มีอยู่ในฐานะมีส่วนประกอบต่างๆ มาประชุมเข้าด้วยกัน ",
      "detail": ""
    },
    {"id": 3, "chap": "ไตรลักษณ พุทธ", "detail": ""},
    {"id": 4, "chap": "ปฏิจจสมุปบาท", "detail": ""},
    {"id": 5, "chap": "ปฏิจจสมุปบาท", "detail": ""},
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["chap"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(hexColor('#202d48')),
        title: Text('พุทธธรรม'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'ค้นหา', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["chap"]),
                        elevation: 2,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          leading: Text(
                            _foundUsers[index]["id"].toString(),
                            style: const TextStyle(fontSize: 24),
                          ),
                          title: Text(_foundUsers[index]['chap']),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 20),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');

  int finalColor = int.parse(newColor);
  return finalColor;
}
