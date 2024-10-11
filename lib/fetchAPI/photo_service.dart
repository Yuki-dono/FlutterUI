import 'package:dio/dio.dart'; // Import Dio for API calls

// Define a Photo model to hold the photo data
class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  // Factory method to create a Photo from JSON
  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}

// Service class to provide the photo
class PhotoService {
  final Dio _dio = Dio();

  // Fetch the full list of photos from the API
  Future<List<Photo>> fetchPhotos() async {
    try {
      // Fetch the full list of photos
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/photos');

      if (response.statusCode == 200) {
        // Parse the response data into a list of Photo objects
        List<Photo> photos = (response.data as List)
            .map((json) => Photo.fromJson(json))
            .toList();

        // Return the list of photos
        return photos;
      } else {
        throw Exception('Failed to load photos');
      }
    } catch (e) {
      print('Error fetching photos: $e');
      throw Exception('Error fetching photos');
    }
  }
}
