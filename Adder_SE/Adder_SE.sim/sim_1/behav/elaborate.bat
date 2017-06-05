@echo off
set xv_path=C:\\Apps\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto dd79f47da6914ca3938db17810cfa180 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot testbench_behav xil_defaultlib.testbench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
