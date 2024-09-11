import 'package:flutter/material.dart';
import 'package:shop/route/route_constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:
            const Text("تسجيل الدخول", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    "تسجيل الدخول",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    "اكمل البيانات الخاصة بك لكي تتمكن  \nمن تسجيل الدخول",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "البريد الالكتروني",
                    hintText: "ادخل بريدك الالكتروني",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    prefixIcon: const Icon(Icons.mail),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'برجاء ادخال البريد الالكتروني';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "كلمة المرور",
                    hintText: "ادخل كلمة المرور",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'برجاء ادخال كلمة المرور';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "اكد كلمة المرور",
                    hintText: "اعد ادخال كلمة المرور",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'برجاء تاكيد كلمة المرور';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // There is 2 more screens while user complete their profile
                      // afre sign up, it's available on the pro version get it now
                      // 🔗 https://theflutterway.gumroad.com/l/fluttershop
                      Navigator.pushNamed(context, entryPointScreenRoute);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color.fromRGBO(
                          241, 53, 43, 1), // Button color from screenshot
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                    ),
                    child: const Text("انشاء حساب"),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     IconButton(
                //       icon: Icon(Icons.g_mobiledata, size: 40),
                //       onPressed: () {
                //         // Google login
                //       },
                //     ),
                //     const SizedBox(width: 10),
                //     IconButton(
                //       icon: Icon(Icons.facebook, size: 40),
                //       onPressed: () {
                //         // Facebook login
                //       },
                //     ),
                //     const SizedBox(width: 10),
                //     IconButton(
                //       icon: Icon(Icons.twitter, size: 40),
                //       onPressed: () {
                //         // Twitter login
                //       },
                //     ),
                //   ],
                // ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    "بمتابعتك، فإنك تؤكد أنك توافق على الشروط والأحكام الخاصة بنا",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
