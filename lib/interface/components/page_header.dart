import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smotreshka/core/bloc/auth/bloc.dart';
import 'package:smotreshka/core/bloc/router/bloc.dart';
import 'package:smotreshka/core/bloc/theme/bloc.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: Row(children: [
        SizedBox(
          width: 300,
          child: TextField(
            //controller: _search,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                label: Text("Поиск..."),
                border: InputBorder.none),
            onSubmitted: (v) => context.read<RouteBloc>().add(SelectPageEvent(Pages.search)),
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              context.read<ThemeBloc>().toggleTheme();
            },
            icon: Icon(Theme.of(context).brightness == Brightness.dark
                ? Icons.wb_sunny_outlined
                : Icons.wb_cloudy_outlined)),
        PopupMenuButton(
          onSelected: (v) {
            switch (v) {
              case "profile":
                context.read<RouteBloc>().add(SelectPageEvent(Pages.profile));
                break;
              case "exit":
                context.read<AuthBloc>().add(LogoutEvent());
                break;
              default:
            }
          },
          itemBuilder: (context) => [
            const PopupMenuItem(
              child: Text("Профиль"),
              value: "profile",
            ),
            const PopupMenuItem(
              child: Text("Выход"),
              value: "exit",
            ),
          ],
        ),
      ]),
    );
  }
}