class MainSocialMedia {
  bool discord = false;

  bool facebook = false;

  bool instagram = false;

  bool reddit = false;

  bool twitch = false;

  bool twitter = false;

  bool youtube = false;

  MainSocialMedia();

  @override
  String toString() {
    return 'MainSocialMedia[discord=$discord, facebook=$facebook, instagram=$instagram, reddit=$reddit, twitch=$twitch, twitter=$twitter, youtube=$youtube, ]';
  }

  MainSocialMedia.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    discord = json['discord'];
    facebook = json['facebook'];
    instagram = json['instagram'];
    reddit = json['reddit'];
    twitch = json['twitch'];
    twitter = json['twitter'];
    youtube = json['youtube'];
  }

  Map<String, dynamic> toJson() {
    return {
      'discord': discord,
      'facebook': facebook,
      'instagram': instagram,
      'reddit': reddit,
      'twitch': twitch,
      'twitter': twitter,
      'youtube': youtube
    };
  }

  static List<MainSocialMedia> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainSocialMedia>[]
        : json.map((value) => MainSocialMedia.fromJson(value)).toList();
  }

  static Map<String, MainSocialMedia> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainSocialMedia>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainSocialMedia.fromJson(value));
    }
    return map;
  }
}
