import 'dart:convert';

import 'package:international_flutter_hackathon/src/shared/models/provider_model.dart';

CreditCardModel creditCardModelFromJson(String str) =>
    CreditCardModel.fromJson(json.decode(str));
String creditCardModelToJson(CreditCardModel data) =>
    json.encode(data.toJson());

class CreditCardModel {
  String accountId;
  String accountType;
  String cardNetwork;
  String cardType;
  String currency;
  String displayName;
  String partialCardNumber;
  String nameOnCard;
  DateTime updateTimestamp;
  ProviderModel provider;
  String saldoGasto;
  String saldoDisponivel;

  CreditCardModel({
    this.saldoGasto,
    this.saldoDisponivel,
    this.accountId,
    this.accountType,
    this.cardNetwork,
    this.cardType,
    this.currency,
    this.displayName,
    this.partialCardNumber,
    this.nameOnCard,
    this.updateTimestamp,
    this.provider,
  });

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      new CreditCardModel(
        accountId: json["account_id"] == null ? null : json["account_id"],
        accountType: json["account_type"] == null ? null : json["account_type"],
        cardNetwork: json["card_network"] == null ? null : json["card_network"],
        cardType: json["card_type"] == null ? null : json["card_type"],
        currency: json["currency"] == null ? null : json["currency"],
        displayName: json["display_name"] == null ? null : json["display_name"],
        partialCardNumber: json["partial_card_number"] == null
            ? null
            : json["partial_card_number"],
        nameOnCard: json["name_on_card"] == null ? null : json["name_on_card"],
        updateTimestamp: DateTime
            .now(), //json["update_timestamp"] == null ? null : DateTime.parse(json["update_timestamp"]),
        provider: json["provider"] == null
            ? null
            : ProviderModel.fromJson(json["provider"]),
      );

  Map<String, dynamic> toJson() => {
        "account_id": accountId == null ? null : accountId,
        "account_type": accountType == null ? null : accountType,
        "card_network": cardNetwork == null ? null : cardNetwork,
        "card_type": cardType == null ? null : cardType,
        "currency": currency == null ? null : currency,
        "display_name": displayName == null ? null : displayName,
        "partial_card_number":
            partialCardNumber == null ? null : partialCardNumber,
        "name_on_card": nameOnCard == null ? null : nameOnCard,
        "update_timestamp":
            updateTimestamp == null ? null : updateTimestamp.toIso8601String(),
        "provider": provider == null ? null : provider.toJson(),
      };
}
