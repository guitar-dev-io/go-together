import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';
import 'package:gotogether/src/core/widgets/widgets.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_event.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_state.dart';
import 'package:gotogether/src/features/activity/presentation/pages/activity_info_page.dart';

import 'card_explore.dart';

/// ฟิลเตอร์ที่ใช้ร่วมกันทุกหน้า
extension ActivityStateFilter on ActivityState {
  List<Activity> get filtered {
    final q = query.trim().toLowerCase();
    return activities.where((a) {
      final okTag = tag == null || a.tags.contains(tag);
      final okQuery = q.isEmpty ||
          a.title.toLowerCase().contains(q) ||
          a.description.toLowerCase().contains(q) ||
          a.location.toLowerCase().contains(q);
      return okTag && okQuery;
    }).toList();
  }
}

void openActivity(BuildContext context, Activity item) {
  context.read<ActivityBloc>().add(ActivityEvent.selected(item));
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => const ActivityInfoPage()),
  );
}

/// รายการกิจกรรมแบบ generic ใช้ได้ทั้งหน้า Explore / ทริปของฉัน / บันทึกไว้
class ActivityList extends StatelessWidget {
  const ActivityList({
    super.key,
    required this.items,
    required this.emptyTitle,
    this.emptySubtitle,
    this.header,
  });

  final List<Activity> items;
  final String emptyTitle;
  final String? emptySubtitle;
  final Widget? header;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Column(children: [
        if (header != null) header!,
        Expanded(
          child: EmptyView(
            icon: Icons.travel_explore,
            title: emptyTitle,
            subtitle: emptySubtitle,
          ),
        ),
      ]);
    }
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ActivityBloc>().add(const ActivityEvent.fetchActivities());
      },
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 96),
        itemCount: items.length + (header != null ? 1 : 0),
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (context, index) {
          if (header != null) {
            if (index == 0) return header!;
            index -= 1;
          }
          final item = items[index];
          return CardExprole(item: item, onTap: () => openActivity(context, item));
        },
      ),
    );
  }
}

class ListviewExplore extends StatelessWidget {
  const ListviewExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        if (state.isLoading && state.activities.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.error != null && state.activities.isEmpty) {
          return EmptyView(
            icon: Icons.error_outline,
            title: 'โหลดข้อมูลไม่สำเร็จ',
            subtitle: state.error,
            action: FilledButton(
              style: FilledButton.styleFrom(minimumSize: const Size(140, 44)),
              onPressed: () => context
                  .read<ActivityBloc>()
                  .add(const ActivityEvent.fetchActivities()),
              child: const Text('ลองใหม่'),
            ),
          );
        }

        final tags = {for (final a in state.activities) ...a.tags}.toList();
        return ActivityList(
          items: state.filtered,
          emptyTitle: 'ไม่พบทริปที่ค้นหา',
          emptySubtitle: 'ลองเปลี่ยนคำค้นหา หรือสร้างทริปของคุณเอง',
          header: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 8,
                children: [
                  ChoiceChip(
                    label: const Text('ทั้งหมด'),
                    selected: state.tag == null,
                    onSelected: (_) => context
                        .read<ActivityBloc>()
                        .add(const ActivityEvent.filterTag(null)),
                  ),
                  for (final tag in tags)
                    ChoiceChip(
                      label: Text(tag),
                      selected: state.tag == tag,
                      onSelected: (_) => context
                          .read<ActivityBloc>()
                          .add(ActivityEvent.filterTag(
                              state.tag == tag ? null : tag)),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
