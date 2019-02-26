import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:my_books/utilities/services_codes.dart';
import 'package:uuid/uuid.dart';
import 'package:my_books/models/book.dart';

final String baseUrl = "https://reactnd-books-api.udacity.com/search";

final Map<String, String> requestHeaders = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': new Uuid().v4()
};

Future<List<Book>> searchBooks({@required query, maxResults = 10}) async {
  String body = json.encode({"query": query, "maxResults": maxResults});

  final response = await http.post(baseUrl,
      body: body, headers: requestHeaders);

  if (response.statusCode == ServicesCodes.OK) {
    return allBooksFromJson(response.body);
  } else {
    throw Exception('Failed to load books');
  }
}
