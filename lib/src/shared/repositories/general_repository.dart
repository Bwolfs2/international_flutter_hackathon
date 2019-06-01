import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:international_flutter_hackathon/src/shared/models/credit_card_model.dart';
import 'package:international_flutter_hackathon/src/shared/models/expense_model.dart';

class GeneralApi {
  Future<List<Expense>> getExpenses() async {
    try {
      Response response = await Dio().get(
        "https://raw.githubusercontent.com/Bwolfnoob/international_flutter_hackathon/master/routes/card/retrieve_card_transactions.json",
      );
      var data = jsonDecode(response.data);

      List<Expense> produtos =
          (data['results'] as List).map((v) => Expense.fromJson(v)).toList();
      return produtos;
    } on DioError catch (e) {
      throw "Erro de internet: $e";
    } catch (e) {
      throw "Erro desconhecido";
    }
  }

  Future<List<CreditCardModel>> getCreditCards() async {
    try {
      Response response = await Dio().get(
        "https://raw.githubusercontent.com/Bwolfnoob/international_flutter_hackathon/master/routes/card/retrieve_card.json",
      );
      var data = jsonDecode(response.data);

      var produtos = (data['results'] as List)
          .map((v) => CreditCardModel.fromJson(v))
          .toList();
      return produtos;
    } on DioError catch (e) {
      throw "Erro de internet: $e";
    } catch (e) {
      throw "Erro desconhecido";
    }
  }
}
