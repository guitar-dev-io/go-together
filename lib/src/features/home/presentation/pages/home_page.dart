import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/layouts/nav_buttom_bar.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_event.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_state.dart';
import 'package:gotogether/src/features/notification/presentation/pages/notification_page.dart';
import 'package:gotogether/src/features/party/presentation/pages/pages.dart';
import 'package:gotogether/src/features/party/presentation/widgets/widgets.dart';
import 'package:gotogether/src/features/profile/presentation/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  bool _searching = false;
  final _searchCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<ActivityBloc>().add(const ActivityEvent.fetchActivities());
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  void _closeSearch() {
    _searchCtrl.clear();
    context.read<ActivityBloc>().add(const ActivityEvent.search(''));
    setState(() => _searching = false);
  }

  static const _titles = ['Go Together', 'ทริปของฉัน', 'บันทึกไว้', 'โปรไฟล์'];

  PreferredSizeWidget _appBar() {
    if (_searching && _index == 0) {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: _closeSearch,
        ),
        title: TextField(
          controller: _searchCtrl,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'ค้นหาทริป สถานที่...',
            filled: false,
          ),
          onChanged: (v) =>
              context.read<ActivityBloc>().add(ActivityEvent.search(v)),
        ),
      );
    }
    return AppBar(
      title: Text(_titles[_index]),
      actions: [
        if (_index == 0)
          IconButton(
            tooltip: 'ค้นหา',
            onPressed: () => setState(() => _searching = true),
            icon: const Icon(Icons.search),
          ),
        IconButton(
          tooltip: 'การแจ้งเตือน',
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const NotificationPage()),
          ),
          icon: const Badge(smallSize: 8, child: Icon(Icons.notifications_outlined)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: BlocBuilder<ActivityBloc, ActivityState>(
        builder: (context, state) {
          final mine = state.joined;
          final saved = state.saved;
          return IndexedStack(
            index: _index,
            children: [
              const ListviewExplore(),
              ActivityList(
                items: mine,
                emptyTitle: 'ยังไม่มีทริปที่เข้าร่วม',
                emptySubtitle: 'เลือกทริปที่สนใจแล้วกด "เข้าร่วมทริป"',
              ),
              ActivityList(
                items: saved,
                emptyTitle: 'ยังไม่มีทริปที่บันทึกไว้',
                emptySubtitle: 'กดไอคอนบุ๊กมาร์กที่การ์ดเพื่อเก็บไว้ดูทีหลัง',
              ),
              const ProfileView(),
            ],
          );
        },
      ),
      floatingActionButton: _index <= 1
          ? FloatingActionButton.extended(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const CreatePartyPage()),
              ),
              icon: const Icon(Icons.add),
              label: const Text('สร้างทริป'),
            )
          : null,
      bottomNavigationBar: NavButtomBar(
        selectedIndex: _index,
        onSelected: (i) => setState(() {
          _index = i;
          if (i != 0 && _searching) _closeSearch();
        }),
      ),
    );
  }
}
