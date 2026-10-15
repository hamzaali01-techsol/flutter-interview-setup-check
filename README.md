# Interview Setup Check

This small app confirms your machine is ready for the practical part of the Flutter interview.
It contains no exercise. You don't need to change any code.

## Requirements
- Flutter **3.38 or newer** (stable channel). Check with `flutter --version`.
- An IDE (VS Code or Android Studio)
- One of: Android emulator, iOS simulator, physical device, or Chrome/desktop as a fallback

## Steps
1. Run `flutter doctor` and fix any major errors.
2. Clone this repo, then run (needs internet once, to download packages):
   ```
   flutter pub get
   flutter run
   ```
3. The app should open with a green check and the message
   "Your setup is ready for the interview."
4. Reply to confirm it worked, or send us any errors you hit.

Keep the downloaded packages on your machine. The interview exercise uses the same ones,
so it will run without internet on the day.
