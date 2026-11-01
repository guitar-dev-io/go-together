import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';
import 'package:gotogether/src/core/models/activity/user_model.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_event.dart';

class CreatePartyPage extends StatefulWidget {
  const CreatePartyPage({super.key});

  @override
  State<CreatePartyPage> createState() => _CreatePartyPageState();
}

class _CreatePartyPageState extends State<CreatePartyPage> {
  static const _allTags = ['กิจกรรม', 'สนุก', 'เพื่อนใหม่', 'กลางแจ้ง', 'อาหาร', 'ดนตรี'];

  final _form = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _desc = TextEditingController();
  final _location = TextEditingController();
  final _max = TextEditingController(text: '10');
  final _tags = <String>{'กิจกรรม'};
  DateTime? _date;
  TimeOfDay? _start;
  TimeOfDay? _end;
  bool _submitted = false;

  @override
  void dispose() {
    _title.dispose();
    _desc.dispose();
    _location.dispose();
    _max.dispose();
    super.dispose();
  }

  String _fmtDate(DateTime d) =>
      '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final d = await showDatePicker(
      context: context,
      initialDate: _date ?? now,
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
    );
    if (d != null) setState(() => _date = d);
  }

  Future<void> _pickTime(bool start) async {
    final t = await showTimePicker(
      context: context,
      initialTime: (start ? _start : _end) ?? const TimeOfDay(hour: 10, minute: 0),
    );
    if (t != null) setState(() => start ? _start = t : _end = t);
  }

  void _submit() {
    setState(() => _submitted = true);
    if (!_form.currentState!.validate() ||
        _date == null ||
        _start == null ||
        _end == null) {
      return;
    }
    final max = int.parse(_max.text);
    final activity = Activity(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      title: _title.text.trim(),
      description: _desc.text.trim(),
      tags: _tags.toList(),
      location: _location.text.trim(),
      date: _fmtDate(_date!),
      time: '${_start!.format(context)} - ${_end!.format(context)}',
      owner: const User(name: 'คุณ', profileImage: 'https://picsum.photos/id/64/100'),
      joinedUsers: const [],
      maxParticipants: max,
      currentParticipants: 1,
      photos: ['https://picsum.photos/seed/${_title.text.hashCode.abs()}/600/400'],
    );
    context.read<ActivityBloc>().add(ActivityEvent.create(activity));
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('สร้างทริปเรียบร้อยแล้ว 🎉')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    String? required(String? v) =>
        (v == null || v.trim().isEmpty) ? 'จำเป็นต้องกรอก' : null;

    return Scaffold(
      appBar: AppBar(title: const Text('สร้างทริป')),
      body: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _title,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(labelText: 'ชื่อทริป'),
              validator: required,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _desc,
              maxLines: 4,
              decoration: const InputDecoration(labelText: 'รายละเอียด'),
              validator: required,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _location,
              decoration: const InputDecoration(
                labelText: 'สถานที่',
                prefixIcon: Icon(Icons.place_outlined),
              ),
              validator: required,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _PickerField(
                    icon: Icons.calendar_today_outlined,
                    label: 'วันที่',
                    value: _date == null ? null : _fmtDate(_date!),
                    error: _submitted && _date == null,
                    onTap: _pickDate,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              spacing: 12,
              children: [
                Expanded(
                  child: _PickerField(
                    icon: Icons.schedule,
                    label: 'เริ่ม',
                    value: _start?.format(context),
                    error: _submitted && _start == null,
                    onTap: () => _pickTime(true),
                  ),
                ),
                Expanded(
                  child: _PickerField(
                    icon: Icons.schedule,
                    label: 'สิ้นสุด',
                    value: _end?.format(context),
                    error: _submitted && _end == null,
                    onTap: () => _pickTime(false),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _max,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'จำนวนคนสูงสุด',
                prefixIcon: Icon(Icons.group_outlined),
              ),
              validator: (v) {
                final n = int.tryParse(v ?? '');
                if (n == null || n < 2) return 'ต้องมีอย่างน้อย 2 คน';
                if (n > 100) return 'สูงสุด 100 คน';
                return null;
              },
            ),
            const SizedBox(height: 20),
            Text('แท็ก', style: t.textTheme.titleSmall),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                for (final tag in _allTags)
                  FilterChip(
                    label: Text(tag),
                    selected: _tags.contains(tag),
                    onSelected: (v) =>
                        setState(() => v ? _tags.add(tag) : _tags.remove(tag)),
                  ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: FilledButton(onPressed: _submit, child: const Text('โพสต์ทริป')),
        ),
      ),
    );
  }
}

class _PickerField extends StatelessWidget {
  const _PickerField({
    required this.icon,
    required this.label,
    required this.value,
    required this.onTap,
    this.error = false,
  });
  final IconData icon;
  final String label;
  final String? value;
  final VoidCallback onTap;
  final bool error;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          errorText: error ? 'กรุณาเลือก' : null,
        ),
        child: Text(
          value ?? 'เลือก',
          style: TextStyle(color: value == null ? scheme.outline : null),
        ),
      ),
    );
  }
}
