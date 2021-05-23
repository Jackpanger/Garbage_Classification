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
// ignore_for_file: avoid_redundant_argument_values

class LanguageChange {
  LanguageChange();
  
  static LanguageChange current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<LanguageChange> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      LanguageChange.current = LanguageChange();
      
      return LanguageChange.current;
    });
  } 

  static LanguageChange of(BuildContext context) {
    return Localizations.of<LanguageChange>(context, LanguageChange);
  }

  /// `language`
  String get language {
    return Intl.message(
      'language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `settings`
  String get settings {
    return Intl.message(
      'settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `user`
  String get user {
    return Intl.message(
      'user',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `subscribe`
  String get subscribe {
    return Intl.message(
      'subscribe',
      name: 'subscribe',
      desc: '',
      args: [],
    );
  }

  /// `favorites`
  String get favorites {
    return Intl.message(
      'favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `recent`
  String get recent {
    return Intl.message(
      'recent',
      name: 'recent',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get day {
    return Intl.message(
      'Day',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `Night`
  String get night {
    return Intl.message(
      'Night',
      name: 'night',
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

  /// `My work`
  String get my_work {
    return Intl.message(
      'My work',
      name: 'my_work',
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

  /// `Text Size`
  String get text_size {
    return Intl.message(
      'Text Size',
      name: 'text_size',
      desc: '',
      args: [],
    );
  }

  /// `Theme Colors`
  String get theme_colors {
    return Intl.message(
      'Theme Colors',
      name: 'theme_colors',
      desc: '',
      args: [],
    );
  }

  /// `Other Tools`
  String get other_tools {
    return Intl.message(
      'Other Tools',
      name: 'other_tools',
      desc: '',
      args: [],
    );
  }

  /// `Help & Feedback`
  String get help {
    return Intl.message(
      'Help & Feedback',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get services {
    return Intl.message(
      'Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Switch Account`
  String get switch_account {
    return Intl.message(
      'Switch Account',
      name: 'switch_account',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get log_out {
    return Intl.message(
      'Log Out',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Large`
  String get large {
    return Intl.message(
      'Large',
      name: 'large',
      desc: '',
      args: [],
    );
  }

  /// `Middle`
  String get middle {
    return Intl.message(
      'Middle',
      name: 'middle',
      desc: '',
      args: [],
    );
  }

  /// `Small`
  String get small {
    return Intl.message(
      'Small',
      name: 'small',
      desc: '',
      args: [],
    );
  }

  /// `White`
  String get white {
    return Intl.message(
      'White',
      name: 'white',
      desc: '',
      args: [],
    );
  }

  /// `Black`
  String get black {
    return Intl.message(
      'Black',
      name: 'black',
      desc: '',
      args: [],
    );
  }

  /// `Pink`
  String get pink {
    return Intl.message(
      'Pink',
      name: 'pink',
      desc: '',
      args: [],
    );
  }

  /// `Yellow`
  String get yellow {
    return Intl.message(
      'Yellow',
      name: 'yellow',
      desc: '',
      args: [],
    );
  }

  /// `Blue`
  String get blue {
    return Intl.message(
      'Blue',
      name: 'blue',
      desc: '',
      args: [],
    );
  }

  /// `Red`
  String get red {
    return Intl.message(
      'Red',
      name: 'red',
      desc: '',
      args: [],
    );
  }

  /// `Green`
  String get green {
    return Intl.message(
      'Green',
      name: 'green',
      desc: '',
      args: [],
    );
  }

  /// `Enabled`
  String get enabled {
    return Intl.message(
      'Enabled',
      name: 'enabled',
      desc: '',
      args: [],
    );
  }

  /// `Disabled`
  String get disabled {
    return Intl.message(
      'Disabled',
      name: 'disabled',
      desc: '',
      args: [],
    );
  }

  /// `XXX News`
  String get xxx_news {
    return Intl.message(
      'XXX News',
      name: 'xxx_news',
      desc: '',
      args: [],
    );
  }

  /// `XXX Mail`
  String get xxx_mail {
    return Intl.message(
      'XXX Mail',
      name: 'xxx_mail',
      desc: '',
      args: [],
    );
  }

  /// `Suzhou language input function`
  String get suzhou {
    return Intl.message(
      'Suzhou language input function',
      name: 'suzhou',
      desc: '',
      args: [],
    );
  }

  /// `Cantonese language input function`
  String get yue {
    return Intl.message(
      'Cantonese language input function',
      name: 'yue',
      desc: '',
      args: [],
    );
  }

  /// `Hot Questions`
  String get hot_questions {
    return Intl.message(
      'Hot Questions',
      name: 'hot_questions',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message(
      'Contact Us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `How can ability eat not fat?`
  String get question_one {
    return Intl.message(
      'How can ability eat not fat?',
      name: 'question_one',
      desc: '',
      args: [],
    );
  }

  /// `Where can I pick up my girlfriend?`
  String get question_two {
    return Intl.message(
      'Where can I pick up my girlfriend?',
      name: 'question_two',
      desc: '',
      args: [],
    );
  }

  /// `Why isn't my profile picture cool enough?`
  String get question_three {
    return Intl.message(
      'Why isn\'t my profile picture cool enough?',
      name: 'question_three',
      desc: '',
      args: [],
    );
  }

  /// `We Chat`
  String get we_chat {
    return Intl.message(
      'We Chat',
      name: 'we_chat',
      desc: '',
      args: [],
    );
  }

  /// `QQ`
  String get qq {
    return Intl.message(
      'QQ',
      name: 'qq',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your contact information`
  String get please_contact {
    return Intl.message(
      'Please enter your contact information',
      name: 'please_contact',
      desc: '',
      args: [],
    );
  }

  /// `Please enter feedback`
  String get please_feedback {
    return Intl.message(
      'Please enter feedback',
      name: 'please_feedback',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get e_mail {
    return Intl.message(
      'E-mail',
      name: 'e_mail',
      desc: '',
      args: [],
    );
  }

  /// `Submit Information`
  String get submit_information {
    return Intl.message(
      'Submit Information',
      name: 'submit_information',
      desc: '',
      args: [],
    );
  }

  /// `We Chat Customer Service`
  String get we_chat_customer_service {
    return Intl.message(
      'We Chat Customer Service',
      name: 'we_chat_customer_service',
      desc: '',
      args: [],
    );
  }

  /// `QQ Customer Service`
  String get qq_customer_service {
    return Intl.message(
      'QQ Customer Service',
      name: 'qq_customer_service',
      desc: '',
      args: [],
    );
  }

  /// `E-mail Address`
  String get e_mail_address {
    return Intl.message(
      'E-mail Address',
      name: 'e_mail_address',
      desc: '',
      args: [],
    );
  }

  /// `We Chat Account: p42924580`
  String get we_chat_account {
    return Intl.message(
      'We Chat Account: p42924580',
      name: 'we_chat_account',
      desc: '',
      args: [],
    );
  }

  /// `QQ Account: 491683019`
  String get qq_account {
    return Intl.message(
      'QQ Account: 491683019',
      name: 'qq_account',
      desc: '',
      args: [],
    );
  }

  /// `xxxxxxxx@gmail.com`
  String get mail_address {
    return Intl.message(
      'xxxxxxxx@gmail.com',
      name: 'mail_address',
      desc: '',
      args: [],
    );
  }

  /// `Trash Assistant`
  String get trash_assistant {
    return Intl.message(
      'Trash Assistant',
      name: 'trash_assistant',
      desc: '',
      args: [],
    );
  }

  /// `Version 1.0.1`
  String get version {
    return Intl.message(
      'Version 1.0.1',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Check for Update`
  String get check_for_update {
    return Intl.message(
      'Check for Update',
      name: 'check_for_update',
      desc: '',
      args: [],
    );
  }

  /// `Development Team`
  String get development_team {
    return Intl.message(
      'Development Team',
      name: 'development_team',
      desc: '',
      args: [],
    );
  }

  /// `Software License Agreement`
  String get software_license_agreement {
    return Intl.message(
      'Software License Agreement',
      name: 'software_license_agreement',
      desc: '',
      args: [],
    );
  }

  /// `Hint!`
  String get hint {
    return Intl.message(
      'Hint!',
      name: 'hint',
      desc: '',
      args: [],
    );
  }

  /// `No Updates`
  String get no_updates {
    return Intl.message(
      'No Updates',
      name: 'no_updates',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Scrum Master`
  String get scrum_master {
    return Intl.message(
      'Scrum Master',
      name: 'scrum_master',
      desc: '',
      args: [],
    );
  }

  /// `Fu Jiyu`
  String get master {
    return Intl.message(
      'Fu Jiyu',
      name: 'master',
      desc: '',
      args: [],
    );
  }

  /// `Product Owner`
  String get product_owner {
    return Intl.message(
      'Product Owner',
      name: 'product_owner',
      desc: '',
      args: [],
    );
  }

  /// `Zhang Nuoya`
  String get po {
    return Intl.message(
      'Zhang Nuoya',
      name: 'po',
      desc: '',
      args: [],
    );
  }

  /// `Development Members`
  String get development_members {
    return Intl.message(
      'Development Members',
      name: 'development_members',
      desc: '',
      args: [],
    );
  }

  /// `Duan Jingyu`
  String get dv_one {
    return Intl.message(
      'Duan Jingyu',
      name: 'dv_one',
      desc: '',
      args: [],
    );
  }

  /// `Liu Jinming`
  String get dv_two {
    return Intl.message(
      'Liu Jinming',
      name: 'dv_two',
      desc: '',
      args: [],
    );
  }

  /// `Pang Jinhao`
  String get dv_three {
    return Intl.message(
      'Pang Jinhao',
      name: 'dv_three',
      desc: '',
      args: [],
    );
  }

  /// `Tang Peixuan`
  String get dv_four {
    return Intl.message(
      'Tang Peixuan',
      name: 'dv_four',
      desc: '',
      args: [],
    );
  }

  /// `Zhu Jingjun`
  String get dv_five {
    return Intl.message(
      'Zhu Jingjun',
      name: 'dv_five',
      desc: '',
      args: [],
    );
  }

  /// `Zou Junjia`
  String get dv_six {
    return Intl.message(
      'Zou Junjia',
      name: 'dv_six',
      desc: '',
      args: [],
    );
  }

  /// `I. Software Use Agreement`
  String get sla_one {
    return Intl.message(
      'I. Software Use Agreement',
      name: 'sla_one',
      desc: '',
      args: [],
    );
  }

  /// `       This agreement is a legal agreement between the user (natural person, legal person or social organization) and XXXX Company regarding the "XXXXX" software product (hereinafter referred to as "the software product").\nBy installing, copying or otherwise using the software product, you agree to be bound by the terms and conditions of this Agreement.\nIf users do not agree to the terms of the agreement, please do not use the software product.`
  String get sla_two {
    return Intl.message(
      '       This agreement is a legal agreement between the user (natural person, legal person or social organization) and XXXX Company regarding the "XXXXX" software product (hereinafter referred to as "the software product").\nBy installing, copying or otherwise using the software product, you agree to be bound by the terms and conditions of this Agreement.\nIf users do not agree to the terms of the agreement, please do not use the software product.',
      name: 'sla_two',
      desc: '',
      args: [],
    );
  }

  /// `II. Software Product Protection Clause`
  String get sla_three {
    return Intl.message(
      'II. Software Product Protection Clause',
      name: 'sla_three',
      desc: '',
      args: [],
    );
  }

  /// `1) The copyright and other intellectual property rights and other relevant rights or interests of the software (including but not limited to copyright, patent right, trademark right, trade secret, etc.) are owned by XXXX Company.\nThe software product is protected by the copyright law of the People's Republic of China and international copyright treaties and other intellectual property laws and treaties.\nUsers only obtain the non-exclusive right to use the software products.`
  String get sla_four {
    return Intl.message(
      '1) The copyright and other intellectual property rights and other relevant rights or interests of the software (including but not limited to copyright, patent right, trademark right, trade secret, etc.) are owned by XXXX Company.\nThe software product is protected by the copyright law of the People\'s Republic of China and international copyright treaties and other intellectual property laws and treaties.\nUsers only obtain the non-exclusive right to use the software products.',
      name: 'sla_four',
      desc: '',
      args: [],
    );
  }

  /// `2) Users shall not: delete all copyright information on the Software and other copies;\nReverse engineering of the software, such as disassembly, decompiling, etc.`
  String get sla_five {
    return Intl.message(
      '2) Users shall not: delete all copyright information on the Software and other copies;\nReverse engineering of the software, such as disassembly, decompiling, etc.',
      name: 'sla_five',
      desc: '',
      args: [],
    );
  }

  /// `3) The Software is provided as is. XXXXX Company does not guarantee that the Software can or cannot fully meet the needs of users. The introductory contents in the User's Manual, Help Document, Operation Manual and other software documents are for users' reference only and shall not be interpreted as any commitment made to users.\nXXXXX Company reserves the right to upgrade the software version, modify or automatically update the function, content, structure, interface, operation mode, etc.`
  String get sla_six {
    return Intl.message(
      '3) The Software is provided as is. XXXXX Company does not guarantee that the Software can or cannot fully meet the needs of users. The introductory contents in the User\'s Manual, Help Document, Operation Manual and other software documents are for users\' reference only and shall not be interpreted as any commitment made to users.\nXXXXX Company reserves the right to upgrade the software version, modify or automatically update the function, content, structure, interface, operation mode, etc.',
      name: 'sla_six',
      desc: '',
      args: [],
    );
  }

  /// `4) In order to better serve users or provide personalized information to users, the software product may collect and use information on the cloud platform. However, XXX Company undertakes not to provide such information to unauthorized third parties to protect users' privacy.`
  String get sla_seven {
    return Intl.message(
      '4) In order to better serve users or provide personalized information to users, the software product may collect and use information on the cloud platform. However, XXX Company undertakes not to provide such information to unauthorized third parties to protect users\' privacy.',
      name: 'sla_seven',
      desc: '',
      args: [],
    );
  }

  /// `5) The use of the software product shall be at the user's own risk, and to the maximum extent permitted by applicable laws, XXXX Company shall not be liable for any special, accidental, indirect or indirect losses caused by the use or inability to use the software product under any circumstances.\nEven if the possibility of such damage has been advised in advance.`
  String get sla_eight {
    return Intl.message(
      '5) The use of the software product shall be at the user\'s own risk, and to the maximum extent permitted by applicable laws, XXXX Company shall not be liable for any special, accidental, indirect or indirect losses caused by the use or inability to use the software product under any circumstances.\nEven if the possibility of such damage has been advised in advance.',
      name: 'sla_eight',
      desc: '',
      args: [],
    );
  }

  /// `6) Information content defined by XXXX Company includes: text, data and personal information;\nThe commercial information provided by the Company to its users, all such content is protected by copyright, trademark, and other intellectual property and ownership laws.\nTherefore, users can only use such content under the authorization of the company, and cannot copy, modify, compile such content, or create derivative products related to the content without authorization.`
  String get sla_nine {
    return Intl.message(
      '6) Information content defined by XXXX Company includes: text, data and personal information;\nThe commercial information provided by the Company to its users, all such content is protected by copyright, trademark, and other intellectual property and ownership laws.\nTherefore, users can only use such content under the authorization of the company, and cannot copy, modify, compile such content, or create derivative products related to the content without authorization.',
      name: 'sla_nine',
      desc: '',
      args: [],
    );
  }

  /// `7) If you fail to comply with any provision of this Agreement, XXXX Company has the right to terminate this Agreement immediately and reserves the right to pursue the responsibility through legal means.`
  String get sla_ten {
    return Intl.message(
      '7) If you fail to comply with any provision of this Agreement, XXXX Company has the right to terminate this Agreement immediately and reserves the right to pursue the responsibility through legal means.',
      name: 'sla_ten',
      desc: '',
      args: [],
    );
  }

  /// `III. XXXX Company has the right of final interpretation and modification of the above terms and conditions.\nIf users have any objection to the interpretation or modification of XXXX Company, they shall immediately stop using the software product.\nUser's continued use of the software product will be deemed to be an acceptance of XXXXX's interpretation or modification.`
  String get sla_eleven {
    return Intl.message(
      'III. XXXX Company has the right of final interpretation and modification of the above terms and conditions.\nIf users have any objection to the interpretation or modification of XXXX Company, they shall immediately stop using the software product.\nUser\'s continued use of the software product will be deemed to be an acceptance of XXXXX\'s interpretation or modification.',
      name: 'sla_eleven',
      desc: '',
      args: [],
    );
  }

  /// `IV. Both parties agree that any dispute arising out of this Agreement shall be subject to the jurisdiction of the competent court in the place where XXXX Company is located in accordance with the laws of the People's Republic of China.`
  String get sla_twelve {
    return Intl.message(
      'IV. Both parties agree that any dispute arising out of this Agreement shall be subject to the jurisdiction of the competent court in the place where XXXX Company is located in accordance with the laws of the People\'s Republic of China.',
      name: 'sla_twelve',
      desc: '',
      args: [],
    );
  }

  /// `XXX Services`
  String get xxx_services {
    return Intl.message(
      'XXX Services',
      name: 'xxx_services',
      desc: '',
      args: [],
    );
  }

  /// `Explore recently released XXX services`
  String get err {
    return Intl.message(
      'Explore recently released XXX services',
      name: 'err',
      desc: '',
      args: [],
    );
  }

  /// `————  No services available  ————`
  String get no_services_available {
    return Intl.message(
      '————  No services available  ————',
      name: 'no_services_available',
      desc: '',
      args: [],
    );
  }

  /// `Solitary square root of three`
  String get account_one {
    return Intl.message(
      'Solitary square root of three',
      name: 'account_one',
      desc: '',
      args: [],
    );
  }

  /// `Sweet strawberry flavor`
  String get account_two {
    return Intl.message(
      'Sweet strawberry flavor',
      name: 'account_two',
      desc: '',
      args: [],
    );
  }

  /// `Keyboard warrior`
  String get account_three {
    return Intl.message(
      'Keyboard warrior',
      name: 'account_three',
      desc: '',
      args: [],
    );
  }

  /// `Add or Register an Account`
  String get add_account {
    return Intl.message(
      'Add or Register an Account',
      name: 'add_account',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get skip {
    return Intl.message(
      'SKIP',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `ImagePicker`
  String get image_picker {
    return Intl.message(
      'ImagePicker',
      name: 'image_picker',
      desc: '',
      args: [],
    );
  }

  /// `Take Photo`
  String get take_photo {
    return Intl.message(
      'Take Photo',
      name: 'take_photo',
      desc: '',
      args: [],
    );
  }

  /// `Choose Picture`
  String get choose_picture {
    return Intl.message(
      'Choose Picture',
      name: 'choose_picture',
      desc: '',
      args: [],
    );
  }

  /// `please choose picture or take photo`
  String get please_c_t {
    return Intl.message(
      'please choose picture or take photo',
      name: 'please_c_t',
      desc: '',
      args: [],
    );
  }

  /// `No image selected`
  String get no_image_selected {
    return Intl.message(
      'No image selected',
      name: 'no_image_selected',
      desc: '',
      args: [],
    );
  }

  /// `Serve`
  String get serve {
    return Intl.message(
      'Serve',
      name: 'serve',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget password`
  String get forget_password {
    return Intl.message(
      'Forget password',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Length of password can not be less than 6`
  String get length_of_password_less_6 {
    return Intl.message(
      'Length of password can not be less than 6',
      name: 'length_of_password_less_6',
      desc: '',
      args: [],
    );
  }

  /// `User registration-First`
  String get user_registration_one {
    return Intl.message(
      'User registration-First',
      name: 'user_registration_one',
      desc: '',
      args: [],
    );
  }

  /// `Please type in your number`
  String get please_type_your_number {
    return Intl.message(
      'Please type in your number',
      name: 'please_type_your_number',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Format of phone number is wrong`
  String get format_of_number_wrong {
    return Intl.message(
      'Format of phone number is wrong',
      name: 'format_of_number_wrong',
      desc: '',
      args: [],
    );
  }

  /// `User registration-Second`
  String get user_registration_two {
    return Intl.message(
      'User registration-Second',
      name: 'user_registration_two',
      desc: '',
      args: [],
    );
  }

  /// `User registration-Third`
  String get user_registration_three {
    return Intl.message(
      'User registration-Third',
      name: 'user_registration_three',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Code has sent to your number`
  String get code_has_sent_number {
    return Intl.message(
      'Code has sent to your number',
      name: 'code_has_sent_number',
      desc: '',
      args: [],
    );
  }

  /// `Please type in the code`
  String get please_type_in_code {
    return Intl.message(
      'Please type in the code',
      name: 'please_type_in_code',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Send after`
  String get send_after {
    return Intl.message(
      'Send after',
      name: 'send_after',
      desc: '',
      args: [],
    );
  }

  /// `Not Consistent`
  String get not_consistent {
    return Intl.message(
      'Not Consistent',
      name: 'not_consistent',
      desc: '',
      args: [],
    );
  }

  /// `Please input your password`
  String get please_input_password {
    return Intl.message(
      'Please input your password',
      name: 'please_input_password',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password`
  String get please_confirm_password {
    return Intl.message(
      'Please confirm your password',
      name: 'please_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registration {
    return Intl.message(
      'Registration',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `male`
  String get male {
    return Intl.message(
      'male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `female`
  String get female {
    return Intl.message(
      'female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `tel`
  String get tel {
    return Intl.message(
      'tel',
      name: 'tel',
      desc: '',
      args: [],
    );
  }

  /// `User information`
  String get user_information {
    return Intl.message(
      'User information',
      name: 'user_information',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birthday {
    return Intl.message(
      'Birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `Please change phone number`
  String get please_change_phone {
    return Intl.message(
      'Please change phone number',
      name: 'please_change_phone',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please change user name`
  String get please_change_name {
    return Intl.message(
      'Please change user name',
      name: 'please_change_name',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Me`
  String get me {
    return Intl.message(
      'Me',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `Loading......`
  String get loading {
    return Intl.message(
      'Loading......',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Input context`
  String get input_context {
    return Intl.message(
      'Input context',
      name: 'input_context',
      desc: '',
      args: [],
    );
  }

  /// `Button`
  String get button_s {
    return Intl.message(
      'Button',
      name: 'button_s',
      desc: '',
      args: [],
    );
  }

  /// `Residual`
  String get residual {
    return Intl.message(
      'Residual',
      name: 'residual',
      desc: '',
      args: [],
    );
  }

  /// `Wet`
  String get wet {
    return Intl.message(
      'Wet',
      name: 'wet',
      desc: '',
      args: [],
    );
  }

  /// `Recyclable`
  String get recyclable {
    return Intl.message(
      'Recyclable',
      name: 'recyclable',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Detailed information`
  String get detailed_information {
    return Intl.message(
      'Detailed information',
      name: 'detailed_information',
      desc: '',
      args: [],
    );
  }

  /// `Trash details`
  String get trash_details {
    return Intl.message(
      'Trash details',
      name: 'trash_details',
      desc: '',
      args: [],
    );
  }

  /// `Trash name`
  String get trash_name {
    return Intl.message(
      'Trash name',
      name: 'trash_name',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Type annotation`
  String get type_annotation {
    return Intl.message(
      'Type annotation',
      name: 'type_annotation',
      desc: '',
      args: [],
    );
  }

  /// `Similar trash`
  String get similar_trash {
    return Intl.message(
      'Similar trash',
      name: 'similar_trash',
      desc: '',
      args: [],
    );
  }

  /// `Handling method`
  String get handling_method {
    return Intl.message(
      'Handling method',
      name: 'handling_method',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<LanguageChange> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LanguageChange> load(Locale locale) => LanguageChange.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}