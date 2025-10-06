# 2025-09-24T21:58:57.010084200
import vitis

client = vitis.create_client()
client.set_workspace(path="Workspace")

platform = client.create_platform_component(name = "lab1_platform",hw_design = "$COMPONENT_LOCATION/../examples/lab1/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="lab1_platform")
status = platform.build()

status = platform.update_desc(desc="")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../export/lab1_platform/lab1_platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

client.delete_component(name="lab1_platform")

platform = client.create_platform_component(name = "lab1_platform",hw_design = "$COMPONENT_LOCATION/../examples/lab1/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../lab1_platform/export/lab1_platform/lab1_platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

client.delete_component(name="hello_world")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../lab1_platform/export/lab1_platform/lab1_platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="hello_world")

vitis.dispose()

