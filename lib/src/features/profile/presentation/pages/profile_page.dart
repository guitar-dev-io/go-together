import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_state.dart';

/// เนื้อหาโปรไฟล์ (ใช้เป็นแท็บใน Home)
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final scheme = t.colorScheme;
    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Column(
              children: [
                const CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage('https://picsum.photos/id/64/200'),
                ),
                const SizedBox(height: 12),
                Text('Beam', style: t.textTheme.headlineSmall),
                Text('รักการเที่ยวและหาเพื่อนใหม่',
                    style: t.textTheme.bodyMedium
                        ?.copyWith(color: scheme.onSurfaceVariant)),
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(minimumSize: const Size(160, 44)),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const EditProfilePage()),
                  ),
                  icon: const Icon(Icons.edit_outlined),
                  label: const Text('แก้ไขโปรไฟล์'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                _Stat('ทริปที่เข้าร่วม', state.joined.length),
                _Stat('บันทึกไว้', state.saved.length),
                _Stat('ทริปทั้งหมด', state.activities.length),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              child: Column(
                children: const [
                  ListTile(leading: Icon(Icons.notifications_outlined), title: Text('การแจ้งเตือน'), trailing: Icon(Icons.chevron_right)),
                  Divider(height: 1),
                  ListTile(leading: Icon(Icons.language), title: Text('ภาษา'), trailing: Text('ไทย')),
                  Divider(height: 1),
                  ListTile(leading: Icon(Icons.shield_outlined), title: Text('ความเป็นส่วนตัว'), trailing: Icon(Icons.chevron_right)),
                  Divider(height: 1),
                  ListTile(leading: Icon(Icons.help_outline), title: Text('ช่วยเหลือ'), trailing: Icon(Icons.chevron_right)),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat(this.label, this.value);
  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Expanded(
      child: Column(
        children: [
          Text('$value',
              style: t.textTheme.headlineSmall
                  ?.copyWith(color: t.colorScheme.primary, fontWeight: FontWeight.w700)),
          Text(label, style: t.textTheme.bodySmall),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('โปรไฟล์')),
      body: const ProfileView(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _form = GlobalKey<FormState>();
  final _name = TextEditingController(text: 'Beam');
  final _bio = TextEditingController(text: 'รักการเที่ยวและหาเพื่อนใหม่');

  @override
  void dispose() {
    _name.dispose();
    _bio.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('แก้ไขโปรไฟล์')),
      body: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _name,
              decoration: const InputDecoration(labelText: 'ชื่อ'),
              validator: (v) => (v == null || v.trim().isEmpty) ? 'กรุณากรอกชื่อ' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _bio,
              maxLines: 3,
              decoration: const InputDecoration(labelText: 'แนะนำตัว'),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () {
                if (_form.currentState!.validate()) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('บันทึกโปรไฟล์แล้ว')),
                  );
                }
              },
              child: const Text('บันทึก'),
            ),
          ],
        ),
      ),
    );
  }
}
