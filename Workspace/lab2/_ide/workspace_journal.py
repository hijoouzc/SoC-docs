# 2025-10-01T11:17:40.969645900
import vitis

client = vitis.create_client()
client.set_workspace(path="lab2")

platform = client.create_platform_component(name = "lab2_platform",hw_design = "$COMPONENT_LOCATION/../../../labs/lab_2/system_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="lab2_platform")
status = platform.build()

comp = client.create_app_component(name="lab2",platform = "$COMPONENT_LOCATION/../lab2_platform/export/lab2_platform/lab2_platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "empty_application")

comp = client.get_component(name="lab2")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../SoC/workshops/sources/lab2", files=["lab2.c"], dest_dir_in_cmp = "src")

status = platform.build()

status = platform.build()

comp = client.get_component(name="lab2")
comp.build()

domain = platform.get_domain(name="zynq_fsbl")

status = domain.regenerate()

domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.regenerate()

status = platform.build()

comp.build()

vitis.dispose()

