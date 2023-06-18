import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Book> books = [
    Book(
      "Book Title 1",
      "Author Name 1",
      "assets/book1.jpg",
      29.99,
      "June 16, 2023",
      "John Doe",
    ),
    Book(
      "Book Title 2",
      "Author Name 2",
      "assets/book2.jpg",
      19.99,
      "June 15, 2023",
      "Jane Smith",
    ),
    Book(
      "Book Title 3",
      "Author Name 3",
      "assets/book3.jpg",
      24.99,
      "June 14, 2023",
      "James Brown",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookstore"),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (BuildContext context, int index) {
          return BookCard(book: books[index]);
        },
      ),
    );
  }
}

class Book {
  String title;
  String author;
  String image;
  double price;
  String postedDate;
  String postedBy;

  Book(
      this.title,
      this.author,
      this.image,
      this.price,
      this.postedDate,
      this.postedBy,
      );
}

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Author: ${book.author}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Price: \$${book.price.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Posted Date: ${book.postedDate}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Posted By: ${book.postedBy}",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
