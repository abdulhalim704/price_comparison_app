import 'package:flutter/material.dart';
import 'navigation_screen.dart';
import 'welcome_screen.dart';

final class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool _isLoading = true;

  @override
  void initState() {
    // loadInitialData();
    super.initState();
  }

  void loadInitialData() async {
    //AutoAppUpdateUtil.instance.checkAppUpdate();
    //await setInitValue();
    // await getAllShopCategoryRXObj.fetchAllShopCategoryData();
    // await getAllShopRXObj.fetchAllShopData();
    // await getSliderRXObj.fetchSliderData();
    // await getAllSubCategoryRXObj.fetchGetAllSubCategoryData();

    // if (appData.read(kKeyIsLoggedIn)) {
    //   String token = appData.read(kKeyAccessToken);
    //   DioSingleton.instance.update(token);
    //   // await getAllAddressRXObj.fetchAllDeliveryAddressData();
    //   // getProfileRXObj.fetchProfileData();
    //   // getCartRXObj.fetchCartData("0.0");
    //   LocalNotificationService.getToken();
    // }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const WelcomeScreen();
    } else {
      return const NavigationScreen();
      // return appData.read(kKeyIsLoggedIn) || appData.read(kKeyIsExploring) ? const NavigationScreen() :  const SizedBox(child: Text('Login Screen'),);//LogeinScreen();
    }
  }
}
