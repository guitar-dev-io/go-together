import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  static const _items = [
    (Icons.group_add, 'Tom เข้าร่วมทริปของคุณ', 'พายเรือ-ปิคนิค สวนลุมสุดชิล', '5 นาทีที่แล้ว'),
    (Icons.event_available, 'ทริปใกล้ถึงวันแล้ว', 'ดูหนัง + แบกหมอน พรุ่งนี้ 10:00', '1 ชั่วโมงที่แล้ว'),
    (Icons.chat_bubble_outline, 'Fah ส่งข้อความถึงคุณ', 'ไปด้วยกันนะ!', 'เมื่อวาน'),
  ];

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('การแจ้งเตือน')),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: _items.length,
        separatorBuilder: (_, __) => const Divider(height: 1, indent: 72),
        itemBuilder: (_, i) {
          final n = _items[i];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: scheme.primaryContainer,
              child: Icon(n.$1, color: scheme.onPrimaryContainer),
            ),
            title: Text(n.$2),
            subtitle: Text(n.$3),
            trailing: Text(n.$4, style: Theme.of(context).textTheme.bodySmall),
          );
        },
      ),
    );
  }
}
