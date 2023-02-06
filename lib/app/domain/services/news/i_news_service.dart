import 'package:tbia/app/domain/models/main_news_list_response.dart';
import 'package:tbia/app/domain/models/main_news_response.dart';

abstract class INewsService {
  Future<MainNewsListResponse> newsArchiveDaysGet(int days);
  Future<MainNewsListResponse> newsArchiveGet();
  Future<MainNewsResponse> newsIdNewsIdGet(int newsId);
  Future<MainNewsListResponse> newsLatestGet();
  Future<MainNewsListResponse> newsNewstickerGet();
}
