import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : WelcomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : WelcomePageWidget(),
        ),
        FFRoute(
          name: 'loginPage',
          path: '/loginPage',
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: 'completeProfile',
          path: '/completeProfile',
          builder: (context, params) => CompleteProfileWidget(),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'addAnotherProfile',
          path: '/addAnotherProfile',
          builder: (context, params) => AddAnotherProfileWidget(),
        ),
        FFRoute(
          name: 'onboarding',
          path: '/onboarding',
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: 'homePage1',
          path: '/homePage1',
          asyncParams: {
            'test': getDoc(['asdfasdf'], AsdfasdfRecord.fromSnapshot),
          },
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'homePage1')
              : HomePage1Widget(
                  test: params.getParam('test', ParamType.Document),
                ),
        ),
        FFRoute(
          name: 'myAppointments',
          path: '/myAppointments',
          builder: (context, params) => MyAppointmentsWidget(),
        ),
        FFRoute(
          name: 'appointmentDetails',
          path: '/appointmentDetails',
          builder: (context, params) => AppointmentDetailsWidget(
            appointmentDetails: params.getParam('appointmentDetails',
                ParamType.DocumentReference, false, ['appointments']),
          ),
        ),
        FFRoute(
          name: 'profilePage',
          path: '/profilePage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profilePage')
              : ProfilePageWidget(
                  userProfile: params.getParam('userProfile',
                      ParamType.DocumentReference, false, ['users']),
                ),
        ),
        FFRoute(
          name: 'editProfile',
          path: '/editProfile',
          builder: (context, params) => EditProfileWidget(
            userProfile: params.getParam(
                'userProfile', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'GamePage',
          path: '/gamePage',
          builder: (context, params) => GamePageWidget(),
        ),
        FFRoute(
          name: 'appointmentDetailsProfile',
          path: '/appointmentDetailsProfile',
          builder: (context, params) => AppointmentDetailsProfileWidget(
            appointmentDetails: params.getParam('appointmentDetails',
                ParamType.DocumentReference, false, ['appointments']),
          ),
        ),
        FFRoute(
          name: 'aiui',
          path: '/aiui',
          builder: (context, params) => AiuiWidget(),
        ),
        FFRoute(
          name: 'Details24QuizPage',
          path: '/details24QuizPage',
          builder: (context, params) => Details24QuizPageWidget(),
        ),
        FFRoute(
          name: 'Details24QuizPage2',
          path: '/details24QuizPage2',
          builder: (context, params) => Details24QuizPage2Widget(),
        ),
        FFRoute(
          name: 'Details24QuizPage3',
          path: '/details24QuizPage3',
          builder: (context, params) => Details24QuizPage3Widget(),
        ),
        FFRoute(
          name: 'SuccessPage',
          path: '/successPage',
          builder: (context, params) => SuccessPageWidget(),
        ),
        FFRoute(
          name: 'aimine',
          path: '/aimine',
          builder: (context, params) => AimineWidget(),
        ),
        FFRoute(
          name: 'portal_amoozeshi',
          path: '/portalAmoozeshi',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'portal_amoozeshi')
              : PortalAmoozeshiWidget(),
        ),
        FFRoute(
          name: 'privacyPolicy',
          path: '/privacyPolicy',
          builder: (context, params) => PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: 'rktv',
          path: '/rktv',
          builder: (context, params) => RktvWidget(),
        ),
        FFRoute(
          name: 'haram',
          path: '/haram',
          builder: (context, params) => HaramWidget(),
        ),
        FFRoute(
          name: 'Rktoon',
          path: '/rktoon',
          builder: (context, params) => RktoonWidget(),
        ),
        FFRoute(
          name: 'Live',
          path: '/live',
          builder: (context, params) => LiveWidget(),
        ),
        FFRoute(
          name: 'JameDescription',
          path: '/jameDescription',
          builder: (context, params) => JameDescriptionWidget(),
        ),
        FFRoute(
          name: 'zabanDescription',
          path: '/zabanDescription',
          builder: (context, params) => ZabanDescriptionWidget(),
        ),
        FFRoute(
          name: 'FoqeJame',
          path: '/foqeJame',
          builder: (context, params) => FoqeJameWidget(),
        ),
        FFRoute(
          name: 'FoqeZaban',
          path: '/foqeZaban',
          builder: (context, params) => FoqeZabanWidget(),
        ),
        FFRoute(
          name: 'SubwaySurfers',
          path: '/subwaySurfers',
          builder: (context, params) => SubwaySurfersWidget(),
        ),
        FFRoute(
          name: 'HiddenPage1',
          path: '/hiddenPage1',
          builder: (context, params) => HiddenPage1Widget(),
        ),
        FFRoute(
          name: 'Headball',
          path: '/headball',
          builder: (context, params) => HeadballWidget(),
        ),
        FFRoute(
          name: 'jetmusic',
          path: '/jetmusic',
          builder: (context, params) => JetmusicWidget(),
        ),
        FFRoute(
          name: 'planet',
          path: '/planet',
          builder: (context, params) => PlanetWidget(),
        ),
        FFRoute(
          name: 'Takhfif',
          path: '/takhfif',
          builder: (context, params) => TakhfifWidget(),
        ),
        FFRoute(
          name: 'LiveDescription',
          path: '/liveDescription',
          builder: (context, params) => LiveDescriptionWidget(),
        ),
        FFRoute(
          name: 'codeMonkey',
          path: '/codeMonkey',
          builder: (context, params) => CodeMonkeyWidget(),
        ),
        FFRoute(
          name: 'friendsPage',
          path: '/friendsPage',
          builder: (context, params) => FriendsPageWidget(),
        ),
        FFRoute(
          name: 'chatMain',
          path: '/chatMain',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'chatMain')
              : ChatMainWidget(),
        ),
        FFRoute(
          name: 'chatdetail',
          path: '/chatdetail',
          asyncParams: {
            'chatUser': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => ChatdetailWidget(
            chatUser: params.getParam('chatUser', ParamType.Document),
            chatRef: params.getParam(
                'chatRef', ParamType.DocumentReference, false, ['chats']),
          ),
        ),
        FFRoute(
          name: 'ChatroomDescription',
          path: '/chatroomDescription',
          builder: (context, params) => ChatroomDescriptionWidget(),
        ),
        FFRoute(
          name: 'homePage2',
          path: '/home2Page',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'homePage2')
              : HomePage2Widget(),
        ),
        FFRoute(
          name: 'createStory',
          path: '/createStory',
          builder: (context, params) => CreateStoryWidget(),
        ),
        FFRoute(
          name: 'storyDetails',
          path: '/storyDetails',
          builder: (context, params) => StoryDetailsWidget(
            initialStoryIndex:
                params.getParam('initialStoryIndex', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'postDetails',
          path: '/postDetails',
          asyncParams: {
            'userRecord': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => PostDetailsWidget(
            postReference: params.getParam('postReference',
                ParamType.DocumentReference, false, ['userPosts']),
            userRecord: params.getParam('userRecord', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'viewProfilePageOther',
          path: '/viewProfilePageOther',
          asyncParams: {
            'userDetails': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => ViewProfilePageOtherWidget(
            userDetails: params.getParam('userDetails', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'createPost',
          path: '/createPost',
          builder: (context, params) => CreatePostWidget(),
        ),
        FFRoute(
          name: 'WelcomePage',
          path: '/welcomePage',
          builder: (context, params) => WelcomePageWidget(),
        ),
        FFRoute(
          name: 'Razavi',
          path: '/razavi',
          builder: (context, params) => RazaviWidget(),
        ),
        FFRoute(
          name: 'RKfilm',
          path: '/rKfilm',
          builder: (context, params) => RKfilmWidget(),
        ),
        FFRoute(
          name: 'RKSport',
          path: '/rKSport',
          builder: (context, params) => RKSportWidget(),
        ),
        FFRoute(
          name: 'Pinpage',
          path: '/pinpage',
          builder: (context, params) => PinpageWidget(),
        ),
        FFRoute(
          name: 'Pinpage2',
          path: '/pinpage2',
          builder: (context, params) => Pinpage2Widget(),
        ),
        FFRoute(
          name: 'Pinpage3',
          path: '/pinpage3',
          builder: (context, params) => Pinpage3Widget(),
        ),
        FFRoute(
          name: 'HintCode-4',
          path: '/hintCode4',
          builder: (context, params) => HintCode4Widget(),
        ),
        FFRoute(
          name: 'Pinpage-500',
          path: '/pinpage500',
          builder: (context, params) => Pinpage500Widget(),
        ),
        FFRoute(
          name: 'HintCode-3',
          path: '/hintCode3',
          builder: (context, params) => HintCode3Widget(),
        ),
        FFRoute(
          name: 'HiddenPage500',
          path: '/hiddenPage500',
          builder: (context, params) => HiddenPage500Widget(),
        ),
        FFRoute(
          name: 'HiddenPage2',
          path: '/hiddenPage2',
          builder: (context, params) => HiddenPage2Widget(),
        ),
        FFRoute(
          name: 'HiddenPage3',
          path: '/hiddenPage3',
          builder: (context, params) => HiddenPage3Widget(),
        ),
        FFRoute(
          name: 'GiftPage',
          path: '/giftPage',
          builder: (context, params) => GiftPageWidget(),
        ),
        FFRoute(
          name: 'Music',
          path: '/music',
          builder: (context, params) => MusicWidget(),
        ),
        FFRoute(
          name: 'RadioHooshmand',
          path: '/radioHooshmand',
          builder: (context, params) => RadioHooshmandWidget(),
        ),
        FFRoute(
          name: 'KoodakHooshmand',
          path: '/koodakHooshmand',
          builder: (context, params) => KoodakHooshmandWidget(),
        ),
        FFRoute(
          name: 'HiddenGift',
          path: '/hiddenGift',
          builder: (context, params) => HiddenGiftWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/welcomePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/splash4.jpg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
