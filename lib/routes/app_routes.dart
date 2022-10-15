import 'package:jusplay/presentation/logo_screen/logo_screen.dart';
import 'package:jusplay/presentation/logo_screen/binding/logo_binding.dart';
import 'package:jusplay/presentation/splash_screen/splash_screen.dart';
import 'package:jusplay/presentation/splash_screen/binding/splash_binding.dart';
import 'package:jusplay/presentation/login_screen/login_screen.dart';
import 'package:jusplay/presentation/login_screen/binding/login_binding.dart';
import 'package:jusplay/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:jusplay/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:jusplay/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:jusplay/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:jusplay/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:jusplay/presentation/otp_verification_screen/binding/otp_verification_binding.dart';
import 'package:jusplay/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:jusplay/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:jusplay/presentation/reset_password_one_screen/reset_password_one_screen.dart';
import 'package:jusplay/presentation/reset_password_one_screen/binding/reset_password_one_binding.dart';
import 'package:jusplay/presentation/home_screen/home_screen.dart';
import 'package:jusplay/presentation/home_screen/binding/home_binding.dart';
import 'package:jusplay/presentation/category_comedy_screen/category_comedy_screen.dart';
import 'package:jusplay/presentation/category_comedy_screen/binding/category_comedy_binding.dart';
import 'package:jusplay/presentation/episode1_screen/episode1_screen.dart';
import 'package:jusplay/presentation/episode1_screen/binding/episode1_binding.dart';
import 'package:jusplay/presentation/choose_plan_screen/choose_plan_screen.dart';
import 'package:jusplay/presentation/choose_plan_screen/binding/choose_plan_binding.dart';
import 'package:jusplay/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:jusplay/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:jusplay/presentation/home_recently_watched_screen/home_recently_watched_screen.dart';
import 'package:jusplay/presentation/home_recently_watched_screen/binding/home_recently_watched_binding.dart';
import 'package:jusplay/presentation/search_screen/search_screen.dart';
import 'package:jusplay/presentation/search_screen/binding/search_binding.dart';
import 'package:jusplay/presentation/search_result_screen/search_result_screen.dart';
import 'package:jusplay/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:jusplay/presentation/not_found_screen/not_found_screen.dart';
import 'package:jusplay/presentation/not_found_screen/binding/not_found_binding.dart';
import 'package:jusplay/presentation/downloaded_screen/downloaded_screen.dart';
import 'package:jusplay/presentation/downloaded_screen/binding/downloaded_binding.dart';
import 'package:jusplay/presentation/downloading_screen/downloading_screen.dart';
import 'package:jusplay/presentation/downloading_screen/binding/downloading_binding.dart';
import 'package:jusplay/presentation/empty_state_downloaded_screen/empty_state_downloaded_screen.dart';
import 'package:jusplay/presentation/empty_state_downloaded_screen/binding/empty_state_downloaded_binding.dart';
import 'package:jusplay/presentation/empty_state_downloading_screen/empty_state_downloading_screen.dart';
import 'package:jusplay/presentation/empty_state_downloading_screen/binding/empty_state_downloading_binding.dart';
import 'package:jusplay/presentation/saved_screen/saved_screen.dart';
import 'package:jusplay/presentation/saved_screen/binding/saved_binding.dart';
import 'package:jusplay/presentation/select_saved_screen/select_saved_screen.dart';
import 'package:jusplay/presentation/select_saved_screen/binding/select_saved_binding.dart';
import 'package:jusplay/presentation/saved_empty_screen/saved_empty_screen.dart';
import 'package:jusplay/presentation/saved_empty_screen/binding/saved_empty_binding.dart';
import 'package:jusplay/presentation/profile_screen/profile_screen.dart';
import 'package:jusplay/presentation/profile_screen/binding/profile_binding.dart';
import 'package:jusplay/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:jusplay/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:jusplay/presentation/notification_screen/notification_screen.dart';
import 'package:jusplay/presentation/notification_screen/binding/notification_binding.dart';
import 'package:jusplay/presentation/no_notification_screen/no_notification_screen.dart';
import 'package:jusplay/presentation/no_notification_screen/binding/no_notification_binding.dart';
import 'package:jusplay/presentation/history_screen/history_screen.dart';
import 'package:jusplay/presentation/history_screen/binding/history_binding.dart';
import 'package:jusplay/presentation/no_history_screen/no_history_screen.dart';
import 'package:jusplay/presentation/no_history_screen/binding/no_history_binding.dart';
import 'package:jusplay/presentation/setting_screen/setting_screen.dart';
import 'package:jusplay/presentation/setting_screen/binding/setting_binding.dart';
import 'package:jusplay/presentation/language_screen/language_screen.dart';
import 'package:jusplay/presentation/language_screen/binding/language_binding.dart';
import 'package:jusplay/presentation/help_screen/help_screen.dart';
import 'package:jusplay/presentation/help_screen/binding/help_binding.dart';
import 'package:jusplay/presentation/search_help_screen/search_help_screen.dart';
import 'package:jusplay/presentation/search_help_screen/binding/search_help_binding.dart';
import 'package:jusplay/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:jusplay/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String logoScreen = '/logo_screen';

  static String splashScreen = '/splash_screen';

  static String loginScreen = '/login_screen';

  static String signUpScreen = '/sign_up_screen';

  static String forgotPasswordScreen = '/forgot_password_screen';

  static String otpVerificationScreen = '/otp_verification_screen';

  static String resetPasswordScreen = '/reset_password_screen';

  static String resetPasswordOneScreen = '/reset_password_one_screen';

  static String homeScreen = '/home_screen';

  static String categoryComedyScreen = '/category_comedy_screen';

  static String episode1Screen = '/episode1_screen';

  static String choosePlanScreen = '/choose_plan_screen';

  static String paymentMethodScreen = '/payment_method_screen';

  static String homeRecentlyWatchedScreen = '/home_recently_watched_screen';

  static String searchScreen = '/search_screen';

  static String searchResultScreen = '/search_result_screen';

  static String notFoundScreen = '/not_found_screen';

  static String downloadedScreen = '/downloaded_screen';

  static String downloadingScreen = '/downloading_screen';

  static String emptyStateDownloadedScreen = '/empty_state_downloaded_screen';

  static String emptyStateDownloadingScreen = '/empty_state_downloading_screen';

  static String savedScreen = '/saved_screen';

  static String selectSavedScreen = '/select_saved_screen';

  static String savedEmptyScreen = '/saved_empty_screen';

  static String profileScreen = '/profile_screen';

  static String editProfileScreen = '/edit_profile_screen';

  static String notificationScreen = '/notification_screen';

  static String noNotificationScreen = '/no_notification_screen';

  static String historyScreen = '/history_screen';

  static String noHistoryScreen = '/no_history_screen';

  static String settingScreen = '/setting_screen';

  static String languageScreen = '/language_screen';

  static String helpScreen = '/help_screen';

  static String searchHelpScreen = '/search_help_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: logoScreen,
      page: () => LogoScreen(),
      bindings: [
        LogoBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: otpVerificationScreen,
      page: () => OtpVerificationScreen(),
      bindings: [
        OtpVerificationBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordOneScreen,
      page: () => ResetPasswordOneScreen(),
      bindings: [
        ResetPasswordOneBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: categoryComedyScreen,
      page: () => CategoryComedyScreen(),
      bindings: [
        CategoryComedyBinding(),
      ],
    ),
    GetPage(
      name: episode1Screen,
      page: () => Episode1Screen(),
      bindings: [
        Episode1Binding(),
      ],
    ),
    GetPage(
      name: choosePlanScreen,
      page: () => ChoosePlanScreen(),
      bindings: [
        ChoosePlanBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: homeRecentlyWatchedScreen,
      page: () => HomeRecentlyWatchedScreen(),
      bindings: [
        HomeRecentlyWatchedBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: notFoundScreen,
      page: () => NotFoundScreen(),
      bindings: [
        NotFoundBinding(),
      ],
    ),
    GetPage(
      name: downloadedScreen,
      page: () => DownloadedScreen(),
      bindings: [
        DownloadedBinding(),
      ],
    ),
    GetPage(
      name: downloadingScreen,
      page: () => DownloadingScreen(),
      bindings: [
        DownloadingBinding(),
      ],
    ),
    GetPage(
      name: emptyStateDownloadedScreen,
      page: () => EmptyStateDownloadedScreen(),
      bindings: [
        EmptyStateDownloadedBinding(),
      ],
    ),
    GetPage(
      name: emptyStateDownloadingScreen,
      page: () => EmptyStateDownloadingScreen(),
      bindings: [
        EmptyStateDownloadingBinding(),
      ],
    ),
    GetPage(
      name: savedScreen,
      page: () => SavedScreen(),
      bindings: [
        SavedBinding(),
      ],
    ),
    GetPage(
      name: selectSavedScreen,
      page: () => SelectSavedScreen(),
      bindings: [
        SelectSavedBinding(),
      ],
    ),
    GetPage(
      name: savedEmptyScreen,
      page: () => SavedEmptyScreen(),
      bindings: [
        SavedEmptyBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: noNotificationScreen,
      page: () => NoNotificationScreen(),
      bindings: [
        NoNotificationBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: noHistoryScreen,
      page: () => NoHistoryScreen(),
      bindings: [
        NoHistoryBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingBinding(),
      ],
    ),
    GetPage(
      name: languageScreen,
      page: () => LanguageScreen(),
      bindings: [
        LanguageBinding(),
      ],
    ),
    GetPage(
      name: helpScreen,
      page: () => HelpScreen(),
      bindings: [
        HelpBinding(),
      ],
    ),
    GetPage(
      name: searchHelpScreen,
      page: () => SearchHelpScreen(),
      bindings: [
        SearchHelpBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LogoScreen(),
      bindings: [
        LogoBinding(),
      ],
    )
  ];
}
