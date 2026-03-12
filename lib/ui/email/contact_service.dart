import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:http/http.dart' as http;

class ContactServiceNotifier extends ChangeNotifier {
  bool _isSending = false;
  bool get isSending => _isSending;

  Future<bool> sendMessage({
    required String name,
    required String email,
    required String message,
    required String subject,
  }) async {
    _isSending = true;
    notifyListeners();

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'origin': 'http://localhost',
        },
        body: jsonEncode({
          "service_id": "service_oh1q29h",
          "template_id": "template_91rm1pf",
          "public_key": "vP7KcFPNmVM6wn2Rb",
          "template_params": {
            "name": name,
            "email": email,
            "message": message,
            "subject": subject,
          }
        }),
      );

      _isSending = false;
      notifyListeners();

      debugPrint('EmailJS status: ${response.statusCode}');
      debugPrint('EmailJS body: ${response.body}');

      return response.statusCode == 200;
    } catch (e) {
      _isSending = false;
      notifyListeners();

      debugPrint('EmailJS error: $e');
      return false;
    }
  }
}

final contactServiceNotifierProvider =
ChangeNotifierProvider<ContactServiceNotifier>(
      (ref) => ContactServiceNotifier(),
);