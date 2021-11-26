import 'package:flutter/material.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/collection/collection.dart';
import 'package:smotreshka/interface/components/data_view/data_grid_view.dart';


class DataView extends StatelessWidget {
  final List<CollectionDataModel> list;
  const DataView({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: list.length,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              indicatorColor: Theme.of(context).colorScheme.primary,
              labelColor: Theme.of(context).colorScheme.primary,
              tabs: list
                  .map((e) => Tab(
                        text: e.caption,
                      ))
                  .toList(),
            ),
            Expanded(
              child: TabBarView(
                children: list
                    .map((e) => DataGridView(
                          titlesList: e,
                        ))
                    .toList(),
              ),
            )
          ],
        ));
  }
}