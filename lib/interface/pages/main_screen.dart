import 'package:flutter/material.dart';
import 'package:smotreshka/components/icons_wrapper/icons_data.dart';
import 'package:smotreshka/core/bloc/logic/bloc.dart';
import 'package:smotreshka/core/bloc/router/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smotreshka/interface/components/page_header.dart';
import 'package:smotreshka/interface/pages/cinema/cinema.dart';
import 'package:smotreshka/interface/pages/detail/detail.dart';
import 'package:smotreshka/interface/pages/home/home.dart';
import 'package:smotreshka/interface/pages/search/search.dart';
import 'package:smotreshka/interface/pages/settings/settings.dart';
import 'package:smotreshka/interface/pages/tv/tv.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const MainScreen());
  }

  final int extendedMaxSize = 800;

  Widget getPage(BuildContext context, RouteState state) {
    if (state.page == Pages.main){
       context.read<LogicBloc>().add(GetHomeCollectionEvent());
       return const HomeViewer();
    }
    if (state.page == Pages.search) return const SearchViewer();
    if (state.page == Pages.profile) return const SettingsViewer();
    if (state.page == Pages.tv){ 
      context.read<LogicBloc>().add(GetChannelEvent());
      return const TvViewer();
      }
    if (state.page == Pages.detail) {
      context.read<LogicBloc>().add(GetVideoDetailEvent(state.title, state.source));
      return const DetailView();
    }
    return CinemaViewer(page: state.page);
  }

  int getIndex(Pages page) {
    if (page.index > 7) return 0;
    return page.index;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteBloc, RouteState>(
        builder: (context, state) => Scaffold(
              body: Row(
                children: [
                  LayoutBuilder(
                    builder: (context, constraint) => SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: constraint.maxHeight),
                        child: IntrinsicHeight(
                            child: NavigationRail(
                                extended: constraint.maxWidth > extendedMaxSize,
                                onDestinationSelected: (i) {
                                  context.read<RouteBloc>().add(SelectPageEvent(Pages.values[i]));
                                },
                                leading: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Image.asset(
                                        MediaQuery.of(context).size.width >
                                                extendedMaxSize
                                            ? "assets/logo/smotreshka_full_light.png"
                                            : "assets/logo/smotreshka_compact_light.png",
                                        filterQuality: FilterQuality.high,
                                        height: 40,
                                        width:MediaQuery.of(context).size.width > extendedMaxSize ? 150 : 40,
                                      ),
                                    )
                                  ],
                                ),
                                destinations: const [
                                  NavigationRailDestination(
                                    icon: Padding(
                                      padding: EdgeInsets.only(right: 0),
                                      child: Icon(Icons.home),
                                    ),
                                    label: Text("Главная"),
                                  ),
                                  NavigationRailDestination(
                                    icon: Icon(Icons.tv_sharp),
                                    label: Text("Телевидение"),
                                  ),
                                  NavigationRailDestination(
                                    icon: Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Icon(
                                        BrandIcons.start,
                                        size: 16,
                                      ),
                                    ),
                                    label: Text("Старт"),
                                  ),
                                  NavigationRailDestination(
                                    icon: Icon(BrandIcons.amediateka),
                                    label: Text("Амедиатека"),
                                  ),
                                  NavigationRailDestination(
                                    icon: Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(
                                        BrandIcons.megago,
                                      ),
                                    ),
                                    label: Text("Мегого"),
                                  ),
                                  NavigationRailDestination(
                                    icon: Icon(
                                      BrandIcons.moretv,
                                      size: 26,
                                    ),
                                    label: Text(
                                      "Много ТВ",
                                    ),
                                  ),
                                  NavigationRailDestination(
                                    icon: Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Icon(BrandIcons.primer),
                                    ),
                                    label: Text("Премьер"),
                                  ),
                                  NavigationRailDestination(
                                    icon: Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Icon(BrandIcons.ivi),
                                    ),
                                    label: Text("Иви"),
                                  ),
                                ],
                                selectedIndex: getIndex(state.page))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const PageHeader(),
                        getPage(context, state),
                      ],
                    ),
                  )
                ],
              ),
            )
          );
  }
}
