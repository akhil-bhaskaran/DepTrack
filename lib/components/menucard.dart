import 'package:flutter/material.dart';
import 'package:pattip/components/provider.dart';
import 'package:provider/provider.dart';

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

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (context, value, child) => Card(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        elevation: 1.0,
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

              // changed quanitty
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        quantity++;
                        value.addSum(widget.price);
                      },
                      icon: Icon(Icons.add_box)),
                  Text('$quantity'),
                  IconButton(
                      onPressed: () {
                        if (quantity > 0) quantity--;
                        value.minus(widget.price);
                      },
                      icon: Icon(Icons.indeterminate_check_box)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



//  quantity++;
//                 value.addSum(widget.price);