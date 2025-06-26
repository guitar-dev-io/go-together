//  dependency_injection;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// late SharedPreferences sharedPref;

class DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // sharedPref = await SharedPreferences.getInstance();

    await ScreenUtil.ensureScreenSize();

    final supabaseUrl = 'https://uzjmbixnkmvsyynfkcab.supabase.co';
    final supabaseKey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV6am1iaXhua212c3l5bmZrY2FiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQwOTcwODEsImV4cCI6MjA1OTY3MzA4MX0.z49rWxEi6HGFVlZ3PMDNcbYmHkRj-O-MjclME43OoqM';

    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseKey,
      debug: kDebugMode,
    );

    SupabaseClient client = SupabaseClient(supabaseUrl, supabaseKey);

    final supabase = Supabase.instance.client;
    print(supabase);
  }
}
