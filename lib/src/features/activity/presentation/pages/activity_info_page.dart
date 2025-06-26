import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/widgets/optimized_image.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_state.dart';

class ActivityInfoPage extends StatefulWidget {
  const ActivityInfoPage({super.key});

  @override
  State<ActivityInfoPage> createState() => _ActivityInfoPageState();
}

class _ActivityInfoPageState extends State<ActivityInfoPage> {
  final CarouselController controller = CarouselController(initialItem: 1);
  // late final PageController controller;
  late final Timer timer;
  int currentPage = 0;
  // double _currentOffset = 0;
  // final double _step = 320; // ระยะห่างแต่ละรูปโดยประมาณ

  @override
  void initState() {
    super.initState();
    // controller = PageController(viewportFraction: 0.9);
    // init();
  }

  void init() {
    // final selected = context.read<ActivityBloc>().state.selected;
    // final photos = selected?.photos ?? [];

    // timer = Timer.periodic(const Duration(seconds: 3), (_) {
    //   if (controller.hasClients) {
    //     currentPage = (currentPage + 1) % photos.length;

    //     final maxOffset = controller.position.maxScrollExtent;

    //     _currentOffset += _step;
    //     if (_currentOffset >= maxOffset) {
    //       _currentOffset = 0;
    //     }
    //     controller.animateTo(
    //       _currentOffset,
    //       duration: const Duration(milliseconds: 400),
    //       curve: Curves.easeInOut,
    //     );
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    final selected = context.read<ActivityBloc>().state.selected;
    final photos = selected?.photos ?? [];
    final double height = MediaQuery.sizeOf(context).height;
    final double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Info'),
      ),
      body: BlocBuilder<ActivityBloc, ActivityState>(
        builder: (context, state) {
          final activity = selected;
          return SingleChildScrollView(
            child: Column(
              children: [
                // CarouselController()
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 250),
                  child: CarouselView(
                    itemExtent: w,
                    controller: controller,
                    shrinkExtent: 200,
                    itemSnapping: true,
                    elevation: 2,
                    scrollDirection: Axis.horizontal,
                    reverse: false,
                    padding: const EdgeInsets.all(10.0),
                    children: List.generate(
                      photos.length,
                      (i) => ClipRRect(
                        // borderRadius: BorderRadius.circular(13),
                        child: OptimizedImage(
                          src: photos[i],
                          fit: BoxFit.cover,
                          // width: 100,
                          // height: 100,
                          cache: true,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  constraints: BoxConstraints(
                    minHeight: 220,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            spacing: 6,
                            children: [
                              ...activity!.tags,
                            ].map((text) {
                              return ActionChip(
                                visualDensity: VisualDensity(
                                  vertical: -4,
                                  horizontal: -4,
                                ),
                                onPressed: () {},
                                label: Text(text),
                              );
                            }).toList(),
                          ),
                        ),
                        Text(
                          activity.title,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          spacing: 2,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                // color: Colors.red.shade100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Wrap(
                                      spacing: 6,
                                      children: List.generate(
                                        3,
                                        (i) {
                                          final id =
                                              Random(i + 9 ^ 1).nextInt(1000);
                                          final width = Random(id.hashCode ^ 1)
                                                  .nextInt(1000) +
                                              300;
                                          final height = Random(id.hashCode ^ 2)
                                                  .nextInt(1000) +
                                              300;

                                          var thumbnail =
                                              'https://picsum.photos/seed/$id/$width/$height';
                                          return CircleAvatar(
                                            radius: 16,
                                            backgroundImage: NetworkImage(
                                              thumbnail,
                                            ),
                                          );
                                        },
                                      )..add(
                                          ActionChip(
                                            onPressed: () {},
                                            padding: EdgeInsets.all(8),
                                            labelPadding: EdgeInsets.zero,
                                            visualDensity: VisualDensity(
                                              horizontal: -4,
                                              vertical: -4,
                                            ),
                                            avatar: Icon(
                                              Icons.person,
                                              size: 15,
                                            ),
                                            label: const Text('20'),
                                          ),
                                        ),
                                    ),
                                    SizedBox(width: 8),
                                    Text('Sound Check'),
                                    Text('1.2k views'),
                                    SizedBox(width: 8),
                                    Text('1 day ago'),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Colors.grey.shade100,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://thumbs.dreamstime.com/b/young-party-cheerful-people-showered-confetti-club-31137048.jpg',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
