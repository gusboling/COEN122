@echo off
set xv_path=C:\\Apps\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 6ee424ad5b504713a8a9d1eb4b14c01e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_section1_behav xil_defaultlib.test_section1 xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
