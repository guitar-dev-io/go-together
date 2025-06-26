// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';
import 'package:gotogether/src/core/widgets/optimized_image.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_state.dart';

class CardExprole extends StatelessWidget {
  const CardExprole({
    super.key,
    required this.item,
  });
  final Activity item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        return Container(
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
                    children: item.tags.map((text) {
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
                  item.title,
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
                        padding: EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              spacing: 6,
                              children: List.generate(
                                3,
                                (i) {
                                  final id = Random(i + 9 ^ 1).nextInt(1000);
                                  final width =
                                      Random(id.hashCode ^ 1).nextInt(1000) +
                                          300;
                                  final height =
                                      Random(id.hashCode ^ 2).nextInt(1000) +
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
                                    label: Text(
                                      item.joinedUsers.length
                                          .toStringAsFixed(0),
                                    ),
                                  ),
                                ),
                            ),
                            SizedBox(width: 8),
                            Text('Sound Check'),
                            Text('1.2k views'),
                            SizedBox(width: 8),
                            Text('1 day ago'),
                            SizedBox(width: 8),
                            Text(
                              item.description,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: OptimizedImage(
                        src: item.photos.first,
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                        cache: true,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
