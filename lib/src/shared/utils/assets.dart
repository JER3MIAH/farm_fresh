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


//* pngs
// final String appIcon = 'onboarding-app-icon'.png;

//* svgs
// final String homeOutlined = 'home-outlined'.svg;

//* json
// final String verificationSuccessful = 'successful'.json;

