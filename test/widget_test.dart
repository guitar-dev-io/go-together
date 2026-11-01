import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gotogether/root.dart';

void main() {
  testWidgets('Explore feed shows activities and can open create page',
      (tester) async {
    // เครือข่ายถูกบล็อกในเทสต์ จึงข้ามข้อผิดพลาดโหลดรูปเท่านั้น
    final original = FlutterError.onError;
    FlutterError.onError = (details) {
      if (details.exception is NetworkImageLoadException) return;
      original?.call(details);
    };
    addTearDown(() => FlutterError.onError = original);

    await tester.pumpWidget(const RootApp());
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('Go Together'), findsOneWidget);
    expect(find.text('สร้างทริป'), findsOneWidget);

    await tester.tap(find.text('สร้างทริป'));
    await tester.pumpAndSettle();
    expect(find.text('โพสต์ทริป'), findsOneWidget);

    // validation fires on empty submit
    await tester.tap(find.text('โพสต์ทริป'));
    await tester.pump();
    expect(find.text('จำเป็นต้องกรอก'), findsWidgets);
  });
}
