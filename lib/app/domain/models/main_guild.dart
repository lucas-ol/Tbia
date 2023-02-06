import 'main_guild_member.dart';
import 'main_guildhall.dart';
import 'main_invited_guild_member.dart';

class MainGuild {
  bool active = false;

  String description = "";

  String disbandCondition = "";

  String disbandDate = "";

  String founded = "";

  List<MainGuildhall> guildhalls = [];

  String homepage = "";

  bool inWar = false;

  List<MainInvitedGuildMember> invites = [];

  String logoUrl = "";

  List<MainGuildMember> members = [];

  int membersInvited = 0;

  int membersTotal = 0;

  String name = "";

  bool openApplications = false;

  int playersOffline = 0;

  int playersOnline = 0;

  String world = "";

  MainGuild();

  @override
  String toString() {
    return 'MainGuild[active=$active, description=$description, disbandCondition=$disbandCondition, disbandDate=$disbandDate, founded=$founded, guildhalls=$guildhalls, homepage=$homepage, inWar=$inWar, invites=$invites, logoUrl=$logoUrl, members=$members, membersInvited=$membersInvited, membersTotal=$membersTotal, name=$name, openApplications=$openApplications, playersOffline=$playersOffline, playersOnline=$playersOnline, world=$world, ]';
  }

  MainGuild.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    active = json['active'];
    description = json['description'];
    disbandCondition = json['disband_condition'];
    disbandDate = json['disband_date'];
    founded = json['founded'];
    guildhalls = MainGuildhall.listFromJson(json['guildhalls']);
    homepage = json['homepage'];
    inWar = json['in_war'];
    invites = MainInvitedGuildMember.listFromJson(json['invites']);
    logoUrl = json['logo_url'];
    members = MainGuildMember.listFromJson(json['members']);
    membersInvited = json['members_invited'];
    membersTotal = json['members_total'];
    name = json['name'];
    openApplications = json['open_applications'];
    playersOffline = json['players_offline'];
    playersOnline = json['players_online'];
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {
      'active': active,
      'description': description,
      'disband_condition': disbandCondition,
      'disband_date': disbandDate,
      'founded': founded,
      'guildhalls': guildhalls,
      'homepage': homepage,
      'in_war': inWar,
      'invites': invites,
      'logo_url': logoUrl,
      'members': members,
      'members_invited': membersInvited,
      'members_total': membersTotal,
      'name': name,
      'open_applications': openApplications,
      'players_offline': playersOffline,
      'players_online': playersOnline,
      'world': world
    };
  }

  static List<MainGuild> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainGuild>[]
        : json.map((value) => MainGuild.fromJson(value)).toList();
  }

  static Map<String, MainGuild> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainGuild>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainGuild.fromJson(value));
    }
    return map;
  }
}
