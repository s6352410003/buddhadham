import 'package:buddhadham/substring_highlight.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
            child: Center(
                child: SubstringHighlight(
                    caseSensitive: false,
                    maxLines: 100,
                    overflow: TextOverflow.ellipsis,
          
                    // term: 'light',
                    // terms: ['i', ' ', 'TH', ''],
                    // terms: ['Rush Rules!', ' ', 'TH', ''],
                    // terms: ['a', 'and', 'in', 'o', 'the', 'we'],
                    terms: ['ไม่','หมายถึง','๑'],
                    // terms: ['abc', 'def'],
          
                    //PUBLIC-DOMAIN
                    // text:
                    //     'We shall not flag nor fail. We shall go on to the end. We shall fight in France and on the seas and oceans; we shall fight with growing confidence and growing strength in the air. We shall defend our island whatever the cost may be; we shall fight on beaches, landing grounds, in fields, in streets and on the hills. We shall never surrender…carry on the struggle, until, in God\'s good time, the New World, with all it power and might, steps forth to the rescue and the liberation of the Old',
                    // text: 'This highlights all the th\'s',
                    // text: 'abc def',
                    text: """
          เลือกเฟ้นเอาธรรมหรือสิ่งที่เกื้อกูลแก่ชีวิตจิตใจ หรือสิ่งที่ใช้ได้เหมาะดีที่สุดในกรณีนั้นๆ หรือมองเห็นอาการที่สิ่งที่พิจารณานั้นเกิดขึ้น ตั้งอยู่ ดับไป เข้าใจตามสภาวะที่เป็นไตรลักษณ์ ตลอดจนปัญญาที่มองเห็นอริยสัจ
            ๓. วิริยะ ความเพียร หมายถึง ความแกล้วกล้า เข้มแข็ง กระตือรือร้นในธรรมหรือสิ่งที่ปัญญาเฟ้นได้ อาจหาญในความดี มีกำลังใจ สู้กิจ บากบั่น รุดไปข้างหน้า ยกจิตไว้ได้ ไม่ให้หดหู่ถดถอยหรือท้อแท้
            ๔. ปีติ ความอิ่มใจ หมายถึง ความเอิบอิ่ม ปลาบปลื้ม ปรีดิ์เปรม ดื่มด่ำ ซาบซึ้ง แช่มชื่น ซาบซ่าน ฟูใจ
            ๕. ปัสสัทธิ ความสงบเย็นกายใจ หมายถึง ความผ่อนคลายกายใจ สงบระงับ เรียบรื่น ไม่เครียด ไม่กระสับกระส่าย เบาสบาย
            ๖. สมาธิ ความมีใจตั้งมั่น หมายถึง ความมีอารมณ์หนึ่งเดียว จิตแน่วแน่ต่อสิ่งที่กำหนด ทรงตัว สม่ำเสมอ เดินเรียบ อยู่กับกิจ ไม่วอกแวก ไม่ส่าย ไม่ฟุ้งซ่าน
            ๗. อุเบกขา ความเฉยดูอยู่ หมายถึง ความมีใจสงบลงตัวนิ่งเป็นกลางให้ปัญญามองเห็นชัดตรงตามที่มันเป็นไม่เอนเอียง ไม่ยิ่งไม่หย่อน ไม่ขาดไม่เกิน หรือนิ่งดูไป ในเมื่อทุกอย่างเข้าที่เข้าทาง หรือดำเนินไปด้วยดีตามแนวทางที่จัดวางไว้หรือที่มันควรจะเป็น หรือเมื่อยังไม่ควรขวนขวาย ไม่วุ่นวาย ไม่สอดแส่ ไม่แทรกแซง
            ทั้งนิวรณ์และโพชฌงค์ แบ่งแต่ละข้อออกเป็น ๒ ข้อย่อย รวมเป็นนิวรณ์ ๑๐ โพชฌงค์ ๑๔ คือ'''
            ก. นิวรณ์ ๕ ย่อยเป็น ๑๐ ได้แก่
            ๑. = ๑. กามฉันท์ภายใน (ปรารภขันธ์ของตน)				๒. กามฉันท์ภายนอก (ปรารภขันธ์ผู้อื่น)
            ๒. = ๓. พยาบาทภายใน							๔. พยาบาทภายนอก
            ๓. = ๕. ถีนะ								๖. มิทธะ
            ๔. = ๗. อุทธัจจะ								๘. กุกกุจจะ
            ๕. = ๙. วิจิกิจฉาในธรรมทั้งหลายภายใน				๑๐. วิจิกิจฉาในธรรมทั้งหลายภายนอก
            ข. โพชฌงค์ ๗ ย่อยเป็น ๑๔ ได้แก่
            ๑. = ๑. สติในธรรมทั้งหลายภายใน					๒. สติในธรรมทั้งหลายภายนอก
            ๒. = ๓. วิจัยในธรรมทั้งหลายภายใน					๔. วิจัยในธรรมทั้งหลายภายนอก
            ๓. = ๕. วิริยะทางกาย							๖. วิริยะทางใจ
            ๔. = ๗. ปีติมีวิตกมีวิจาร							๘. ปีติไม่มีวิตกไม่มีวิจาร
            ๕. = ๙. กายปัสสัทธิ							๑๐. จิตตปัสสัทธิ
            ๖. = ๑๑. สมาธิมีวิตกมีวิจา						๑๒. สมาธิไม่มีวิตกไม่มีวิจาร
            ๗. = ๑๓. อุเบกขาในธรรมทั้งหลายภายใน				๑๔. อุเบกขาในธรรมทั้งหลายภายนอก
            ท่านกล่าวถึงอาหารและอนาหารของนิวรณ์และโพชฌงค์ อาหาร คือเครื่องหล่อเลี้ยงกระตุ้นเสริม ซึ่งทำให้นิวรณ์หรือโพชฌงค์ที่ยังไม่เกิด ก็เกิดขึ้น ที่เกิดขึ้นแล้ว ก็เจริญไพบูลย์ อนาหาร ได้แก่สิ่งที่ไม่หล่อเลี้ยง ไม่กระตุ้นเสริม อาหารของนิวรณ์ ได้แก่อโยนิโสมนสิการ อนาหาร ได้แก่โยนิโสมนสิการ ส่วนอาหารของโพชฌงค์ได้แก่โยนิโสมนสิการ อนาหาร ได้แก่การขาดมนสิการ'''
          """,
                    // text: 'ee e!',
                    textAlign: TextAlign.left,
                    textStyle: TextStyle(
                      // non-highlight style
                      color: Colors.grey,
                    ),
                    words: false)),
          )),
    );
  }
}
