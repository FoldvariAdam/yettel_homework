# Telepítési útmutató – Flutter + Docker Backend

Ez a dokumentum segít elindítani az alkalmazást, amely egy Flutter alapú mobilalkalmazásból és egy Docker konténerben futó backendből áll.

---

## Előfeltételek

- Flutter SDK (https://docs.flutter.dev/get-started/install)
- Android Studio vagy VS Code + Flutter plugin
- Docker Desktop
- Android emulator vagy fizikai eszköz

---

## 1. Backend indítása Dockerből

```bash
docker-compose up --build
```

Ez elérhetővé teszi a backendet a saját gépeden a `8080`-as porton.

---

## 2. `.env` fájl beállítása

### 1. Hozz létre egy `.env` fájlt a projekt gyökerében

```env
IP=10.0.2.2
```

- `10.0.2.2` az Android emulátor által elért "localhost"
- Fizikai eszköznél írd be a saját IP-címed (pl. `192.168.x.x`)

### 2. Győződj meg hogy regisztrálva van az asseteknél a `.env`:

A `pubspec.yaml`-ban:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/
    - .env
```

---

## 3. Győződj meg hogy a Flutter kódban is benne van

### `main.dart`:

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load();
  registerApisBeforeRunApp();
  runApp(const MyApp());
}
```

### `registerApisBeforeRunApp()` vagy `ioc.dart`:

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

void registerApisBeforeRunApp() {
  final services = GetIt.instance;

  final ip = dotenv.env['IP'] ?? 'localhost';

  final vignetteApi = HighwayVignetteApi(
    basePathOverride: '$ip:$port',
  ).getVignetteApi();

  services.registerSingleton<VignetteApi>(vignetteApi);
}
```

---

## 4. Hiba esetén: `.env` nem található

Ha ilyen hibát kapsz:

```
FileNotFoundError: .env
```

akkor:

- nem lett beírva az `assets:` szekcióba
- nincs `.env` fájl a projekt gyökerében
- hot reload után próbáltad (csak cold start működik!)

### Alternatív megoldás:

Ha nem működik a `.env`, kommenteld ki, és írd be kézzel az IP-t:

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  // await dotenv.load();
  registerApisBeforeRunApp();
  runApp(const MyApp());
}

void registerApisBeforeRunApp() {
  final services = GetIt.instance;

  // final ip = dotenv.env['API_IP'] ?? 'localhost';
  final ip = '10.0.2.2';

  final vignetteApi = HighwayVignetteApi(
    basePathOverride: '$ip:$port',
  ).getVignetteApi();

  services.registerSingleton<VignetteApi>(vignetteApi);
}
```

---

## 5. App futtatása

```bash
flutter pub get
flutter run
```

---

