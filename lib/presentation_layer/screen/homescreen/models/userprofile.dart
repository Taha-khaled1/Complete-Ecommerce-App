class Userprofilemenue {
  String text;
  String icon;
  void Function()? press;
  Userprofilemenue(
      {required this.icon, required this.press, required this.text});
}

List<Userprofilemenue> userprfilemenue = [
  Userprofilemenue(
    icon: 'assets/icons/User Icon.svg',
    press: () {},
    text: 'My Account',
  ),
  Userprofilemenue(
    icon: 'assets/icons/Bell.svg',
    press: () {},
    text: 'Notification',
  ),
  Userprofilemenue(
    icon: 'assets/icons/Question mark.svg',
    press: () {},
    text: 'Settings',
  ),
  Userprofilemenue(
    icon: 'assets/icons/Question mark.svg',
    press: () {},
    text: 'Help Center',
  ),
  Userprofilemenue(
    icon: 'assets/icons/Log out.svg',
    press: () {},
    text: 'Log Out',
  ),
];
