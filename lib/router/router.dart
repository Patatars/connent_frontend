import 'package:auto_route/auto_route.dart';
import '../features/projects/widgets/widgets.dart';

import '../features/home/home.dart';
import '../features/news/news.dart';
import '../features/projects/projects.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(
            page: NewsRoute.page,
            path: 'news',
          ),
          AutoRoute(
              page: ProjectsRoute.page,
              path: 'projects',
              meta: const {'floatingActionButton': ProjectsAddButton()})
        ]),
    AutoRoute(page: AddProjectRoute.page, path: '/addProject')
      ];
}
