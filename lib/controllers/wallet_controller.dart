import 'dart:convert';

import '../consts.dart';
import 'package:http/http.dart' as http;


class WalletController {
  static Future<String> sendCoin(String walletId, String receiverWallet, double amount) async {
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    var url = Uri.parse(apiURL + "transaction/send_coin/");
    var body =
    json.encode({"sender_wallet": walletId, "reciever_wallet": receiverWallet, "amount": amount});
    var response = await http.post(url, body: body, headers: headers);
    print(response.body);

    return response.body;
  }

}