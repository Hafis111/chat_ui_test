// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

Message messageFromJson(String str) => Message.fromJson(json.decode(str));

String messageToJson(Message data) => json.encode(data.toJson());

class Message {
    Message({
        this.avatar,
        this.name,
        this.message,
        this.date,
    });

    String? avatar;
    String? name;
    String? message;
    String? date;

    factory Message.fromJson(Map<String, dynamic> json) => Message(
        avatar: json["Avatar"],
        name: json["Name"],
        message: json["Message"],
        date: json["Date"],
    );

    Map<String, dynamic> toJson() => {
        "Avatar": avatar,
        "Name": name,
        "Message": message,
        "Date": date,
    };
}