import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:smotreshka/core/bloc/router/bloc.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/title.dart';

class DataGridItem extends StatefulWidget {
  final TitleDataModel titleData;
  final String source;
  const DataGridItem({Key? key, required this.titleData, required this.source}) : super(key: key);

  @override
  State<DataGridItem> createState() => _DataGridItemState();
}

class _DataGridItemState extends State<DataGridItem> with SingleTickerProviderStateMixin {
  bool hasMouse = false;
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    controller =
         AnimationController(duration: const Duration(milliseconds: 100), vsync: this);
    animation = Tween<double>(begin: 0, end: 2).animate(controller)
                                              ..addListener(() {setState(() {});});
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return MouseRegion(
    onEnter: (_) {
        setState(() {
          hasMouse = true;
          controller.forward();
        });
      },
      onExit: (_) {
        setState(() {
          hasMouse = false;
          controller.reverse();
        });
      },
      child: GestureDetector(
        onTap: (){
          context.read<RouteBloc>().add(ShowDetailEvent(Pages.detail, widget.titleData, widget.source));
        },
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 100),
          padding: EdgeInsets.all(hasMouse ? 0 : 5.0),
          child: Stack(
            children: [
              Blur(
                blur: animation.value,
                colorOpacity: 0,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: SizedBox(
                    child: Container(
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    //color: const Color(0xff7c94b6),
                    image: DecorationImage(
                        image: NetworkImage(
                            widget.titleData.posters.first.path ),
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high),
                  ),
                  // child: hasMouse
                  //     ? BackdropFilter(
                  //         filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                  //         child: Container(
                  //           color: Colors.black.withOpacity(0.1),
                  //         ),
                  //       )
                  //     : Container()),
                )),
              ),
              if (hasMouse)
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Theme.of(context).colorScheme.primary,
                              ],
                            )),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                        color: Theme.of(context).colorScheme.primary),
                    )
                  ],
                ),
              if (hasMouse)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            widget.titleData.ratingImdb.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                      Wrap(
                        children: [
                          
                          Text(
                            widget.titleData.title,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // Text(
                      //   widget.titleData.title,
                      //   style: Theme.of(context).textTheme.caption,
                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${widget.titleData.duration ~/ 60}??????.",
                            style: Theme.of(context).textTheme.caption!.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                          Text(
                            "${widget.titleData.years.first}",
                            style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
