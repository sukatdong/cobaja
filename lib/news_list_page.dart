import 'package:flutter/material.dart';
import 'FetchingData.dart';
import 'news_detail_page.dart';
import 'package:url_launcher/url_launcher.dart';




class NewsListPage extends StatefulWidget {
  final String category;

  NewsListPage({required this.category});

  @override
  _NewsListPageState createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  late Future<List<dynamic>> _newsListFuture;


  @override
  void initState() {
    super.initState();

    _newsListFuture = getnews.fetchnews(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CNN " + widget.category.toUpperCase(),textAlign: TextAlign.center),
          centerTitle: true,
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _newsListFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Failed to load news'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final news = snapshot.data![index];
                return ListTile(
                  title: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(news['title']),
                        ),
                        SizedBox(width: 10),
                        Image.network(
                          news['thumbnail'],
                          width: 150,
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsDetailPage(news: news),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
