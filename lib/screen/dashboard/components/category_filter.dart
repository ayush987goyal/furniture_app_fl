import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({
    Key key,
  }) : super(key: key);

  @override
  _CategoryFilterState createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  final List<String> _categories = const [
    'All',
    'Sofa',
    'Park bench',
    'Armchair'
  ];
  int _selectedIndex = 0;

  void _selectionHandler(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 40,
      child: ListView.builder(
        itemCount: _categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => CategoryItem(
          title: _categories[index],
          isSelected: _selectedIndex == index,
          onClick: () => _selectionHandler(index),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function onClick;

  const CategoryItem({
    Key key,
    this.title,
    this.isSelected,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: kDefaultPadding / 2),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        decoration: BoxDecoration(
          color:
              isSelected ? Colors.white.withOpacity(0.4) : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
