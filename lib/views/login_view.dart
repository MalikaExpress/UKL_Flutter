import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isVisible = false;
  bool isenable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/dashboard');
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset('LoginBg.png'),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Hai Moviegoers!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Sudah siap merasakan pengalaman menonton yang tidak terlupakan?",
                      maxLines: 2,
                      style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Email or WhatsApp Number",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "...",
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                        ),
                        Row(
                          children: [
                            Text("Password",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "...",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isenable = !isenable;
                            });
                          },
                          icon: Icon(isenable
                              ? CupertinoIcons.checkmark_square
                              : Icons.crop_square_rounded),
                        ),
                        Text(
                          "Ya, saya menerima syarat dan ketentuan yang berlaku.",
                          maxLines: 2,
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 335),
                        ),
                        Text("Forgot Password",
                            style: TextStyle(
                                fontSize: 16, color: Colors.blue[900]))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  InkWell(
                    onTap: isenable
                        ? () {
                            Navigator.pushReplacementNamed(
                                context, '/dashboard');
                          }
                        : null,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 200, right: 200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: isenable ? Colors.blue[900] : Colors.grey,
                      ),
                      child: Text("Login",
                          style: TextStyle(
                              fontSize: 16,
                              color: isenable ? Colors.white : Colors.black45)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Belum punya akun?",
                          style:
                              TextStyle(fontSize: 16, color: Colors.blue[900])),
                      Text("Daftar di sini",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
