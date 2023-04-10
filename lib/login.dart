import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_2/home.dart';
import 'package:test_2/signup.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          Container(
            height: 330,
            width: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/back.png'))),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Login',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
            ),
          ),
          Positioned(
            top: 260,
            child: Container(
              padding: const EdgeInsets.only(top: 18),
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                  color: Colors.white),
              child: Column(
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/logic.png',
                    scale: 2.5,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          suffixIcon: Icon(
                            CupertinoIcons.envelope,
                            size: 28,
                            color: Color.fromRGBO(255, 92, 51, 1),
                          ),
                          label: Text(
                            'Email ID',
                            style: TextStyle(fontSize: 21, color: Colors.grey),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          suffixIcon: Icon(
                            CupertinoIcons.lock,
                            size: 28,
                            color: Color.fromRGBO(255, 92, 51, 1),
                          ),
                          label: Text(
                            'Password',
                            style: TextStyle(fontSize: 21, color: Colors.grey),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 215),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/check.png',
                        scale: 2,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Accept',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Terms & Condition',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: (() => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const home()))),
                    child: Container(
                      height: 59,
                      width: 345,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color.fromRGBO(255, 0, 51, 1),
                              Color.fromRGBO(255, 102, 51, 1)
                            ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 140, right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                  letterSpacing: .2,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Icon(
                              CupertinoIcons.arrow_right,
                              color: Colors.white,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an Account?',
                        style: TextStyle(fontSize: 13.5, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      GestureDetector(
                        onTap: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const signup()))),
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                              fontSize: 13.5,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 10, 51, 1)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
