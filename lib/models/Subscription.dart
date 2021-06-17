import 'package:sub_manage/component/importer.dart';
import 'package:uuid/uuid.dart';

class Subscription {
  //連番想定
  String id;

  //サブスク名
  String serviceName;

  //支払い周期
  DateTime paymentDate;

  //支払い金額
  int price;

  //メモ
  String text;

  //色
  String color;

  Subscription({
    @required this.id,
    @required this.serviceName,
    @required this.paymentDate,
    @required this.price,
    @required this.text,
    @required this.color});

  Subscription.initialize(){
    this.id = "";
    this.serviceName = "";
    this.paymentDate = DateTime.now();
    this.price = 0;
    this.text = "";
    this.color = "";
  }

  assignUUID() {
    id = Uuid().v4();
  }

  factory Subscription.fromMap(Map<String, dynamic> json) => Subscription(
    id: json["id"],
    serviceName: json["serviceName"],
    // DateTime型は文字列で保存されているため、DateTime型に変換し直す
    paymentDate: DateTime.parse(json["paymentDate"]).toLocal(),
    price: json["price"].toInt(),
    text: json["text"],
    color: json["color"]
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "serviceName": serviceName,
    // sqliteではDate型は直接保存できないため、文字列形式で保存する
    "paymentDate": paymentDate.toUtc().toIso8601String(),
    "price": price,
    "text": text,
    "color": color
  };
}