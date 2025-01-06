import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/features/add-new-card/view/addnewcard_screen.dart';
import 'package:free_banking_mobile_app/features/all-cards/view/allcards_screen.dart';
import 'package:free_banking_mobile_app/features/change-password/view/changepassword_screen.dart';
import 'package:free_banking_mobile_app/features/edit-profile/view/editprofile_screen.dart';
import 'package:free_banking_mobile_app/features/home-info/view/homeinfo_screen.dart';
import 'package:free_banking_mobile_app/features/home/view/home_screen.dart';
import 'package:free_banking_mobile_app/features/language/view/language_screen.dart';
import 'package:free_banking_mobile_app/features/my-cards/view/mycards_screen.dart';
import 'package:free_banking_mobile_app/features/onboarding%201/view/onboarding1_screen.dart';
import 'package:free_banking_mobile_app/features/onboarding%202/view/onboarding2_screen.dart';
import 'package:free_banking_mobile_app/features/onboarding%203/view/onboarding3_screen.dart';
import 'package:free_banking_mobile_app/features/profile/view/profile_screen.dart';
import 'package:free_banking_mobile_app/features/search/view/search_screen.dart';
import 'package:free_banking_mobile_app/features/settings/view/settings_screen.dart';
import 'package:free_banking_mobile_app/features/sign-in/view/signin_screen.dart';
import 'package:free_banking_mobile_app/features/sign-up/view/signup_screen.dart';
import 'package:free_banking_mobile_app/features/splash/view/splash_screen.dart';
import 'package:free_banking_mobile_app/features/statistics/view/statistics_screen.dart';
import 'package:free_banking_mobile_app/features/terms-and-conditions/view/terms_and_conditions_screen.dart';
import 'package:free_banking_mobile_app/features/transaction-history/view/transactionhistory_screen.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:go_router/go_router.dart';

class AppRouter {

static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

static final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
      initialLocation: RoutesConstants.splashScreen,
  routes: <RouteBase>[
    GoRoute(
      path: RoutesConstants.splashScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: RoutesConstants.signInScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SigninScreen();
      },
    ),
    GoRoute(
      path: RoutesConstants.signUpScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SignupScreen();
      },
    ),
    GoRoute(
      path: RoutesConstants.homeScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: RoutesConstants.homeinfoscreen,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeinfoScreen();
      },
    ),
    GoRoute(
      path: RoutesConstants.myCardsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const MycardsScreen();
      },
    ),
    GoRoute(
        path: RoutesConstants.onboarding1Screen,
        builder: (BuildContext context, GoRouterState state) {
          return const Onboarding1Screen();
        }),
    GoRoute(
        path: RoutesConstants.onboarding2Screen,
        builder: (BuildContext context, GoRouterState state) {
          return const Onboarding2Screen();
        }),
    GoRoute(
        path: RoutesConstants.onboarding3Screen,
        builder: (BuildContext context, GoRouterState state) {
          return const Onboarding3Screen();
        }),
    GoRoute(
        path: RoutesConstants.profileScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileScreen();
        }),
    GoRoute(
        path: RoutesConstants.settingsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SettingsScreen();
        }),
    GoRoute(
        path: RoutesConstants.statisticsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const StatisticsScreen();
        }),
        GoRoute(
        path: RoutesConstants.editprofilescreen,
        builder: (BuildContext context, GoRouterState state) {
          return const EditprofileScreen();
        }),
        GoRoute(
        path: RoutesConstants.addnewcardscreen,
        builder: (BuildContext context, GoRouterState state) {
          return const AddnewcardScreen();
        }),
        GoRoute(
        path: RoutesConstants.allcardsscreen,
        builder: (BuildContext context, GoRouterState state) {
          return const AllcardsScreen();
        }),
        GoRoute(
        path: RoutesConstants.transactionhistoryscreen,
        builder: (BuildContext context, GoRouterState state) {
          return const TransactionhistoryScreen();
        }),
        GoRoute(
        path: RoutesConstants.languagescreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LanguageScreen();
        }),
        GoRoute(
        path: RoutesConstants.searchscreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchScreen();
        }),
        GoRoute(
        path: RoutesConstants.changepasswordscreen,
        builder: (BuildContext context, GoRouterState state) {
          return const ChangepasswordScreen();
        }),
        GoRoute(
        path: RoutesConstants.termsscreen,
        builder: (BuildContext context, GoRouterState state) {
          return const TermsAndConditionsScreen();
        })
  ],
  errorBuilder: (BuildContext context, GoRouterState state) {
    return const Scaffold(
      body: Center(
        child: Text('Error'),
      ),
    );
  }
);
}
