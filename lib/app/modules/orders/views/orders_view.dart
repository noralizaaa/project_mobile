// modules/orders/views/orders_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugassssss/app/routes/app_routes.dart';
import '../controllers/orders_controller.dart';
import '../widget/order_item_card.dart';

class OrdersView extends GetView<OrdersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFC107),
        title: const Text("My Orders", style: TextStyle(color: Colors.white)),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatusButton("Active", true, onPressed: (){
                  Get.toNamed(Routes.ORDERS); // Tetap di halaman Active Orders
                }),
                _buildStatusButton("Completed", false, onPressed: (){
                  Get.toNamed(Routes.COMPLETE); // Navigasi ke halaman Complete Orders
                }),
                _buildStatusButton("Cancelled", false, onPressed: (){
                  Get.toNamed(Routes.CANCELLED); // Navigasi ke halaman Cancelled Orders
                }),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.activeOrders.length,
                itemBuilder: (context, index) {
                  final order = controller.activeOrders[index];
                  return OrderItemCard(
                    name: order['name'].toString(),
                    price: order['price'].toString(),
                    time: order['time'].toString(),
                    image: order['image'].toString(),
                    onCancel: () => controller.cancelOrder(index),
                  );
                },
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFE95322),
        selectedItemColor: Colors.amber[300],
        unselectedItemColor: Colors.amber[100],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Get.toNamed(Routes.HOMEPAGE);
          }
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              width: 30,
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/orders.png',
              width: 30,
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/favorite.png',
              width: 30,
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/profile.png',
              width: 30,
              height: 30,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildStatusButton(String title, bool isActive, {required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive ? Colors.orange : Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
