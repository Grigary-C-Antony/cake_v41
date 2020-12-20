import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';

class favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              })
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: demoProducts.length,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              itemBuilder: (context, index) {
                if (demoProducts[index].isFavourite) {
                  return ProductCard(product: demoProducts[index]);
                }
                return SizedBox.shrink();
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(2),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
