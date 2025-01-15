```dart
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      print(jsonResponse['someKey']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Network error: Please check your internet connection.');
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```