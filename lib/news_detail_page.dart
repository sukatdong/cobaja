import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class NewsDetailPage extends StatelessWidget {
  final dynamic news;
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  NewsDetailPage({required this.news});

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        title: Text('CNN News'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(news['title'],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                DateFormat('EEEE, d MMMM yyyy').format(DateTime.parse(news['pubDate'])),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25,right: 10,bottom: 2),
              child:  Image.network(
                news['thumbnail'],

              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                news['description'],
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.all(16.0),
            //   child: Align(
            //     alignment: Alignment.bottomRight,
            //     child: ElevatedButton(
            //       onPressed: () {
            //         _launchURL(news['link']);
            //       },
            //       child: Text('Baca Selengkapnya'),
            //     ),
            //   ),
            // ),

            Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    _launchURL(news['link']);
                  },
                  child: Text(
                    'Baca Selengkapnya',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.red,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
