class AppConstants {
  // 🎯 معلومات التطبيق الأساسية
  static const String appName = 'Adlik Core';
  static const String packageName = 'com.Adlik.education';
  
  // 🏷️ معلومات الإصدار
  static const String appVersion = '1.0.0';
  static const int buildNumber = 1;

  // 🌐 URLs (يجب أن يتم تحديثها لاحقاً بروابط خدمات الذكاء الاصطناعي الخاصة بك)
  static const String baseUrl = 'https://your-api.com'; 
  
  // 🔑 رموز الدخول السرية (سيتم إضافة رموز الدخول API Keys هنا لاحقاً)
  // مثال: static const String aiServiceKey = 'YOUR_AI_KEY'; 

  // 📝 إعدادات المظهر
  static const int defaultFontSize = 16;
  static const double borderRadius = 8.0;

  // ⏳ إعدادات المزامنة والعمل بدون إنترنت
  static const Duration syncInterval = Duration(minutes: 30);
  static const int offlineDataLimitMB = 100;
}
