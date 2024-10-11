import 'package:flutter/material.dart';
import 'package:heartlink/fetchAPI/photo_service.dart'; // Import the service

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Future<List<Photo>> _photos;

  @override
  void initState() {
    super.initState();
    _photos = PhotoService().fetchPhotos(); // Fetch the list of photos
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Photo>>(
      future: _photos,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          final photo = snapshot.data![0]; // Get the first photo

          return Scaffold(
            appBar: AppBar(
              title: const Text(
                  'Photo Details'), // Title for the photo detail view
            ),
            body: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/tree.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    color: Colors.white.withOpacity(0.85),
                  ),
                ),
                Center(
                  child: Container(
                    margin:
                        const EdgeInsets.all(20), // Margin for the Container
                    child: SizedBox(
                      height: 400, // Adjusted height
                      width: 300, // Adjusted width
                      child: Card(
                        color: Colors.grey[200], // Light color for the card
                        elevation: 8, // Elevation for shadow effect
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20), // Rounded corners
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(
                              16), // Padding inside the card
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Center content vertically
                            children: [
                              photo.url.isNotEmpty
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          15), // Rounded corners for image
                                      child: Image.network(
                                        photo.url,
                                        fit: BoxFit
                                            .cover, // Cover the space without distortion
                                        height:
                                            250, // Set specific height for the image
                                        width: double
                                            .infinity, // Full width of the card
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return const Icon(
                                              Icons.error); // Error icon
                                        },
                                      ),
                                    )
                                  : const Icon(Icons
                                      .error), // Fallback in case the URL is empty
                              const SizedBox(
                                  height: 8), // Space between image and title
                              Text(
                                photo.title,
                                textAlign: TextAlign.center, // Center the text
                                style: const TextStyle(
                                  fontSize: 18, // Increased font size
                                  fontWeight: FontWeight
                                      .bold, // Bold font for better visibility
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(child: Text('No photos found'));
        }
      },
    );
  }
}
