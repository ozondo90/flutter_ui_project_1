import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/tk_category.dart';
import 'package:flutter_application_3/models/tk_data_set.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => CategoryWidgetState();
}

class CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var category in TkDataSet.categoryList)
            CategoryIcon(
              model: category,
              onSelected: (model) {
                setState(() {
                  for (var item in TkDataSet.categoryList) {
                    item.isSelected = false;
                  }
                  model.isSelected = true;
                });
              },
              key: ValueKey(category.id), // Assign a non-null key
            ),
        ],
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final TkCategory model;
  final ValueChanged<TkCategory> onSelected;

  const CategoryIcon({
    Key? key,
    required this.model,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(model);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue, // Blue background color
              ),
              child: model.image.isNotEmpty
                  ? ClipOval(
                      child: Image.asset(
                        model.image,
                        fit: BoxFit.cover,
                      ),
                    )
                  : const SizedBox(), // If no image, show nothing
            ),
            const SizedBox(height: 8), // Add spacing between image and text
            Text(
              model.name,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
