import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Item {
  final String id;
  final String name;
  final String category;
  final IconData icon;
  final Color color;
  int count;

  Item({
    required this.id,
    required this.name,
    required this.category,
    required this.icon,
    required this.color,
    this.count = 0,
  });
}

class EasyMoveScreen extends StatefulWidget {
  @override
  _EasyMoveScreenState createState() => _EasyMoveScreenState();
}

class _EasyMoveScreenState extends State<EasyMoveScreen>
    with TickerProviderStateMixin {
  late AnimationController _boxController;
  late AnimationController _itemAnimationController;
  late Animation<double> _boxScaleAnimation;
  late Animation<double> _boxOpacityAnimation;
  late Animation<Offset> _itemFlyAnimation;

  List<Item> items = [
    Item(
      id: '1',
      name: 'Sofa',
      category: 'Furniture',
      icon: Icons.chair,
      color: Colors.brown,
    ),
    Item(
      id: '2',
      name: 'Dining Table',
      category: 'Furniture',
      icon: Icons.table_restaurant,
      color: Colors.orange,
    ),
    Item(
      id: '3',
      name: 'TV',
      category: 'Electronics',
      icon: Icons.tv,
      color: Colors.black,
    ),
    Item(
      id: '4',
      name: 'Refrigerator',
      category: 'Appliances',
      icon: Icons.kitchen,
      color: Colors.blue,
    ),
    Item(
      id: '5',
      name: 'Bed',
      category: 'Furniture',
      icon: Icons.bed,
      color: Colors.purple,
    ),
    Item(
      id: '6',
      name: 'Washing Machine',
      category: 'Appliances',
      icon: Icons.local_laundry_service,
      color: Colors.green,
    ),
    Item(
      id: '7',
      name: 'Bookshelf',
      category: 'Furniture',
      icon: Icons.menu_book,
      color: Colors.teal,
    ),
    Item(
      id: '8',
      name: 'Laptop',
      category: 'Electronics',
      icon: Icons.laptop,
      color: Colors.grey,
    ),
  ];

  int get totalItems => items.fold(0, (sum, item) => sum + item.count);

  @override
  void initState() {
    super.initState();
    _boxController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _itemAnimationController = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    _boxScaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.1,
    ).animate(CurvedAnimation(
      parent: _boxController,
      curve: Curves.elasticOut,
    ));

    _boxOpacityAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _boxController,
      curve: Curves.easeInOut,
    ));

    _itemFlyAnimation = Tween<Offset>(
      begin: Offset(0, -0.5),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _itemAnimationController,
      curve: Curves.elasticOut,
    ));
  }

  @override
  void dispose() {
    _boxController.dispose();
    _itemAnimationController.dispose();
    super.dispose();
  }

  void _incrementItem(Item item) {
    setState(() {
      item.count++;
    });
    _animateBox();
    _animateItemFly();
    HapticFeedback.lightImpact();
  }

  void _decrementItem(Item item) {
    if (item.count > 0) {
      setState(() {
        item.count--;
      });
      _animateBox();
      HapticFeedback.lightImpact();
    }
  }

  void _animateBox() {
    _boxController.forward().then((_) {
      _boxController.reverse();
    });
  }

  void _animateItemFly() {
    _itemAnimationController.forward().then((_) {
      _itemAnimationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'EasyMove',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Main content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select items to move',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return _buildItemCard(items[index]);
                    },
                  ),
                ),
                SizedBox(height: 100), // Space for bottom box
              ],
            ),
          ),
          // Animated EasyMove box at bottom
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: AnimatedBuilder(
              animation: _boxController,
              builder: (context, child) {
                return Transform.scale(
                  scale: _boxScaleAnimation.value,
                  child: Opacity(
                    opacity: _boxOpacityAnimation.value,
                    child: _buildEasyMoveBox(),
                  ),
                );
              },
            ),
          ),
          // Flying item animation
          if (_itemAnimationController.isAnimating)
            Positioned(
              bottom: 100,
              left: MediaQuery.of(context).size.width / 2 - 25,
              child: SlideTransition(
                position: _itemFlyAnimation,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildItemCard(Item item) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Item icon and info
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: item.color.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      item.icon,
                      size: 32,
                      color: item.color,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    item.category,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // Counter controls
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCounterButton(
                  icon: Icons.remove,
                  onPressed: () => _decrementItem(item),
                  color: Colors.red,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: item.count > 0 ? Colors.blue : Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${item.count}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: item.count > 0 ? Colors.white : Colors.grey[600],
                    ),
                  ),
                ),
                _buildCounterButton(
                  icon: Icons.add,
                  onPressed: () => _incrementItem(item),
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterButton({
    required IconData icon,
    required VoidCallback onPressed,
    required Color color,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 20,
          color: color,
        ),
      ),
    );
  }

  Widget _buildEasyMoveBox() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[400]!, Colors.blue[600]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: totalItems > 0 ? () => _showMoveDialog() : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.inventory_2,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'EasyMove Box',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$totalItems items selected',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showMoveDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Move Items'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('You have selected the following items:'),
              SizedBox(height: 16),
              ...items
                  .where((item) => item.count > 0)
                  .map((item) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(item.name),
                            Text('x${item.count}'),
                          ],
                        ),
                      ))
                  .toList(),
              SizedBox(height: 16),
              Text(
                'Total: $totalItems items',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _resetItems();
              },
              child: Text('Confirm Move'),
            ),
          ],
        );
      },
    );
  }

  void _resetItems() {
    setState(() {
      for (var item in items) {
        item.count = 0;
      }
    });
  }
}