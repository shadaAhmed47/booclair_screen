import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class train extends StatelessWidget {
  const train({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
      ),
      body: Container(
        height: 1000,
        width: 1000,
        decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
            image: AssetImage("imgs/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text(
                    "Booclair",
                    style: TextStyle(
                        color: Color(0xffc5a27d),
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 230.0),
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'this field must be filled';
                      }
                      if (!value.contains('@gmail.com')) {
                        return 'Please, Enter valid e-mail';
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 246, 244, 244),
                      filled: true,
                      hintText: ("E-mail"),
                      hintStyle:
                          TextStyle(color: Color(0xffababab), fontSize: 20),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffababab),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'this field must be filled';
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 246, 244, 244),
                      filled: true,
                      hintText: ("Password"),
                      hintStyle:
                          TextStyle(color: Color(0xffababab), fontSize: 20),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffababab),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffddb480),
                    fixedSize: Size(300, 50),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(color: Color(0xffddb480), fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Row(
                    children: [
                      Text(
                        "Don't have an account",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up ?",
                          style:
                              TextStyle(color: Color(0xffddb480), fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "or",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(),
                      fixedSize: Size(350, 50),
                      backgroundColor: Color.fromARGB(255, 245, 244, 244)),
                  onPressed: () {},
                  child: Text(
                    'Sign in with Google',
                    style: TextStyle(
                        color: Color.fromARGB(255, 138, 137, 137),
                        fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
