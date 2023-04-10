import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:test_2/home.dart';
import 'package:test_2/login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
          Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 26),
              child: Column(children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Signup',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),  )],),])),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              CupertinoIcons.person,
                              size: 28,
                              color: Color.fromRGBO(255, 92, 51, 1),
                            ),
                            label: Text(
                              'First Name',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),)),),),
                           const SizedBox(
                      height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              CupertinoIcons.person,
                              size: 28,
                              color: Color.fromRGBO(255, 92, 51, 1),
                            ),
                            label: Text(
                              'Last Name',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),)),),),
                    const SizedBox(
                      height: 15, ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              CupertinoIcons.envelope,
                              size: 28,
                              color: Color.fromRGBO(255, 92, 51, 1),
                            ),
                            label: Text(
                              'Email ID',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),)))),
                    const SizedBox(
                      height: 15,    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              CupertinoIcons.device_phone_portrait,
                              size: 28,
                              color: Color.fromRGBO(255, 92, 51, 1),
                            ),
                            label: Text(
                              'Mobile No.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              CupertinoIcons.lock,
                              size: 28,
                              color: Color.fromRGBO(255, 92, 51, 1),
                            ),
                            label: Text(
                              'Password',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const home()))),
                      child: Container(
                        height: 59,
                        width: 335,
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
                          padding: const EdgeInsets.only(left: 130, right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'SIGNUP',
                                style: TextStyle(
                                    letterSpacing: .2,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Icon(
                                CupertinoIcons.arrow_right,
                                color: Colors.white,
                                size: 25,)],)))),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an Account?',
                          style: TextStyle(fontSize: 13.5, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        GestureDetector(
                          onTap: (() => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const login()))),
                          child: const Text(
                            'Login',
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
              ))
        ]));
  }
}
