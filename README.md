# A project
A C++ project template of mine, tuned for script-based generation

with [CPM](https://github.com/cpm-cmake/CPM.cmake) dependency management and testing using [doctest](https://github.com/doctest/doctest)

## Getting started
*Depedencies: Git and CMake*

Clone this repository and enter into the directory
```shell
# to choose template, see branches of this repository
git clone https://github.com/mntcloud/a-project your_app_name --depth 1 -b template/app
cd your_app_name
```
Next, generate your project 
```shell
cmake -P bootstrap.cmake
```
`bootstrap.cmake` will take your project root folder name and will scaffold a project

Then gracefully delete `bootstrap.cmake` script
```shell
rm bootstrap.cmake
```
Now, you're setup and ready to go

## Credits
- [ModernCppStarter](https://github.com/TheLartians/ModernCppStarter) - for serving as an influence material for this template
