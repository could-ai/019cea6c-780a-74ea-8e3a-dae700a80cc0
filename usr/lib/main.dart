import 'package:flutter/material.dart';

void main() {
  runApp(const ERPWebsiteApp());
}

class ERPWebsiteApp extends StatelessWidget {
  const ERPWebsiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ERP System - Streamline Your Business',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ERP System'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: () {}, child: const Text('Features')),
          TextButton(onPressed: () {}, child: const Text('About')),
          TextButton(onPressed: () {}, child: const Text('Contact')),
          ElevatedButton(onPressed: () {}, child: const Text('Get Started')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              height: 600,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Streamline Your Business with Our ERP System',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Comprehensive enterprise resource planning to manage inventory, finance, HR, and more.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          textStyle: const TextStyle(fontSize: 18),
                        ),
                        child: const Text('Start Free Trial'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Features Section
            Container(
              padding: const EdgeInsets.all(64.0),
              child: Column(
                children: [
                  const Text(
                    'Key Features',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildFeatureCard(
                        Icons.inventory,
                        'Inventory Management',
                        'Track stock, orders, and suppliers efficiently.',
                      ),
                      _buildFeatureCard(
                        Icons.account_balance,
                        'Financial Planning',
                        'Manage budgets, invoices, and financial reports.',
                      ),
                      _buildFeatureCard(
                        Icons.people,
                        'HR Management',
                        'Handle employee data, payroll, and performance.',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // About Section
            Container(
              color: Colors.grey[100],
              padding: const EdgeInsets.all(64.0),
              child: const Column(
                children: [
                  Text(
                    'About Our ERP System',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Our ERP system is designed to integrate all facets of business operations into a unified platform. '
                    'From small businesses to large enterprises, we provide scalable solutions that drive efficiency and growth.',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // Footer
            Container(
              color: Colors.blue[900],
              padding: const EdgeInsets.all(32.0),
              child: const Column(
                children: [
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email: info@erpsystem.com | Phone: +1 (123) 456-7890',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '© 2023 ERP System. All rights reserved.',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(IconData icon, String title, String description) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 48, color: Colors.blue),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}