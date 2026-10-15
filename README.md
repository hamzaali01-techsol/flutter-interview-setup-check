# Interview Setup Check

This small app confirms your machine is ready for the practical part of the Flutter interview.
It contains no exercise. You don't need to change any code.

## Requirements
- Flutter **3.38 or newer** (stable channel). Check with `flutter --version`.
- An IDE (VS Code or Android Studio)
- One of: Android emulator, iOS simulator, physical device, or Chrome/desktop as a fallback

## Steps
1. Run `flutter doctor` and fix any major errors.
2. Clone this repo and get the dependencies (needs internet once, to download packages):
   ```
   flutter pub get
   ```
3. Start your emulator (or connect your phone), then find its device ID:
   ```
   flutter devices
   ```
   Example output: `sdk gphone64 x86 64 (mobile) • emulator-5554 • android-x64 ...`
   The ID is the second column (`emulator-5554` here).
4. Run the app on that device:
   ```
   flutter run -d emulator-5554
   ```
   Or select your device in the IDE's device picker and press Run.
5. The app should open with a green check and the message
   "Your setup is ready for the interview."
6. Reply to confirm it worked, or send us any errors you hit.

Keep the downloaded packages on your machine. The interview exercise uses the same ones,
so it will run without internet on the day.
