```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      // Provide more specific error information
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Message: ${response.body}');
    }
  } catch (e) {
    // Handle exceptions and return null or a default value.
    print('Error fetching data: $e');
    return null; // or throw the exception depending on your app's logic
  }
}
```