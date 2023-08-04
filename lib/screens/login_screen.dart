import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1690364521753-ffc7c3835d4b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 510,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    userInput(
                        emailController, "Email", TextInputType.emailAddress),
                    userInput(passwordController, "Password",
                        TextInputType.visiblePassword),
                    Container(
                      height: 55,
                      padding: EdgeInsets.only(top: 5, left: 70, right: 70),
                      child: ElevatedButton(
                        onPressed: () {
                          print(emailController);
                          print(passwordController);

                          Navigator.of(context).pushNamed('/success');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text('Forgot Password'),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          login(Icons.person),
                          login(Icons.book_online)
                        ],
                      ),
                    ),
                    Divider(thickness: 0, color: Colors.black26),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have account yet?',
                          style: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
Widget userInput(
    TextEditingController userInput, String hintTitle, TextInputType kbType) {
  return Container(
    height: 55,
    margin: EdgeInsets.only(bottom: 15),
    decoration: BoxDecoration(
        color: Colors.green.shade200, borderRadius: BorderRadius.circular(30)),
    child: Padding(
      padding: EdgeInsets.only(left: 25, top: 15, right: 25),
      child: TextField(
        controller: userInput,
        autocorrect: false,
        enableSuggestions: false,
        autofocus: false,
        decoration: InputDecoration.collapsed(
            hintText: hintTitle,
            hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.white70,
                fontStyle: FontStyle.italic)),
        keyboardType: kbType,
      ),
    ),
  );
}

Widget login(IconData iconData) {
  return Container(
    height: 50,
    width: 115,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
        borderRadius: BorderRadius.circular(12)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 24,
        ),
        TextButton(onPressed: () {}, child: Text('Login'))
      ],
    ),
  );
}
