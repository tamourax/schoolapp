import 'package:go_router/go_router.dart';

import '../../Features/Home/presentation/views/home_view.dart';
import '../../Features/Splash/presentation/views/splash_view.dart';
import '../../Features/blog/presentation/views/blog.dart';
import '../../Features/chat/presentation/views/ChatPage/chatpage.dart';
import '../../Features/chat/presentation/views/Chatroom/Chatroom.dart';
import '../../Features/chat/presentation/views/RequestPage/RequestPage.dart';
import '../../Features/onboarding/presentation/views/onboarding_veiw.dart';
import '../../Features/profile/presentation/views/profilepage.dart';
import '../../Features/singn/presentation/views/signinpage.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const konboardingpage = '/onboarding';
  static const ksignin = '/signinpage';
  static const kblogpage = '/blocpage';
  static const kchatpage = '/chatpage';
  static const kprofilepage = '/profilepage';
  static const kRequstpage = '/kRequstpage';
  static const kChatroom = '/kChatroom';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: ksignin,
        builder: (context, state) => const SigninPage(),
      ),
      GoRoute(
        path: konboardingpage,
        builder: (context, state) => const OnBoarding(),
      ), GoRoute(
        path: kblogpage,
        builder: (context, state) => const BlogPage(),
      ), GoRoute(
        path: kchatpage,
        builder: (context, state) => ChatPage(),
      ), GoRoute(
        path: kprofilepage,
        builder: (context, state) => ProfilePage(),
      ),
      GoRoute(path: kRequstpage
        , builder: (context, state) => RequestPage(),
      ), GoRoute(path: kChatroom
        , builder: (context, state) => Chatroom(),
      )
    ],
  );
}
