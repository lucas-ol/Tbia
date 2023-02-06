import 'package:flutter/material.dart';
import 'package:tbia/app/domain/models/main_news_item.dart';

class NewsItemList extends StatelessWidget {
  final MainNewsItem news;
  const NewsItemList({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(news.id.toString())],
    );
  }
}
