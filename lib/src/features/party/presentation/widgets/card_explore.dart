import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';
import 'package:gotogether/src/core/widgets/optimized_image.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_event.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_state.dart';

/// กองรูปผู้เข้าร่วม + จำนวนที่เหลือ
class AvatarStack extends StatelessWidget {
  const AvatarStack({super.key, required this.users, this.max = 4, this.radius = 14});
  final List<dynamic> users;
  final int max;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final shown = users.take(max).toList();
    final rest = users.length - shown.length;
    return SizedBox(
      height: radius * 2 + 4,
      width: (shown.length + (rest > 0 ? 1 : 0)) * radius * 1.4 + radius * 0.8,
      child: Stack(
        children: [
          for (var i = 0; i < shown.length; i++)
            Positioned(
              left: i * radius * 1.4,
              child: CircleAvatar(
                radius: radius + 2,
                backgroundColor: scheme.surface,
                child: CircleAvatar(
                  radius: radius,
                  backgroundImage: NetworkImage(shown[i].profileImage as String),
                ),
              ),
            ),
          if (rest > 0)
            Positioned(
              left: shown.length * radius * 1.4,
              child: CircleAvatar(
                radius: radius + 2,
                backgroundColor: scheme.surface,
                child: CircleAvatar(
                  radius: radius,
                  backgroundColor: scheme.primaryContainer,
                  child: Text('+$rest', style: TextStyle(fontSize: radius * 0.7)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class CardExprole extends StatelessWidget {
  const CardExprole({super.key, required this.item, this.onTap});
  final Activity item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final scheme = t.colorScheme;
    final isFull = item.currentParticipants >= item.maxParticipants;
    final ratio =
        (item.currentParticipants / item.maxParticipants).clamp(0.0, 1.0);

    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: 'photo-${item.id}',
                  child: OptimizedImage(
                    src: item.photos.first,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 160,
                    cache: true,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: BlocSelector<ActivityBloc, ActivityState, bool>(
                    selector: (s) => s.savedIds.contains(item.id),
                    builder: (context, saved) => IconButton.filledTonal(
                      tooltip: saved ? 'เลิกบันทึก' : 'บันทึก',
                      onPressed: () => context
                          .read<ActivityBloc>()
                          .add(ActivityEvent.toggleSaved(item.id)),
                      icon: Icon(saved ? Icons.bookmark : Icons.bookmark_border),
                    ),
                  ),
                ),
                if (isFull)
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Chip(
                      label: const Text('เต็มแล้ว'),
                      backgroundColor: scheme.errorContainer,
                      visualDensity: VisualDensity.compact,
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 6,
                    children: [
                      for (final tag in item.tags.take(3))
                        Chip(
                          label: Text(tag),
                          visualDensity: VisualDensity.compact,
                          backgroundColor: scheme.secondaryContainer,
                        ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item.title,
                    style: t.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item.description,
                    style: t.textTheme.bodyMedium
                        ?.copyWith(color: scheme.onSurfaceVariant),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 14,
                    runSpacing: 4,
                    children: [
                      _Meta(Icons.calendar_today_outlined, item.date),
                      _Meta(Icons.schedule, item.time),
                      _Meta(Icons.place_outlined, item.location),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      AvatarStack(users: [item.owner, ...item.joinedUsers]),
                      const Spacer(),
                      Text(
                        '${item.currentParticipants}/${item.maxParticipants} คน',
                        style: t.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: ratio,
                      minHeight: 6,
                      color: isFull ? scheme.error : scheme.primary,
                      backgroundColor: scheme.surfaceContainerHighest,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Meta extends StatelessWidget {
  const _Meta(this.icon, this.text);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final c = Theme.of(context).colorScheme.onSurfaceVariant;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: c),
        const SizedBox(width: 4),
        Text(text, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: c)),
      ],
    );
  }
}
