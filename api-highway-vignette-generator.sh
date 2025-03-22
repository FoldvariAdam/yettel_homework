rm -r libs/highway_vignette_api
java -Dio.swagger.parser.util.RemoteUrl.trustAll=true -Dio.swagger.v3.parser.util.RemoteUrl.trustAll=true -jar openapi-generator-cli-7.8.0.jar generate -g dart-dio -i swagger.yml -c api-highway-vignette-generator-config.json -o ./libs/highway_vignette_api
cd libs/highway_vignette_api
flutter pub get
flutter pub run build_runner build
cd ../..