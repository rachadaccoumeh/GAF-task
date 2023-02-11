import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/nectar.png',
            fit: BoxFit.fill,
            height: 300,
            width: 500,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Get your groceries\nwith nectar",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
            textAlign: TextAlign.start,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton(
                value: 'US',
                items: const [
                  DropdownMenuItem(
                    value: 'US',
                    child: Text('US'),
                  ),
                  DropdownMenuItem(
                    value: 'IN',
                    child: Text('IN'),
                  ),
                  DropdownMenuItem(
                    value: 'CN',
                    child: Text('CN'),
                  ),
                  DropdownMenuItem(
                    value: 'UK',
                    child: Text('UK'),
                  ),
                ],
                onChanged: (String? value) {},
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "+1",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your mobile number",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Or connect with social media",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //add google button with icon
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
                onPrimary: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.search),
                  SizedBox(width: 8),
                  Text("Google"),
                ],
              ),
            ),
          ),

          const SizedBox(
            width: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // navigate to home screen
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
                onPrimary: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.facebook),
                  SizedBox(width: 8),
                  Text("Facebook"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
