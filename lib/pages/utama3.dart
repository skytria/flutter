import 'package:bank/pages/login_page.dart';
import 'package:flutter/material.dart';

class Utama3 extends StatelessWidget {
  const Utama3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.0),
            child: Padding(
              padding: EdgeInsetsGeometry.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/login/bsip.png",
                    width: size.width * 0.3,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/login/etos.png",
                    width: size.height * 0.075,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.30),
                  child: Image.asset('assets/utama/tempat_sampah.png'),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: size.width*0.15, right:  size.width*0.15),
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.02),
                  child: Text(
                    "Lingkungan yang bersih adalah investasi bagi masa depan kita.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.130),
                child: Image.asset('assets/utama/tap.png'),
              ),
              
              Padding(
                padding: EdgeInsetsGeometry.all(30),
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.02),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=> const LoginPage()
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF23524E), Color(0xFF4FB8AF)],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Login', style: TextStyle(color: Colors.white), textAlign: TextAlign.right,),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
