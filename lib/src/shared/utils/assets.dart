const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';
const String baseMapStylePath = 'assets/txts/';
const String baseJsonPath = 'assets/json/';

extension ImageExtension on String {
  // png paths
  String get png => '$basePngPath$this.png';
  // svgs path
  String get svg => '$baseSvgPath$this.svg';
  // jsons path
  String get json => '$baseJsonPath$this.json';
}

//* --------------------- svgs -------------------------
//? Bottom Navigation Icons
final String homeOutlined = 'home-outlined'.svg;
final String homeGrey = 'home-grey'.svg;
final String ordersOutlined = 'orders-outlined'.svg;
final String listOutlined = 'list-outlined'.svg;
final String savedOutlined = 'saved-outlined'.svg;
final String profileOutlined = 'profile-outlined'.svg;
final String statisticsOutlined = 'statistics-outlined'.svg;
final String communityOutlined = 'community-outlined'.svg;
final String homeFilled = 'home-filled'.svg;
final String ordersFilled = 'orders-filled'.svg;
final String listFilled = 'list-filled'.svg;
final String savedFilled = 'saved-filled'.svg;
final String profileFilled = 'profile-filled'.svg;
//? 

//* --------------------- pngs -------------------------
// final String appIcon = 'onboarding-app-icon'.png;


//* --------------------- json -------------------------
// final String verificationSuccessful = 'successful'.json;

