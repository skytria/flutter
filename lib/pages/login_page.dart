import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "login/bsip.png",
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "login/etos.png",
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ]
            )
          ),

          Column(  
            crossAxisAlignment: CrossAxisAlignment.start,  
            children:[
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  left: MediaQuery.of(context).size.width * 0.2,
                ),
                child:Text(
                  "Selamat Datang",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Puppins',
                    fontSize: MediaQuery.of(context).size.width * 0.075,
                    fontWeight: FontWeight.w600,
                    color: Colors.black, 
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.2,
                  right: MediaQuery.of(context).size.width * 0.3
                ),
                child:Text(
                  "Masukan Data Diri Anda",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Puppins',
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey, 
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.2,
                  right: MediaQuery.of(context).size.width * 0.2,
                ),
                child:Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[ 
                    Container(
                      margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01
                      ),
                      child: Text(
                        "Email",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Puppins',
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                          fontWeight: FontWeight.w400,
                          color: Colors.black, 
                        ),
                      ),
                    ),
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Masukan Email',
                        hintText:'mukti@gmail.com',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01
                      ),
                      child: Text(
                        "Password",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Puppins',
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                          fontWeight: FontWeight.w400,
                          color: Colors.black, 
                        ),
                      ),
                    ),
                    TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Masukan Password',
                        hintText:'1234578',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    const SizedBox(height: 25),

                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.0
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: "Tidak punya akun?",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Puppins',
                              fontSize: MediaQuery.of(context).size.width * 0.02,
                              fontWeight: FontWeight.w400,
                              color: Colors.black, 
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Daftar diklik');
                              },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03
                      ),
                      child: InkWell(
                        onTap: () {
                          final email = emailController.text;
                          final password = passwordController.text;

                          print(email);
                          print(password);

                          emailController.clear();
                          passwordController.clear();
                        },
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF23524E),
                              Color(0xFF4FB8AF),],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01
                      ),
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        child: Text(
                          'Masuk Dengan Email',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: "Tidak punya akun?",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Puppins',
                              fontSize: MediaQuery.of(context).size.width * 0.02,
                              fontWeight: FontWeight.w400,
                              color: Colors.black, 
                            ),
                            children: [
                              TextSpan(
                                text: 'Daftar gratis sekarang!!!',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: MediaQuery.of(context).size.width * 0.02,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black, 
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('Daftar diklik');
                                  },
                              ),
                            ]
                          ),
                        ),
                      ),
                    )
                  ]
                ),
              )
            ]
          ),
        ],
      ),
    );
  }
}