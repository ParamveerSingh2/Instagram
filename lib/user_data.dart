import 'package:instagram/app_assets.dart';

class UserData{
  String name;
  List<String> userPost;

  UserData(this.name,this.userPost);

}
List<UserData> userNameList = [
  UserData('Anjali', [AppAssets().imgProfile, AppAssets().imgProfile]),
  UserData('leesha', [AppAssets().imgProfile4]),
  UserData('paramveer', [AppAssets().imgProfile3]),
  UserData('amaan', [AppAssets().imgProfile4]),
];
