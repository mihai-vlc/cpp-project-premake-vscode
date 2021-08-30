# Example C++ project setup with premake + MSYS2 + VSCode

This is an example project that explores the setup needed  to compile a C++ 
application in VSCode on windows with MSYS2 as the build platform.


## Setup steps
1. Install https://www.msys2.org/
2. In the MSYS cmd install the build tools
    ```
    pacman -S base-devel mingw-w64-x86_64-toolchain make
    ```
3. Add the msys64\usr\bin to the system PATH
4. The makefiles can be updated using premake5 https://premake.github.io/
    ```
        tools/premake5.exe gmake2
    ```
5. Update the .vscode/launch.json to match the project path.
    At the moment, we have to specify the full full path in this file.
6. Ctrl + Shift + B will build the project (run make)
7. F5 will build + run the project in debug mode



If you are looking for a setup that uses MSBuild the following tool can be used: https://github.com/shoxsz/proj-maker-cpp-vscode-premake
