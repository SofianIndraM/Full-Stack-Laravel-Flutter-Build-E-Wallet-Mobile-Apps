import 'dart:convert';

import 'package:bank_sha/models/tip_model.dart';
import 'package:bank_sha/services/auth_Service.dart';
import 'package:bank_sha/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class TipService {
  Future<List<TipModel>> getTip() async {
    try {
      final token = await AuthService().getToken();

      final res = await http.get(
        Uri.parse('$baseUrl/tips'),
        headers: {
          'Authorization': token,
        },
      );

      if (res.statusCode == 200) {
        return List<TipModel>.from(
          jsonDecode(res.body)['data'].map(
            (tip) => TipModel.fromJson(tip),
          ),
        ).toList();
      }

      return jsonDecode(res.body)['message'];
    } catch (e) {
      rethrow;
    }
  }
}
