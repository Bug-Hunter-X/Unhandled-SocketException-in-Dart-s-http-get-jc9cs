```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonResponse = jsonDecode(response.body);
      // Access data from the jsonResponse
      print(jsonResponse['someKey']);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // Here is the problem: If the error is a SocketException, it is not handled
    // specifically, and the user may not get a clear message. 
    rethrow; // Re-throwing the error allows upper levels to handle this.
  }
}
```