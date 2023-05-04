# An application
A C++ project template of mine, tuned for script-based generation

## Getting started
*Depedencies: Git and CMake*

Clone the repo and enter in it
```shell
git clone https://github.com/mntcloud/an-application your_app_name --depth 1
cd your_app_name
```
Now generate your project and gracefully delete `bootstrap.cmake` script
```
cmake -DAPP_NAME="your_app_name" -P bootstrap.cmake
rm bootstrap.cmake
```
You're setuped and ready to go

## Credits
- [ModernCppStarter](https://github.com/TheLartians/ModernCppStarter) - for serving influence material for this template
