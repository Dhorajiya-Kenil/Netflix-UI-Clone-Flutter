import 'package:fall/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NetflixHomePage(),
  ));
}

// HomePage class
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Featured Movie Section
          Stack(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/heist.jpg'), // Featured movie image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 500,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Money Heist',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.play_arrow),
                              SizedBox(width: 5),
                              Text('Play'),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            _showMovieInfoDialog(context, 'Money Heist', 'A gripping show about a criminal mastermind who plans the biggest heist in history.');
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.grey.withOpacity(0.7),
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.info_outline),
                              SizedBox(width: 5),
                              Text('Info'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          _buildCategorySection('Trending Now', [
            'assets/images/avtar.png',
            'assets/images/joker.jpg',
            'assets/images/infinity.jpg',
            'assets/images/starwars.jpg',
            'assets/images/aquva.jpg',
          ]),
          SizedBox(height: 20),

          _buildCategorySection('Popular on Movies_club', [
            'assets/images/jawan.jpeg',
            'assets/images/freeguy.jpg',
            'assets/images/master.jpg',
            'assets/images/mi.jpg',
            'assets/images/pathan.webp',
          ]),
          SizedBox(height: 20),

          _buildCategorySection('TV Shows', [
            'assets/images/kapil.jpg',
            'assets/images/friends.jpg',
            'assets/images/love.jpg',
            'assets/images/family.jpg',
            'assets/images/kaffee.jpg',
          ]),
          SizedBox(height: 20),

          _buildCategorySection('Action Movie', [
            'assets/images/avtar.png',
            'assets/images/joker.jpg',
            'assets/images/infinity.jpg',
            'assets/images/starwars.jpg',
            'assets/images/aquva.jpg',
          ]),
          SizedBox(height: 20),

          _buildCategorySection('Romantic', [
            'assets/images/jawan.jpeg',
            'assets/images/freeguy.jpg',
            'assets/images/master.jpg',
            'assets/images/mi.jpg',
            'assets/images/pathan.webp',
          ]),
          SizedBox(height: 20),

          _buildCategorySection('My List', [
            'assets/images/family.jpg',
            'assets/images/kaffee.jpg',
            'assets/images/pathan.webp',
            'assets/images/infinity.jpg',
            'assets/images/starwars.jpg',
          ]),
        ],
      ),
    );
  }

  Widget _buildCategorySection(String title, List<String> imagePaths) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length, // Use the length of imagePaths
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imagePaths[index], // Use the image path from the list
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _showMovieInfoDialog(BuildContext context, String title, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: <Widget>[
            TextButton(
              child: Text('Close',style: TextStyle(color: Colors.red),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}












// New Nad Hot Page

class NewHotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of movies with images and titles
    final movies = [
      {'image': 'assets/images/joker.jpg', 'title': 'Joker'},
      {'image': 'assets/images/avtar.png', 'title': 'Avatar'},
      {'image': 'assets/images/infinity.jpg', 'title': 'Infinity War'},
      {'image': 'assets/images/starwars.jpg', 'title': 'Star Wars'},
      {'image': 'assets/images/aquva.jpg', 'title': 'Aquaman'},
      {'image': 'assets/images/jawan.jpeg', 'title': 'Jawan'},
      {'image': 'assets/images/freeguy.jpg', 'title': 'Free Guy'},
      {'image': 'assets/images/master.jpg', 'title': 'Master'},
      {'image': 'assets/images/mi.jpg', 'title': 'Mission Impossible'},
      {'image': 'assets/images/pathan.webp', 'title': 'Pathan'},
      {'image': 'assets/images/kapil.jpg', 'title': 'Kapil Sharma Show'},
      {'image': 'assets/images/friends.jpg', 'title': 'Friends Reunion'},
      {'image': 'assets/images/love.jpg', 'title': 'Love Actually'},
      {'image': 'assets/images/family.jpg', 'title': 'Family Movie Night'},
      {'image': 'assets/images/kaffee.jpg', 'title': 'Koffee with Karan'},
    ];

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('New & Hot', style: TextStyle(color: Colors.white, fontSize: 24)),

      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10, // Spacing between columns
          mainAxisSpacing: 10, // Spacing between rows
          childAspectRatio: 0.7, // Aspect ratio for each item
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[800],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Round Image
                ClipOval(
                  child: Image.asset(
                    movie['image']!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8),
                // Movie Title
                Text(
                  movie['title']!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


















// DownloadsPage class

class DownloadsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample data for downloaded movies
    final downloadedMovies = [
      {
        'image': 'assets/images/joker.jpg',
        'title': 'Joker',
        'fileSize': '2.5 GB',
      },
      {
        'image': 'assets/images/avtar.png',
        'title': 'Avatar',
        'fileSize': '3.2 GB',
      },
      {
        'image': 'assets/images/infinity.jpg',
        'title': 'Infinity War',
        'fileSize': '2.8 GB',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Downloads', style: TextStyle(color: Colors.white, fontSize: 24)),

      ),
      body: ListView.builder(
        itemCount: downloadedMovies.length,
        itemBuilder: (context, index) {
          final movie = downloadedMovies[index];
          return ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                movie['image']!,
                width: 80,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              movie['title']!,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  'File Size: ${movie['fileSize']}',
                  style: TextStyle(color: Colors.white60),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}














// NetflixHomePage class
class NetflixHomePage extends StatefulWidget {
  @override
  _NetflixHomePageState createState() => _NetflixHomePageState();
}

















// NotificationsPage

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample notifications data with all provided images
    final notifications = [
      {
        'icon': 'assets/images/joker.jpg',
        'heading': 'New Movie Release!',
        'subheading': 'Joker is now available for streaming.',
      },
      {
        'icon': 'assets/images/avtar.png',
        'heading': 'Avatar 2',
        'subheading': 'Don\'t miss the latest sequel!',
      },
      {
        'icon': 'assets/images/infinity.jpg',
        'heading': 'Infinity War',
        'subheading': 'The epic conclusion is here!',
      },
      {
        'icon': 'assets/images/starwars.jpg',
        'heading': 'Star Wars: The Rise of Skywalker',
        'subheading': 'The final battle begins.',
      },
      {
        'icon': 'assets/images/aquva.jpg',
        'heading': 'Aquaman',
        'subheading': 'Explore the underwater kingdom of Atlantis.',
      },
      {
        'icon': 'assets/images/jawan.jpeg',
        'heading': 'Jawan',
        'subheading': 'Catch the latest action-packed film!',
      },
      {
        'icon': 'assets/images/freeguy.jpg',
        'heading': 'Free Guy',
        'subheading': 'A new kind of hero emerges.',
      },
      {
        'icon': 'assets/images/master.jpg',
        'heading': 'Master',
        'subheading': 'A thrilling new release.',
      },
      {
        'icon': 'assets/images/mi.jpg',
        'heading': 'Mission Impossible',
        'subheading': 'An adrenaline-pumping adventure.',
      },
      {
        'icon': 'assets/images/pathan.webp',
        'heading': 'Pathan',
        'subheading': 'A new blockbuster hit.',
      },
      {
        'icon': 'assets/images/kapil.jpg',
        'heading': 'Kapil Sharma Show',
        'subheading': 'Catch the latest comedy episodes.',
      },
      {
        'icon': 'assets/images/friends.jpg',
        'heading': 'Friends Reunion',
        'subheading': 'Relive the magic of Friends.',
      },
      {
        'icon': 'assets/images/love.jpg',
        'heading': 'Love Actually',
        'subheading': 'A heartwarming romantic film.',
      },
      {
        'icon': 'assets/images/family.jpg',
        'heading': 'Family Movie Night',
        'subheading': 'Enjoy with your loved ones.',
      },
      {
        'icon': 'assets/images/kaffee.jpg',
        'heading': 'Koffee with Karan',
        'subheading': 'Catch the latest celebrity interviews.',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Notifications', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                notification['icon']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              notification['heading']!,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              notification['subheading']!,
              style: TextStyle(color: Colors.white70),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          );
        },
      ),
    );
  }
}












//Profile Page

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Profile', style: TextStyle(color: Colors.white, fontSize: 24)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          // Profile Header
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.blueGrey],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/KenilAi.jpeg'), // Replace with user's profile image
                ),
                SizedBox(height: 16),
                Text(
                  'Kenil Dhorajiya', // Replace with user's name
                  style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'dhorajiyakenil@gmail.com.com', // Replace with user's email
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  child: Text('Edit Profile'),
                ),
              ],
            ),
          ),
          // Settings Section
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20),
              children: [
                _buildSettingsTile(context, Icons.person, 'Account Settings'),
                _buildSettingsTile(context, Icons.lock, 'Privacy'),
                _buildSettingsTile(context, Icons.language, 'Language'),
                _buildSettingsTile(context, Icons.help, 'Help & Support'),
                _buildSettingsTile(context, Icons.logout, 'Log Out'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build settings tiles
  Widget _buildSettingsTile(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
      onTap: () {
        // Handle tile tap
        if (title == 'Log Out') {
          // Add log out logic
        }
      },
    );
  }
}














class _NetflixHomePageState extends State<NetflixHomePage> {
  int _selectedIndex = 0;

  // The different pages available in the app
  static List<Widget> _pages = [
    HomePage(),
    NewHotPage(),
    DownloadsPage(),

  ];

  // Method to handle tap on BottomNavigationBar items
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Method to navigate to the ProfilePage
  void _navigateToProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }

  // Method to navigate to the NotificationsPage
  void _navigateToNotifications() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotificationsPage()),
    );
  }

  // Method to navigate to the SearchPage
  void _navigateToSearch() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SearchPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/movie_club.png'), // Netflix logo
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: _navigateToSearch, // Navigate to Search Page
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: _navigateToNotifications,
          ),

          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: _navigateToProfile,
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.whatshot), label: 'New & Hot'),
          BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Downloads'),

        ],
      ),
    );
  }
}
