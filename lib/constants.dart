import 'src/theme/app_theme.dart';

class Constants {
  static const DATA_URL =
      'https://raw.githubusercontent.com/monizb/hacktoberfest-swag-list/main/src/list.json';

  static const CONTRIB_URL =
      'https://www.digitalocean.com/community/tutorials/hacktoberfest-contributor-s-guide-how-to-find-and-contribute-to-open-source-projects';

  static const DO_URL = 'https://hacktoberfest.digitalocean.com/';

  static const LIST_URL =
      'https://github.com/monizb/hacktoberfest-swag-list/blob/main/src/list.json';
}

class Strings {
  static const title = 'Hacktoberfest SwagList';
  static const headerQues = 'What is Hacktoberfest ?';

  static const headerAns1 = '''
Hacktoberfest is the celebration of Open-Source, its that time of the year when people from all over the world come together to contribute to their favorite Open Source projects. To make the deal sweeter some organizations give out cool swags like tshirts, stickers and much more! This page aims to consolidate all the swag opportunities in one place and make it easier for you to choose from.
''';

  static const headerAns2 = '''
\nAlways remember, Hacktoberfest is about making "meaningful contributions" any kind of SPAM/HATRED is a big NO and isn't tolerated. Create PRs that add value and take home the sweet swags!
''';

  static const headerAns3 = '\nHow to make meaningful contributions?';

  static const headerAns4 = '''
You can read more about Hacktoberfest here. If you are a part of an organization listed below and dont wan't your swag to be listed, please contact me by raising an issue on the official repository and it will be taken down immediately.
''';

  static const addSwag =
      '\nWant to add this list to your own resource? Use the following JSON:';
}

const TAG_COLORS = {
  'Tshirt': AppColors.lightRose,
  'Stickers': AppColors.berylGreen,
  'Bottle': AppColors.clayAsh,
  'Socks': AppColors.gainsboro,
  'Hoodie': AppColors.lightSalmon,
  'Cap': AppColors.parchment,
  'Swags': AppColors.mistyRose,
  'Swag': AppColors.mistyRose,
};

const TAG_EMOJI = {
  'Tshirt': "👕",
  'Stickers': "🏷️",
  'Bottle': "🍾",
  'Socks': "🧦",
  'Hoodie': "🧥",
  'Cap': "🧢",
  'Swags': "🛍️",
  'Swag': "🛍️",
  'Default': "💜",
};
