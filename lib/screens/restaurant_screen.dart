import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  final TransformationController _transformationController = TransformationController();
  final double _zoomFactor = 2.5; // Set the zoom factor for the buttons
  bool _isDriveThruSelected = false; // Track if "Drive Thru" is selected
  bool _isMcCafeSelected = false; // Track if "McCafé" is selected
  bool _isOpen24hrsSelected = false; // Track if "Open 24hrs" is selected

  void _zoomInDriveThru() {
    setState(() {
      _isDriveThruSelected = !_isDriveThruSelected;
      _isMcCafeSelected = false;
      _isOpen24hrsSelected = false;

      if (_isDriveThruSelected) {
        _transformationController.value = Matrix4.identity()..scale(_zoomFactor);
      } else {
        _transformationController.value = Matrix4.identity();
      }
    });
  }

  void _zoomInMcCafe() {
    setState(() {
      _isMcCafeSelected = !_isMcCafeSelected;
      _isDriveThruSelected = false;
      _isOpen24hrsSelected = false;

      if (_isMcCafeSelected) {
        _transformationController.value = Matrix4.identity()
          ..scale(_zoomFactor)
          ..translate(-160.0, 0.0); // Adjust -160 to control the amount moved to the right
      } else {
        _transformationController.value = Matrix4.identity();
      }
    });
  }

  void _toggleOpen24hrs() {
    setState(() {
      _isOpen24hrsSelected = !_isOpen24hrsSelected;
      _isDriveThruSelected = false;
      _isMcCafeSelected = false;

      // No transformation applied here; only button color changes
      _transformationController.value = Matrix4.identity();
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height * 0.6; // Adjust height as needed

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Restaurants', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Filter buttons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterButton(
                  label: 'Drive Thru',
                  onTap: _zoomInDriveThru,
                  isSelected: _isDriveThruSelected,
                ),
                FilterButton(
                  label: 'McCafé',
                  onTap: _zoomInMcCafe,
                  isSelected: _isMcCafeSelected,
                ),
                FilterButton(
                  label: 'Open 24hrs',
                  onTap: _toggleOpen24hrs,
                  isSelected: _isOpen24hrsSelected,
                ),
              ],
            ),
          ),
          // Interactive map image with consistent sizing
          Expanded(
            child: InteractiveViewer(
              transformationController: _transformationController,
              minScale: 1.0,
              maxScale: 3.0,
              child: SizedBox(
                width: screenWidth,
                height: screenHeight,
                child: Image.asset(
                  'assets/images/map_image.png', // Add your map image here
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  const FilterButton({
    required this.label,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: isSelected ? Colors.amber : Colors.white,
        shape: const StadiumBorder(),
        side: const BorderSide(color: Colors.grey),
      ),
      onPressed: onTap,
      child: Text(label),
    );
  }
}
