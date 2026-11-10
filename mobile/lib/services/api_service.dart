import 'dart:convert';

import 'package:http/http.dart' as http;

/// Adresse de l'API. Par défaut : le PC vu depuis l'émulateur Android.
/// Pour la préprod : flutter run --dart-define=API_BASE_URL=https://.../api
const apiBaseUrl = String.fromEnvironment(
  'API_BASE_URL',
  defaultValue: 'http://10.0.2.2:8000/api',
);

class ApiService {
  Future<String> ping() async {
    final response = await http.get(Uri.parse('$apiBaseUrl/ping'));
    if (response.statusCode != 200) {
      throw Exception('Erreur ${response.statusCode}');
    }
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    return data['status'] as String;
  }
}
