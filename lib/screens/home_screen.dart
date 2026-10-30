import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Distak', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF0A192F),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bom dia! Veja como está sua oficina.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Indicadores
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.5,
                children: [
                  _buildDashboardCard('Veículos na oficina', '8', Colors.blue),
                  _buildDashboardCard('Serviços em andamento', '4', Colors.orange),
                  _buildDashboardCard('Aguardando aprovação', '2', Colors.red),
                  _buildDashboardCard('Prontos para entrega', '2', Colors.green),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Serviços recentes',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildServiceListItem('Honda Civic — ABC-1234', 'Troca de óleo e filtros', 'Em andamento', Colors.orange),
              _buildServiceListItem('Fiat Uno — DEF-5678', 'Diagnóstico do sistema de freios', 'Aguardando aprovação', Colors.red),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Nova OS'),
          BottomNavigationBarItem(icon: Icon(Icons.directions_car), label: 'Veículos'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Clientes'),
          BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'Estoque'),
        ],
        selectedItemColor: const Color(0xFF0A192F),
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildDashboardCard(String title, String value, Color color) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color)),
            const SizedBox(height: 4),
            Text(title, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceListItem(String vehicle, String service, String status, Color statusColor) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: const Icon(Icons.build_circle, size: 40, color: Color(0xFF0A192F)),
        title: Text(vehicle, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Serviço: $service'),
            const SizedBox(height: 4),
            Text('Status: $status', style: TextStyle(color: statusColor, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
