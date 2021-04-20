// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "Logstexts": {
    "Month_text": "شهري",
    "year_text": "سنوي",
    "Daily_text": "يومي",
    "All_text": "جميع",
    "Logs_text": "السجل"
  },
  "Debts_Texts": {
    "debtor_text": "مدين",
    "Creditor_text": "دائن",
    "debts_text": "ديونك"
  },
  "Profile": {
    "Logout_text": "تسجيل الخروج"
  },
  "settings": {
    "chnge_lang": "تغيير اللغة",
    "settings_text": "الإعدادات"
  },
  "NavBar": {
    "home_text": "الرئيسية",
    "warehouse_text": "المستودع",
    "logs_text": "السجل",
    "profile_text": "حسابي"
  },
  "Home": {
    "Welcome_text": "مرحبا , نحن في خدمتك !",
    "title_text": "دفترك",
    "reminder_text": "تذكير اليوم :"
  },
  "Warehouse": {
    "add_products_text": "إضافة منتجات",
    "view_products_text": "عرض المنتجات",
    "refill_text": "إعادة تعبئة",
    "delete_prodcuts_text": "إزالة منتجات"
  },
  "Login": {
    "username_text": "اسم المستخدم",
    "pass_text": "كلمة السر",
    "signin_text": "تسجيل الدخول",
    "cnfrm_pass": "أكد كلمة السر",
    "frgt_pass": "هل نسيت كلمة السر ؟"
  },
  "Tasks": {
    "tasks_text": "مهامي",
    "add_task": "إضافة مهمة :",
    "task_title": "العنوان",
    "task_date": "التاريخ",
    "task_priority": "الأولوية",
    "task_add": "إضافة",
    "task_update": "تعديل",
    "task_delete": "حذف",
    "task_prio_Low": "أقل أهمية",
    "task_prio_Med": "مهم",
    "task_prio_high": "مهم جدا",
    "back_button": "رجوع",
    "enter_title": "يجب اضافة عنوان للمهمة ! ",
    "enter_prio_validation": " يجب تحديد درجة أولوية !"
  }
};
static const Map<String,dynamic> en = {
  "Logstexts": {
    "Month_text": "Monthly",
    "year_text": "Yearly",
    "Daily_text": "Daily",
    "All_text": "All",
    "Logs_text": "Check Your Logs"
  },
  "Debts_Texts": {
    "debtor_text": "Debtor",
    "Creditor_text": "Creditor",
    "debts_text": "Check Your Debts"
  },
  "Profile": {
    "Logout_text": "Log Out"
  },
  "settings": {
    "chnge_lang": "Change Language",
    "settings_text": "Settings"
  },
  "NavBar": {
    "home_text": "Home",
    "warehouse_text": "Warehouse",
    "logs_text": "Logs",
    "profile_text": "Profle"
  },
  "Home": {
    "Welcome_text": "Welcome, At Your Service !",
    "title_text": "Daftarak",
    "reminder_text": "Today's Reminder :"
  },
  "Warehouse": {
    "add_products_text": "Add Products",
    "view_products_text": "View Products",
    "refill_text": "Refill",
    "delete_prodcuts_text": "Delete Products"
  },
  "Login": {
    "username_text": "Username",
    "pass_text": "Password",
    "signin_text": "Sign in",
    "cnfrm_pass": "Confirm Your Password",
    "frgt_pass": "Forgot Your Password ?"
  },
  "Tasks": {
    "tasks_text": "My Tasks",
    "add_task": "Add a Task :",
    "task_title": "Title",
    "task_date": "Date",
    "task_priority": "Priority",
    "task_add": "Add",
    "task_update": "Update",
    "task_delete": "Delete",
    "task_prio_Low": "Low",
    "task_prio_Med": "Meduim",
    "task_prio_high": "High",
    "back_button": "Back",
    "enter_title": "Please Enter a task title !",
    "enter_prio_validation": "Please Enter a Priority Level !"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
