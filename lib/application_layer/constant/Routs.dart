// ignore_for_file: file_names
import 'package:get/get.dart';
import '../../domain_layer/controller/Binding/bindingAuth.dart';
import '../../domain_layer/controller/midelware/midelware.dart';
import '../../presentation_layer/screen/AddtoCart/Addtocart.dart';
import '../../presentation_layer/screen/Auth/Sucsspage.dart';
import '../../presentation_layer/screen/Auth/checkemail.dart';
import '../../presentation_layer/screen/Auth/login.dart';
import '../../presentation_layer/screen/Auth/resetpassword.dart';
import '../../presentation_layer/screen/Auth/sigin.dart';
import '../../presentation_layer/screen/Auth/vervaycode.dart';
import '../../presentation_layer/screen/favoritpage/favoritscreen.dart';
import '../../presentation_layer/screen/homescreen/Homescreen.dart';
import '../../presentation_layer/screen/itemscreen.dart/itemscreen.dart';
import '../../presentation_layer/screen/langueg/languge.dart';
import '../../presentation_layer/screen/onbording/Onboarding.dart';
import '../../presentation_layer/screen/prudectDetelis/prudectDetelis.dart';
import '../../presentation_layer/screen/userprofile/userprofile.dart';
import 'namedrouts.dart';

List<GetPage<dynamic>>? getPage = [
  GetPage(
    name: Namedrouts().onboarding,
    page: () => Onboarding(),
  ),
  GetPage(
    name: Namedrouts().login,
    page: () => Login(),
    binding: Mybinding(),
  ),
  GetPage(
    name: '/',
    page: () => const Language(),
    middlewares: [
      Midelware(),
    ],
  ),
  GetPage(
    name: Namedrouts().sigin,
    page: () => Sigin(),
  ),
  GetPage(
    name: Namedrouts().checkemail,
    page: () => Checkemail(),
  ),
  GetPage(
    name: Namedrouts().verifycode,
    page: () => const Verifycode(),
  ),
  GetPage(
    name: Namedrouts().resetpassword,
    page: () => Resetpassword(),
  ),
  GetPage(
    name: Namedrouts().sucsspage,
    page: () => const Sucsspage(),
  ),
  GetPage(
    name: Namedrouts().home,
    page: () => Homescreen(),
    binding: Mybindingopenhome(),
  ),
  GetPage(
    name: Namedrouts().itemscreen,
    page: () => Itemscreen(),
    binding: Mybindingopeitem(),
  ),
  GetPage(
    name: Namedrouts().userprofile,
    page: () => const Userprofile(),
  ),
  GetPage(
    name: Namedrouts().favorit,
    page: () => Favorit(),
    // binding: MyBinddingFavoritecontroller(),
  ),
  GetPage(
    name: Namedrouts().prudectDetelis,
    page: () => PrudectDetelis(),
    binding: MyBinddingPrudectcontroller(),
  ),
  GetPage(
    name: Namedrouts().addToCartScreen,
    page: () => const CartScreen(),
  ),
];
