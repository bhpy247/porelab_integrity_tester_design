import 'package:flutter/material.dart';
import 'package:porelab_integrity_tester_design/views/common/components/common_appbar.dart';

import '../backend/app_theme/style.dart';

class AppConstants {
  static const String apiAllowFromExternalHostKey = "AllowWindowsandMobileApps";
  static const String saltKey = "gRBtUdz2KKLs7hFThDlxpQeKJeaSGouGP0epTeZEbrKsytseecDQxy3TItGpeGYuAegJATZALtvFNloYaAd2qopSVlzOAPatQKrCsKbACgb53cGam45bxafhLre1";
  static const String securityKey = "4512631236589784";
  static const String securityIv = '4512631236589784';
  static const String fileServerLocation = '/Content/SiteConfiguration/Message/';

  static const int defaultSiteId = 374;
  static const String defaultLocale = "en-us";
  static const String defaultAuthorImageUrl =
      "https://image.shutterstock.com/z/stock-photo-high-angle-view-of-video-conference-with-teacher-on-laptop-at-home-top-view-of-girl-in-video-call-1676998303.jpg";
  static const String defaultVideoUrl = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

  static PreferredSizeWidget getCommonAppbar({
    double height = 100,
    String? title,
    final List<Widget>? actions

  }) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Styles.borderColor,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CommonAppBar(
                text: title,
                actions: actions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SharedPreferenceVariables {
  static const String darkThemeModeEnabled = "darkThemeModeEnabled";
  static const String isUserLoggedIn = "isUserLoggedIn";

  //Site Url Configurations
  static const String currentSiteUrl = 'currentSiteUrl';
  static const String currentSiteApiUrl = 'currentSiteApiUrl';
  static const String currentSiteLearnerUrl = 'currentSiteLearnerUrl';
  static const String currentSiteLMSUrl = 'currentSiteLMSUrl';
  static const String clientUrlType = 'clientUrlType';
  static const String currentAppLogoUrl = 'currentAppLogoUrl';
}

class AssetsName {
  static const String assetsLogo = "assets/logo/";
  static const String assetsIcon = "assets/icons/";

  static const String m19Logo = "${assetsLogo}m19Logo.png";
  static const String bellIcon = "${assetsIcon}bellIcon.png";
  static const String menuIcon = "${assetsIcon}menuIcon.png";
}
