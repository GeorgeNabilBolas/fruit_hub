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

  /// `FruitHub`
  String get appTitle {
    return Intl.message(
      'FruitHub',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullNameAlt {
    return Intl.message(
      'Full Name',
      name: 'fullNameAlt',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed Mostafa`
  String get exampleName {
    return Intl.message(
      'Ahmed Mostafa',
      name: 'exampleName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Mail@email.com`
  String get exampleEmail {
    return Intl.message(
      'Mail@email.com',
      name: 'exampleEmail',
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

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `+1 234 567 8911`
  String get examplePhone {
    return Intl.message(
      '+1 234 567 8911',
      name: 'examplePhone',
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

  /// `Create Account`
  String get signup {
    return Intl.message(
      'Create Account',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPasswordTitle {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyCode {
    return Intl.message(
      'Verify Code',
      name: 'verifyCode',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don’t worry, just enter your phone number.`
  String get dontWorry {
    return Intl.message(
      'Don’t worry, just enter your phone number.',
      name: 'dontWorry',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code sent to`
  String get enterCodeSentTo {
    return Intl.message(
      'Enter the code sent to',
      name: 'enterCodeSentTo',
      desc: '',
      args: [],
    );
  }

  /// `Create a new password to log in`
  String get createNewPassword {
    return Intl.message(
      'Create a new password to log in',
      name: 'createNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message(
      'Resend Code',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createAccount {
    return Intl.message(
      'Create New Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginApple',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? Login`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? Login',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get successPasswordChange {
    return Intl.message(
      'Password changed successfully',
      name: 'successPasswordChange',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to our terms and conditions`
  String get agreeTerms {
    return Intl.message(
      'By creating an account, you agree to our terms and conditions',
      name: 'agreeTerms',
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

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get onboardingOneTitlePartOne {
    return Intl.message(
      'Welcome to',
      name: 'onboardingOneTitlePartOne',
      desc: '',
      args: [],
    );
  }

  /// `Fruit`
  String get onboardingOneTitlePartTwo {
    return Intl.message(
      'Fruit',
      name: 'onboardingOneTitlePartTwo',
      desc: '',
      args: [],
    );
  }

  /// `HUB`
  String get onboardingOneTitlePartThree {
    return Intl.message(
      'HUB',
      name: 'onboardingOneTitlePartThree',
      desc: '',
      args: [],
    );
  }

  /// `Search & Shop`
  String get onboardingTwoTitle {
    return Intl.message(
      'Search & Shop',
      name: 'onboardingTwoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Discover an exceptional shopping experience with FruitHUB.`
  String get onboardingOneDescription {
    return Intl.message(
      'Discover an exceptional shopping experience with FruitHUB.',
      name: 'onboardingOneDescription',
      desc: '',
      args: [],
    );
  }

  /// `We provide the best hand-picked fruits.`
  String get onboardingTwoDescription {
    return Intl.message(
      'We provide the best hand-picked fruits.',
      name: 'onboardingTwoDescription',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get startNow {
    return Intl.message(
      'Start Now',
      name: 'startNow',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
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

  /// `Search for...`
  String get searchPlaceholder {
    return Intl.message(
      'Search for...',
      name: 'searchPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Best Seller`
  String get bestSeller {
    return Intl.message(
      'Best Seller',
      name: 'bestSeller',
      desc: '',
      args: [],
    );
  }

  /// `Eid Offers`
  String get eidOffers {
    return Intl.message(
      'Eid Offers',
      name: 'eidOffers',
      desc: '',
      args: [],
    );
  }

  /// `25% Off`
  String get discount25 {
    return Intl.message(
      '25% Off',
      name: 'discount25',
      desc: '',
      args: [],
    );
  }

  /// `Shop Now`
  String get shopNow {
    return Intl.message(
      'Shop Now',
      name: 'shopNow',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Our Products`
  String get ourProducts {
    return Intl.message(
      'Our Products',
      name: 'ourProducts',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `EGP / KG`
  String get pricePerKilo {
    return Intl.message(
      'EGP / KG',
      name: 'pricePerKilo',
      desc: '',
      args: [],
    );
  }

  /// `Search Results`
  String get results {
    return Intl.message(
      'Search Results',
      name: 'results',
      desc: '',
      args: [],
    );
  }

  /// `No search results`
  String get noSearchResults {
    return Intl.message(
      'No search results',
      name: 'noSearchResults',
      desc: '',
      args: [],
    );
  }

  /// `Delete All`
  String get deleteAll {
    return Intl.message(
      'Delete All',
      name: 'deleteAll',
      desc: '',
      args: [],
    );
  }

  /// `Recent Searches`
  String get recentSearches {
    return Intl.message(
      'Recent Searches',
      name: 'recentSearches',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Sort by:`
  String get sortBy {
    return Intl.message(
      'Sort by:',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `Price:`
  String get price {
    return Intl.message(
      'Price:',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Price: Low to High`
  String get priceLowToHigh {
    return Intl.message(
      'Price: Low to High',
      name: 'priceLowToHigh',
      desc: '',
      args: [],
    );
  }

  /// `Price: High to Low`
  String get priceHighToLow {
    return Intl.message(
      'Price: High to Low',
      name: 'priceHighToLow',
      desc: '',
      args: [],
    );
  }

  /// `Alphabetical`
  String get alphabet {
    return Intl.message(
      'Alphabetical',
      name: 'alphabet',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `You have 3 items in your cart`
  String get youHaveXItems {
    return Intl.message(
      'You have 3 items in your cart',
      name: 'youHaveXItems',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get ratingSummary {
    return Intl.message(
      'Summary',
      name: 'ratingSummary',
      desc: '',
      args: [],
    );
  }

  /// `Organic`
  String get organic {
    return Intl.message(
      'Organic',
      name: 'organic',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `80 Calories`
  String get calories {
    return Intl.message(
      '80 Calories',
      name: 'calories',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get addToCart {
    return Intl.message(
      'Add to Cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get shipping {
    return Intl.message(
      'Shipping',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get orderSummary {
    return Intl.message(
      'Order Summary',
      name: 'orderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get orderNumber {
    return Intl.message(
      'Order Number',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Choose your payment method:`
  String get choosePaymentMethod {
    return Intl.message(
      'Choose your payment method:',
      name: 'choosePaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery`
  String get cashOnDelivery {
    return Intl.message(
      'Cash on Delivery',
      name: 'cashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Delivery:`
  String get delivery {
    return Intl.message(
      'Delivery:',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Buy now, pay later`
  String get buyNowPayLater {
    return Intl.message(
      'Buy now, pay later',
      name: 'buyNowPayLater',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Confirm & Continue`
  String get confirmAndContinue {
    return Intl.message(
      'Confirm & Continue',
      name: 'confirmAndContinue',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Order`
  String get confirmOrder {
    return Intl.message(
      'Confirm Order',
      name: 'confirmOrder',
      desc: '',
      args: [],
    );
  }

  /// `Order placed successfully!`
  String get orderPlacedSuccess {
    return Intl.message(
      'Order placed successfully!',
      name: 'orderPlacedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Track Order`
  String get trackOrder {
    return Intl.message(
      'Track Order',
      name: 'trackOrder',
      desc: '',
      args: [],
    );
  }

  /// `Please select your preferred payment method.`
  String get pleaseSelectPayment {
    return Intl.message(
      'Please select your preferred payment method.',
      name: 'pleaseSelectPayment',
      desc: '',
      args: [],
    );
  }

  /// `Cardholder Name`
  String get cardHolder {
    return Intl.message(
      'Cardholder Name',
      name: 'cardHolder',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message(
      'Card Number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiryDate {
    return Intl.message(
      'Expiry Date',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get cvv {
    return Intl.message(
      'CVV',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `Save Address`
  String get saveAddress {
    return Intl.message(
      'Save Address',
      name: 'saveAddress',
      desc: '',
      args: [],
    );
  }

  /// `Make Default Card`
  String get makeDefaultCard {
    return Intl.message(
      'Make Default Card',
      name: 'makeDefaultCard',
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

  /// `Personal Info`
  String get personalInfo {
    return Intl.message(
      'Personal Info',
      name: 'personalInfo',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message(
      'My Orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get payments {
    return Intl.message(
      'Payments',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get aboutUs {
    return Intl.message(
      'About Us',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout?`
  String get confirmLogout {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'confirmLogout',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get saveChanges {
    return Intl.message(
      'Save Changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Out for delivery`
  String get delivering {
    return Intl.message(
      'Out for delivery',
      name: 'delivering',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get shipped {
    return Intl.message(
      'Shipped',
      name: 'shipped',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
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
