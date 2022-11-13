import 'main_content_type.dart';
import 'main_social_media.dart';

class MainFansite {
  String contact = "";

  MainContentType contentType = MainContentType();

  bool fansiteItem = false;

  String fansiteItemUrl = "";

  String homepage = "";

  List<String> languages = [];

  String logoUrl = "";

  String name = "";

  MainSocialMedia socialMedia = MainSocialMedia();

  List<String> specials = [];

  MainFansite();

  @override
  String toString() {
    return 'MainFansite[contact=$contact, contentType=$contentType, fansiteItem=$fansiteItem, fansiteItemUrl=$fansiteItemUrl, homepage=$homepage, languages=$languages, logoUrl=$logoUrl, name=$name, socialMedia=$socialMedia, specials=$specials, ]';
  }

  MainFansite.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    contact = json['contact'];
    contentType = MainContentType.fromJson(json['content_type']);
    fansiteItem = json['fansite_item'];
    fansiteItemUrl = json['fansite_item_url'];
    homepage = json['homepage'];
    languages =
        (json['languages'] as List).map((item) => item as String).toList();
    logoUrl = json['logo_url'];
    name = json['name'];
    socialMedia = MainSocialMedia.fromJson(json['social_media']);
    specials =
        (json['specials'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'contact': contact,
      'content_type': contentType,
      'fansite_item': fansiteItem,
      'fansite_item_url': fansiteItemUrl,
      'homepage': homepage,
      'languages': languages,
      'logo_url': logoUrl,
      'name': name,
      'social_media': socialMedia,
      'specials': specials
    };
  }

  static List<MainFansite> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainFansite>[]
        : json.map((value) => MainFansite.fromJson(value)).toList();
  }

  static Map<String, MainFansite> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainFansite>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainFansite.fromJson(value));
    }
    return map;
  }
}
