// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Vounteers`
  String get Vounteers {
    return Intl.message(
      'Vounteers',
      name: 'Vounteers',
      desc: '',
      args: [],
    );
  }

  /// `Organization`
  String get Organization {
    return Intl.message(
      'Organization',
      name: 'Organization',
      desc: '',
      args: [],
    );
  }

  /// `Failed to log in`
  String get Failedtologin {
    return Intl.message(
      'Failed to log in',
      name: 'Failedtologin',
      desc: '',
      args: [],
    );
  }

  /// `ok`
  String get ok {
    return Intl.message(
      'ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Your Email`
  String get YourEmail {
    return Intl.message(
      'Your Email',
      name: 'YourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message(
      'Login',
      name: 'Login',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get ForgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Logged in successfully`
  String get Loggedinsuccessfully {
    return Intl.message(
      'Logged in successfully',
      name: 'Loggedinsuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `or sign in using`
  String get orsigninusing {
    return Intl.message(
      'or sign in using',
      name: 'orsigninusing',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have account |`
  String get Donthaveaccount {
    return Intl.message(
      'Don’t have account |',
      name: 'Donthaveaccount',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get Register {
    return Intl.message(
      'Register',
      name: 'Register',
      desc: '',
      args: [],
    );
  }

  /// `Searsh`
  String get Searsh {
    return Intl.message(
      'Searsh',
      name: 'Searsh',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get ChangePassword {
    return Intl.message(
      'Change Password',
      name: 'ChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `old password`
  String get oldpassword {
    return Intl.message(
      'old password',
      name: 'oldpassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your old password`
  String get Pleaseenteryouroldpassword {
    return Intl.message(
      'Please enter your old password',
      name: 'Pleaseenteryouroldpassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get NewPassword {
    return Intl.message(
      'New Password',
      name: 'NewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your new password`
  String get PleaseenteryourNewpassword {
    return Intl.message(
      'Please enter your new password',
      name: 'PleaseenteryourNewpassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters long, include a number and a letter`
  String get Passwordmustbe {
    return Intl.message(
      'Password must be at least 8 characters long, include a number and a letter',
      name: 'Passwordmustbe',
      desc: '',
      args: [],
    );
  }

  /// `Confirm  Password`
  String get ConfirmPassword {
    return Intl.message(
      'Confirm  Password',
      name: 'ConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your new password`
  String get Pleaseconfirmyournewpassword {
    return Intl.message(
      'Please confirm your new password',
      name: 'Pleaseconfirmyournewpassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get Passwordsdonotmatch {
    return Intl.message(
      'Passwords do not match',
      name: 'Passwordsdonotmatch',
      desc: '',
      args: [],
    );
  }

  /// `LogOut`
  String get LogOut {
    return Intl.message(
      'LogOut',
      name: 'LogOut',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get Areyousureyouwanttologout {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'Areyousureyouwanttologout',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile information`
  String get Editprofileinformation {
    return Intl.message(
      'Edit profile information',
      name: 'Editprofileinformation',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Help & Support`
  String get HelpSupport {
    return Intl.message(
      'Help & Support',
      name: 'HelpSupport',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
