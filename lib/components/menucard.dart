import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MenuItemCard extends StatefulWidget {
  final String imageUrl;
  final String foodName;
  final double price;

  const MenuItemCard({
    super.key,
    required this.imageUrl,
    required this.foodName,
    required this.price,
  });

  @override
  State<MenuItemCard> createState() => _MenuItemCardState();
}

class _MenuItemCardState extends State<MenuItemCard> {
  int quantity = 0;
  double totalPrice = 0;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          flex: 1,
          onPressed: (context) {
            setState(() {
              quantity++;
              totalPrice += widget.price;
            });
          },
          autoClose: false,
          icon: Icons.add,
        ),
        SlidableAction(
          autoClose: false,
          onPressed: (context) {
            setState(() {
              if (quantity > 0) quantity--;
            });
          },
          icon: Icons.horizontal_rule,
          flex: 1,
        )
      ]),
      child: Card(
        margin: const EdgeInsets.all(10.0),
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  widget.imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.foodName,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          '\u{20B9}${widget.price}',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(child: Text("Quantity ")),
              Text('$quantity'),
            ],
          ),
        ),
      ),
    );
  }
}
