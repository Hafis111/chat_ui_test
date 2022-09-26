// To parse this JSON data, do
//
//     final myMessage = myMessageFromJson(jsonString);

import 'dart:convert';

MyMessage myMessageFromJson(String str) => MyMessage.fromJson(json.decode(str));

String myMessageToJson(MyMessage data) => json.encode(data.toJson());

class MyMessage {
    MyMessage({
        this.message,
        this.isSend,
    });

    String? message;
    bool? isSend;

    factory MyMessage.fromJson(Map<String, dynamic> json) => MyMessage(
        message: json["Message"],
        isSend: json["isSend"],
    );

    Map<String, dynamic> toJson() => {
        "Message": message,
        "isSend": isSend,
    };
}
