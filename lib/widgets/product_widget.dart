import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/tk_data_set.dart';
import 'package:flutter_application_3/widgets/product_card.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => ProductWidgetState();
}

class ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.7,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 4 / 2.3,
          mainAxisSpacing: 30,
          crossAxisSpacing: 20,
        ),
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: TkDataSet.productList
            .map(
              (product) => ProductCard(
                product: product,
                onSelected: (model) {
                  setState(() {
                    for (var item in TkDataSet.productList) {
                      item.isSelected = false;
                    }
                    model.isSelected = true;
                  });
                },
                key: ValueKey(product.id),
              ),
            )
            .toList(),
      ),
    );
  }
}
