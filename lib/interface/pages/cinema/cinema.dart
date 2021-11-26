import 'package:flutter/material.dart';
import 'package:smotreshka/core/bloc/router/bloc.dart';

class CinemaViewer extends StatelessWidget {
  final Pages page;
  const CinemaViewer({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Cinema: $page"),
    );
  }
}