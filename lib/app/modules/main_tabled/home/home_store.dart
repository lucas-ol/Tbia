import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:tbia/app/domain/models/main_news_item.dart';
import 'package:tbia/app/domain/services/news/i_news_service.dart';
import 'package:tbia/app/domain/services/news/news_service.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final INewsService _service = Modular.get();

  @observable
  ObservableList<MainNewsItem> news = ObservableList<MainNewsItem>();

  @observable
  bool isInloading = false;

  @action
  Future searchNews() async {
    try {
      isInloading = true;
      final result = await _service.newsArchiveGet();
      news.addAll(result.news);
      await Future.delayed(const Duration(seconds: 5));
      isInloading = false;
    } catch (e) {
      isInloading = false;
    }
  }
}
