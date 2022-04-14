# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2021.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2021.3.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\01_hello_world_form_gpu.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles\01_hello_world_form_gpu.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\01_hello_world_form_gpu.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\01_hello_world_form_gpu.dir\flags.make

CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj: CMakeFiles\01_hello_world_form_gpu.dir\flags.make
CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj: ..\main.cu
CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj: CMakeFiles\01_hello_world_form_gpu.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/01_hello_world_form_gpu.dir/main.cu.obj"
	C:\PROGRA~1\NVIDIA~2\CUDA\v11.6\bin\nvcc.exe -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj -MF CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj.d -x cu -dc F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\main.cu -o CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj -Xcompiler=-FdCMakeFiles\01_hello_world_form_gpu.dir\,-FS

CMakeFiles\01_hello_world_form_gpu.dir\main.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/01_hello_world_form_gpu.dir/main.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles\01_hello_world_form_gpu.dir\main.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/01_hello_world_form_gpu.dir/main.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target 01_hello_world_form_gpu
01_hello_world_form_gpu_OBJECTS = \
"CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj"

# External object files for target 01_hello_world_form_gpu
01_hello_world_form_gpu_EXTERNAL_OBJECTS =

CMakeFiles\01_hello_world_form_gpu.dir\cmake_device_link.obj: CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj
CMakeFiles\01_hello_world_form_gpu.dir\cmake_device_link.obj: CMakeFiles\01_hello_world_form_gpu.dir\build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA device code CMakeFiles\01_hello_world_form_gpu.dir\cmake_device_link.obj"
	C:\PROGRA~1\NVIDIA~2\CUDA\v11.6\bin\nvcc.exe -forward-unknown-to-host-compiler -D_WINDOWS -Xcompiler=" /EHsc" -Xcompiler="-Zi -Ob0 -Od /RTC1" --generate-code=arch=compute_52,code=[compute_52,sm_52] -Xcompiler=-MDd -Wno-deprecated-gpu-targets -shared -dlink $(01_hello_world_form_gpu_OBJECTS) $(01_hello_world_form_gpu_EXTERNAL_OBJECTS) -o CMakeFiles\01_hello_world_form_gpu.dir\cmake_device_link.obj  cudadevrt.lib cudart_static.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib  -Xcompiler=-FdF:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\cmake-build-debug\CMakeFiles\01_hello_world_form_gpu.dir\,-FS

# Rule to build all files generated by this target.
CMakeFiles\01_hello_world_form_gpu.dir\build: CMakeFiles\01_hello_world_form_gpu.dir\cmake_device_link.obj
.PHONY : CMakeFiles\01_hello_world_form_gpu.dir\build

# Object files for target 01_hello_world_form_gpu
01_hello_world_form_gpu_OBJECTS = \
"CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj"

# External object files for target 01_hello_world_form_gpu
01_hello_world_form_gpu_EXTERNAL_OBJECTS =

01_hello_world_form_gpu.exe: CMakeFiles\01_hello_world_form_gpu.dir\main.cu.obj
01_hello_world_form_gpu.exe: CMakeFiles\01_hello_world_form_gpu.dir\build.make
01_hello_world_form_gpu.exe: CMakeFiles\01_hello_world_form_gpu.dir\cmake_device_link.obj
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CUDA executable 01_hello_world_form_gpu.exe"
	"D:\CLion 2021.3.4\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\01_hello_world_form_gpu.dir --rc="D:\Windows Kits\10\bin\10.0.22000.0\x64\rc.exe" --mt="D:\Windows Kits\10\bin\10.0.22000.0\x64\mt.exe" --manifests -- C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\link.exe /nologo $(01_hello_world_form_gpu_OBJECTS) $(01_hello_world_form_gpu_EXTERNAL_OBJECTS) CMakeFiles\01_hello_world_form_gpu.dir\cmake_device_link.obj @<<
 /out:01_hello_world_form_gpu.exe /implib:01_hello_world_form_gpu.lib /pdb:F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\cmake-build-debug\01_hello_world_form_gpu.pdb /version:0.0 /debug /INCREMENTAL  cudadevrt.lib cudart_static.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib  -LIBPATH:"C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.6/lib/x64" 
<<

# Rule to build all files generated by this target.
CMakeFiles\01_hello_world_form_gpu.dir\build: 01_hello_world_form_gpu.exe
.PHONY : CMakeFiles\01_hello_world_form_gpu.dir\build

CMakeFiles\01_hello_world_form_gpu.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\01_hello_world_form_gpu.dir\cmake_clean.cmake
.PHONY : CMakeFiles\01_hello_world_form_gpu.dir\clean

CMakeFiles\01_hello_world_form_gpu.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\cmake-build-debug F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\cmake-build-debug F:\CudaCodeRepo\cuda_study\01_hello_world_from_gpu\cmake-build-debug\CMakeFiles\01_hello_world_form_gpu.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\01_hello_world_form_gpu.dir\depend
