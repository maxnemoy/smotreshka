import 'package:flutter/material.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/collection/collection.dart';
import 'package:smotreshka/interface/components/data_view/data_grid_item.dart';

class DataGridView extends StatelessWidget {
  final CollectionDataModel titlesList;
  const DataGridView({Key? key, required this.titlesList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              mainAxisExtent: 300,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          physics: null,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 16.0),
          itemCount: titlesList.titlesList.length,
          itemBuilder: (context, index) => DataGridItem(
                titleData: titlesList.titlesList[index],
                source: titlesList.vodSource,
              )),
    );
  }
}