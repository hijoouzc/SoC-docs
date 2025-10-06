# 2025-09-25T23:24:37.629459400
import vitis

client = vitis.create_client()
client.set_workspace(path="Workspace")

platform = client.get_component(name="lab1_platform")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

vitis.dispose()

