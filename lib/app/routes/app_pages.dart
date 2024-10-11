// app/routes/app_pages.dart
import 'package:get/get.dart';
import 'package:tugassssss/app/modules/BagianDua/views/auth_view.dart';
import 'package:tugassssss/app/modules/CancelValid/bindings/cancelvalid_binding.dart';
import 'package:tugassssss/app/modules/CancelValid/views/cancelvalid_view.dart';
import 'package:tugassssss/app/modules/cancelled/bindings/cancelled_binding.dart';
import 'package:tugassssss/app/modules/cancelled/views/cancelled_view.dart';
import 'package:tugassssss/app/modules/complete/bindings/complete_binding.dart';
import 'package:tugassssss/app/modules/complete/views/complete_view.dart';
import 'package:tugassssss/app/modules/home/views/food_view.dart';
import 'package:tugassssss/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:tugassssss/app/modules/homepage/views/homepage_view.dart';
import 'package:tugassssss/app/modules/orders/bindings/orders_binding.dart';
import 'package:tugassssss/app/modules/orders/views/orders_view.dart';
import 'package:tugassssss/app/modules/signIn/views/login_view.dart';
import 'package:tugassssss/app/modules/signUp/bindings/masuk_binding.dart';
import 'package:tugassssss/app/modules/signUp/views/masuk_view.dart';
import 'package:tugassssss/app/routes/app_routes.dart';

import '../modules/home/bindings/food_binding.dart';
import '../modules/BagianDua/bindings/auth_binding.dart';
import '../modules/signIn/bindings/login_binding.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => FoodView(),
      binding: FoodBinding(),
    ),
    GetPage(
      name: Routes.BAGIAN_DUA,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.SIGN_IN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SIGN_UP,
      page: () => MasukView(),
      binding: MasukBinding(),
    ),
    GetPage(
        name: Routes.HOMEPAGE,
        page: () => HomePageView(),
        binding: HomePageBinding(),
    ),
    GetPage(
        name: Routes.ORDERS,
        page: () => OrdersView(),
        binding: OrdersBinding(),
    ),
    GetPage(
        name: Routes.COMPLETE,
        page: () => CompleteView(),
        binding: CompleteBinding(),
    ),
    GetPage(
        name: Routes.CANCELLED,
        page: () => CancelledView(),
        binding: CancelledBinding(),
    ),
    GetPage(
        name: Routes.CANCEL_VALIDATION,
        page: () => CancelvalidView(),
        binding: CancelValidBindings(),
    ),
  ];
}
