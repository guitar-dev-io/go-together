import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';
import 'package:gotogether/src/core/models/activity/user_model.dart';
import 'package:gotogether/src/core/widgets/optimized_image.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_event.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_state.dart';

class ActivityInfoPage extends StatefulWidget {
  const ActivityInfoPage({super.key});

  @override
  State<ActivityInfoPage> createState() => _ActivityInfoPageState();
}

class _ActivityInfoPageState extends State<ActivityInfoPage> {
  final _pageCtrl = PageController();
  int _page = 0;

  @override
  void dispose() {
    _pageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        final a = state.selected;
        if (a == null) {
          return Scaffold(appBar: AppBar(), body: const SizedBox());
        }
        final joined = state.joinedIds.contains(a.id);
        final saved = state.savedIds.contains(a.id);
        final full = a.currentParticipants >= a.maxParticipants;
        final t = Theme.of(context);
        final scheme = t.colorScheme;

        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 280,
                actions: [
                  IconButton.filledTonal(
                    tooltip: 'บันทึก',
                    onPressed: () => context
                        .read<ActivityBloc>()
                        .add(ActivityEvent.toggleSaved(a.id)),
                    icon: Icon(saved ? Icons.bookmark : Icons.bookmark_border),
                  ),
                  const SizedBox(width: 8),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      PageView.builder(
                        controller: _pageCtrl,
                        itemCount: a.photos.length,
                        onPageChanged: (i) => setState(() => _page = i),
                        itemBuilder: (_, i) => i == 0
                            ? Hero(
                                tag: 'photo-${a.id}',
                                child: OptimizedImage(
                                    src: a.photos[i], fit: BoxFit.cover, cache: true),
                              )
                            : OptimizedImage(
                                src: a.photos[i], fit: BoxFit.cover, cache: true),
                      ),
                      if (a.photos.length > 1)
                        Positioned(
                          bottom: 12,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (var i = 0; i < a.photos.length; i++)
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  margin: const EdgeInsets.symmetric(horizontal: 3),
                                  width: i == _page ? 18 : 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: i == _page ? Colors.white : Colors.white54,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 120),
                sliver: SliverList.list(
                  children: [
                    Wrap(
                      spacing: 8,
                      children: [for (final tag in a.tags) Chip(label: Text(tag))],
                    ),
                    const SizedBox(height: 8),
                    Text(a.title,
                        style: t.textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.w700)),
                    const SizedBox(height: 16),
                    _InfoTile(Icons.calendar_today_outlined, 'วันที่', a.date),
                    _InfoTile(Icons.schedule, 'เวลา', a.time),
                    _InfoTile(Icons.place_outlined, 'สถานที่', a.location),
                    const SizedBox(height: 16),
                    Text('รายละเอียด', style: t.textTheme.titleMedium),
                    const SizedBox(height: 6),
                    Text(a.description, style: t.textTheme.bodyLarge),
                    const SizedBox(height: 20),
                    Text('ผู้จัด', style: t.textTheme.titleMedium),
                    const SizedBox(height: 6),
                    _UserTile(a.owner, owner: true),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Text('ผู้เข้าร่วม', style: t.textTheme.titleMedium),
                        const Spacer(),
                        Text('${a.currentParticipants}/${a.maxParticipants} คน',
                            style: t.textTheme.labelLarge
                                ?.copyWith(color: scheme.primary)),
                      ],
                    ),
                    const SizedBox(height: 6),
                    for (final u in a.joinedUsers) _UserTile(u),
                    if (joined) _UserTile(const User(name: 'คุณ', profileImage: 'https://picsum.photos/id/64/100')),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: joined
                  ? OutlinedButton.icon(
                      onPressed: () => _toggleJoin(context, a),
                      icon: const Icon(Icons.logout),
                      label: const Text('ออกจากทริป'),
                    )
                  : FilledButton.icon(
                      onPressed: full ? null : () => _toggleJoin(context, a),
                      icon: const Icon(Icons.group_add),
                      label: Text(full ? 'ทริปเต็มแล้ว' : 'เข้าร่วมทริป'),
                    ),
            ),
          ),
        );
      },
    );
  }

  void _toggleJoin(BuildContext context, Activity a) {
    final bloc = context.read<ActivityBloc>();
    final wasJoined = bloc.state.joinedIds.contains(a.id);
    bloc.add(ActivityEvent.toggleJoin(a.id));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(wasJoined ? 'ออกจากทริปแล้ว' : 'เข้าร่วมทริปเรียบร้อย 🎉'),
    ));
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile(this.icon, this.label, this.value);
  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: scheme.primaryContainer,
            child: Icon(icon, size: 20, color: scheme.onPrimaryContainer),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: scheme.onSurfaceVariant)),
              Text(value, style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ],
      ),
    );
  }
}

class _UserTile extends StatelessWidget {
  const _UserTile(this.user, {this.owner = false});
  final User user;
  final bool owner;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(backgroundImage: NetworkImage(user.profileImage)),
      title: Text(user.name),
      trailing: owner
          ? const Chip(label: Text('Host'), visualDensity: VisualDensity.compact)
          : (user.isSuperUser == true
              ? Icon(Icons.verified, color: Theme.of(context).colorScheme.primary)
              : null),
    );
  }
}
