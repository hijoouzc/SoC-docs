# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\EDABK\Workspace\lab2\lab2_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\EDABK\Workspace\lab2\lab2_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {lab2_platform}\
-hw {E:\EDABK\labs\lab_2\system_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {E:/EDABK/Workspace/lab2}

platform write
platform generate -domains 
platform active {lab2_platform}
platform generate
platform clean
platform generate
platform active {lab2_platform}
