import 'package:flutter_test/flutter_test.dart';
import 'package:distak/main.dart';

void main() {
  testWidgets('Verifica se o app abre na Splash Screen', (WidgetTester tester) async {
    // Constrói o nosso app.
    await tester.pumpWidget(const DistakApp());

    // Verifica se a palavra 'DISTAK' da splash screen está na tela.
    expect(find.text('DISTAK'), findsOneWidget);
    
    // Verifica se o slogan está na tela.
    expect(find.text('Sua oficina, organizada.'), findsOneWidget);
  });
}