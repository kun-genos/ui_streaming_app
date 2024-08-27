import 'package:flutter/material.dart';
import 'package:ui_srtreaming_app/colors_schema.dart';
import 'package:ui_srtreaming_app/home_page.dart';
import 'package:ui_srtreaming_app/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                child: Text(
                  "Create an account",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Username",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "james jaenal",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          color: Colors.black.withOpacity(.8), width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email Address",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "hello@example.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          color: Colors.black.withOpacity(.8), width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "................",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          color: Colors.black.withOpacity(.8), width: 1),
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "By continuing, you agree to our ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "term of service.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColButton),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  width: 450,
                  decoration: BoxDecoration(
                      color: ColButton,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: TextButton(
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage(),
                      )),
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "or",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  width: 450,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/img/google.png",
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with Google",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: TextButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginPage(),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign in here",
                      style: TextStyle(
                          fontSize: 16,
                          color: ColButton,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
