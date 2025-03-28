# Telepítési útmutató – Flutter + Docker Backend

Ez a dokumentum segít elindítani az alkalmazást, amely egy Flutter alapú mobilalkalmazásból és egy Docker konténerben futó backendből áll.

---

## Előfeltételek

- Flutter SDK 3.29.1 (https://docs.flutter.dev/get-started/install)
- Android Studio vagy VS Code + Flutter plugin
- iOS esetén Xcode
- Docker Desktop (vagy bármilyen Docker CLI)
- Android/iOS emulátor vagy fizikai eszköz (azonos Wi-Fi-n!)

---

## 1. Backend indítása Dockerből

Lépj be a docker mappába, majd add ki a következő parancsot.

```bash
docker-compose up --build
```

Ez elérhetővé teszi a backendet a saját gépeden a `8080`-as porton.

---

## 2. `.env` fájl beállítása

### 1. Hozz létre egy `.env` fájlt a Flutter projekt (vignette_pass) gyökerében

Add meg az IP-címet így:

```env
IP=10.0.2.2
```

- `10.0.2.2` az Android emulátor által elért "localhost"
- `localhost` vagy `127.0.0.1` az iOS emulátor esetében
- Fizikai eszköznél írd be a saját IP-címed (pl. `192.168.x.x`)

IP-címet így tudsz lekérni:

macOS:

```bash
ipconfig getifaddr en0
```

Windows:

```bash
ipconfig
```

Viszont iPhone-ál előfordulhat hogy nem enegdi hogy helyi hálózatra csatlakozz.

Ebben az esetben lépj be az iPhone-on:
Beállítások > [Alkalmazás neve, pl. "Vignette Pass"] > Helyi hálózat → Kapcsold be, ha még nincs engedélyezve.

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

  registerServices();
  registerApis();
  registerBlocs();
  runApp(MyApp());
}
```

### `ioc.dart`:

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

void registerApis() {
  final services = GetIt.instance;

  final ip = dotenv.env['IP'] ?? 'localhost';

  final vignetteApi = HighwayVignetteApi(
    basePathOverride: 'http://$ip:8080',
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

  registerServices();
  registerApis();
  registerBlocs();
  runApp(MyApp());
}

void registerApis() {
  final services = GetIt.instance;

  // final ip = dotenv.env['API_IP'] ?? 'localhost';
  final ip = '10.0.2.2';

  final vignetteApi = HighwayVignetteApi(
    basePathOverride: 'http://$ip:8080',
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
