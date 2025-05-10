import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool ispassword = true;
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 50),
                Icon(Icons.lock, size: 50),
                SizedBox(height: 20),
                TextField(
                  controller: username,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 242, 240, 240),
                    border: OutlineInputBorder(),
                    hintText: "username",
                  ),
                ),

                SizedBox(height: 20),
                TextField(
                  obscureText: ispassword,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 242, 240, 240),
                    border: OutlineInputBorder(),
                    hintText: "password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ispassword = !ispassword;
                        });
                      },
                      icon: Icon(
                        ispassword ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    String usernamelogin = username.text;
                    final box = GetStorage();
                    box.write("username", usernamelogin);
                    Get.off(DashboardScreen());
                  },
                  child: Text("masuk"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
