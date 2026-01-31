import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Selamat Pagi, BSU Koja Asih!",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Puppins',
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Selamat Datang Kembali",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Puppins',
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.02),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.02),
                    child: Text(
                      "Menu Kami!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Puppins',
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:size.height*0.0),
                              child: Text(
                                "Lokasi Lapak",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:size.height*0.0),
                              child: Text(
                                "Silahkan Cek Lokasi Lapak Kerjasama Anda",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:size.height*0.0),
                              child: Text(
                                "BSU Info",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:size.height*0.0),
                              child: Text(
                                "Silahkan Cek Informasi Terbaru BSU",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:size.height*0.0),
                              child: Text(
                                "Laporan Penimbangan",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:size.height*0.0),
                              child: Text(
                                "Silahkan Cek Hasil Penimbangan Anda",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:size.height*0.0),
                              child: Text(
                                "Lokasi Lapak",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:size.height*0.0),
                              child: Text(
                                "Silahkan Cek Lokasi Lapak Kerjasama Anda",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
