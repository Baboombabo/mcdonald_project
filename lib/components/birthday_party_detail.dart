import 'package:flutter/material.dart';

class BirthdayPartyScreen extends StatelessWidget {
  const BirthdayPartyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Birthday Party Landing Page',
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/mcbirthday.png', // Update with the actual image path
              width: screenWidth,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'McBirthday Party',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '🎂 ฉลองวันเกิดง่ายๆได้ที่แมคโดนัลด์ กับชุดแมคเบิร์ทเดย์ปาร์ตี้ พร้อมของขวัญสุดพิเศษ สำหรับเจ้าของวันเกิด รับฟรี! ไอศกรีมเบิร์ทเดย์เรนโบว์, มงกุฎวันเกิด และ การ์ดวันเกิด',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '🎉 ชุดแมคเบิร์ทเดย์ 1 (เหมาะสำหรับ2-4คน) ราคา 499.- (จากปกติเริ่มต้น706.-) ประกอบด้วย ไก่ทอดแมค 5 ชิ้น(รสออริจินัลหรือรสสไปซี่), แมคฟิช1ชิ้น, เฟรนช์ฟรายส์ขนาดกลาง1กล่อง, แมคนักเก็ต6ชิ้น, โค้ก 12 ออนซ์ 3 แก้ว และของขวัญวันเกิด',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '🎉 ชุดแมคเบิร์ทเดย์ 2 (เหมาะสำหรับ5-6คน) ราคา 899.- (จากปกติเริ่มต้น 1,110.-) ไก่ทอดแมค 8 ชิ้น (รสออริจินัลหรือรสสไปซี่), แมคฟิช 1 ชิ้น, ชามูไรเบอร์เกอร์หมู 1 ชิ้น, เฟรนช์ฟรายส์ใหญ่ 2 กล่อง, แมคนักเก็ต 10 ชิ้น, โค้ก 12 ออนซ์ 5 แก้ว, พายข้าวโพด 2 ชิ้นและของขวัญวันเกิด',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '* เมนูไก่ทอด แมคเริ่มขายตั้งแต่ 11 โมง - ตี 5\n* เมนูมีจำหน่ายเฉพาะที่ร้านแมคโดนัลด์สาขาที่ร่วมรายการ (บริการดิลิเวอร์รี่ไม่ร่วมรายการ)\n* ไอศกรีมเบิร์ทเดย์เรนโบว์, มงกุฎวันเกิด และ การ์ดวันเกิด จะได้รับอย่างละ 1 ชิ้นต่อชุด เมื่อซื้อชุดแมคเบิร์ทเดย์',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
