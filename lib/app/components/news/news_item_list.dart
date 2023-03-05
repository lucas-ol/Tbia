import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tbia/app/domain/models/main_news_item.dart';

class NewsItemList extends StatelessWidget {
  final MainNewsItem news;
  final void Function(MainNewsItem news)? onTap;
  const NewsItemList({super.key, required this.news, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Text(DateFormat("dd/MM/yyyy").format(news.date)),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              news.news,
              textAlign: TextAlign.start,
            ),
          ),
          TextButton(
              onPressed: () => onTap?.call(news), child: const Text("Read"))
        ],
      ),
    );
  }
}
