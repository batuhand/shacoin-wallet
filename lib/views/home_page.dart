import 'package:flutter/material.dart';
import 'package:shacoin_wallet/controllers/wallet_controller.dart';

class HomePage extends StatefulWidget {
  final String username;
  final String wallet_adress;
  const HomePage(
      {Key? key, required this.username, required this.wallet_adress})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static TextEditingController walletController = new TextEditingController();
  static TextEditingController amountController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SHAWALLET")),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      widget.username,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      widget.wallet_adress,
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0,10,20,10),
                      child: TextFormField(
                        controller: walletController,
                        keyboardType: TextInputType.text,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Wallet adress',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0,10,20,10),
                      child: TextFormField(
                        controller: amountController,
                        keyboardType: TextInputType.text,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Amount',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      WalletController.sendCoin(
                          widget.wallet_adress, "0x2323232", 0.1).then((value) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(value),
                              );
                            });
                      } );
                    },
                    child: Text("Send Shacoin"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
