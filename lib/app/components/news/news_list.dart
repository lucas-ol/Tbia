import 'package:flutter/material.dart';

import '../../domain/models/main_news_item.dart';
import 'news_item_list.dart';

class NewsList extends StatelessWidget {
  final List<MainNewsItem> items;
  const NewsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext _, int index) {
        final news = items[index];
        return NewsItemList(news: news);
      },
    );
  }
}
