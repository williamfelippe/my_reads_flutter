import 'package:http/http.dart' as http;
import 'package:my_books/utilities/services_codes.dart';
import 'package:uuid/uuid.dart';
import 'package:my_books/models/shelf.dart';
import 'package:my_books/models/book.dart';

final String baseUrl = "https://reactnd-books-api.udacity.com/books";

final Map<String, String> requestHeaders = {
  'Content-type': 'application/json',
  'Accept': 'application/json',
  'Authorization': new Uuid().v4()
};

Future<List<Book>> getAllBooks() async {
  final response = await http.get(baseUrl, headers: requestHeaders);
  if (response.statusCode == ServicesCodes.OK) {
    return allBooksFromJson(response.body);
  } else {
    throw Exception('Failed to load books');
  }
}

Future<Book> getBookById(bookId) async {
  final response = await http.get('$baseUrl/$bookId', headers: requestHeaders);
  if (response.statusCode == ServicesCodes.OK) {
    return bookFromJson(response.body);
  } else {
    throw Exception('Failed to load book');
  }
}

Future<List<Shelf>> updateBook(bookId, shelf) async {
  final response = await http.put('$baseUrl/$bookId',
      body: {shelf: shelf}, headers: requestHeaders);

  if (response.statusCode == ServicesCodes.OK) {
    print('UPDATE BODY' + response.body);
    return allBooksOfShelfFromJson(response.body);
  } else {
    throw Exception('Failed to update book');
  }
}
