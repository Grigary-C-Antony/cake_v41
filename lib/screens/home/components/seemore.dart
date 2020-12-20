import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app/components/product_card.dart';
// import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/models/Product.dart';

class seemore extends StatelessWidget {
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
              onPressed: () {})
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
                return ProductCard(product: demoProducts[index]);
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(2),
            ),
          ),
        ],
      ),
    );
  }
}
