// To parse this JSON data, do
//
//     final expense = expenseFromJson(jsonString);

import 'dart:convert';

Expense expenseFromJson(String str) => Expense.fromJson(json.decode(str));

String expenseToJson(Expense data) => json.encode(data.toJson());

class Expense {
  DateTime timestamp;
  String description;
  String transactionType;
  String transactionCategory;
  List<String> transactionClassification;
  String merchantName;
  double amount;
  String currency;
  String transactionId;
  Meta meta;

  Expense({
    this.timestamp,
    this.description,
    this.transactionType,
    this.transactionCategory,
    this.transactionClassification,
    this.merchantName,
    this.amount,
    this.currency,
    this.transactionId,
    this.meta,
  });

  factory Expense.fromJson(Map<String, dynamic> json) => new Expense(
        timestamp: DateTime.parse(json["timestamp"]),
        description: json["description"],
        transactionType: json["transaction_type"],
        transactionCategory: json["transaction_category"],
        transactionClassification: new List<String>.from(
            json["transaction_classification"].map((x) => x)),
        merchantName: json["merchant_name"],
        amount: json["amount"].toDouble(),
        currency: json["currency"],
        transactionId: json["transaction_id"],
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp.toIso8601String(),
        "description": description,
        "transaction_type": transactionType,
        "transaction_category": transactionCategory,
        "transaction_classification":
            new List<dynamic>.from(transactionClassification.map((x) => x)),
        "merchant_name": merchantName,
        "amount": amount,
        "currency": currency,
        "transaction_id": transactionId,
        "meta": meta.toJson(),
      };
}

class Meta {
  String providerTransactionCategory;

  Meta({
    this.providerTransactionCategory,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => new Meta(
        providerTransactionCategory: json["provider_transaction_category"],
      );

  Map<String, dynamic> toJson() => {
        "provider_transaction_category": providerTransactionCategory,
      };
}
