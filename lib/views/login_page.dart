import 'package:flutter/material.dart';
import 'package:shacoin_wallet/controllers/login_controller.dart';
import 'package:shacoin_wallet/views/home_page.dart';
import 'package:shacoin_wallet/views/widgets/password_input.dart';
import 'package:shacoin_wallet/views/widgets/username_input.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.white, Colors.white]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Text(
                  "SHAWALLET",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              InputUsername(),
              InputPassword(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(

                              username: InputUsername.usernameController.text,
                              wallet_adress: "0xbatuhanthecreator",
                            )));
                  },
                  padding: EdgeInsets.fromLTRB(50, 12, 50, 12),
                  color: Colors.white70,
                  child:
                      Text('Giriş Yap', style: TextStyle(color: Colors.black)),
                ),
              ),
              const Text("Hesabın yok mu?"),
              const Text(
                "Kayıt Ol",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
