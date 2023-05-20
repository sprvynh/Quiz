import 'package:flutter/material.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
 

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'enter your emai and we will send you a pass reset',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            // ignore: prefer_const_constructors
            child: TextField(
              //controller: _emailController,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
           onPressed: () {
             
           },
            child: Text('reset Password'),
            color: Colors.deepPurple[200],
          )
        ],
      ),
    );
  }
}