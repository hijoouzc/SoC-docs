# 2025-09-29T22:55:58.998283
import vitis

client = vitis.create_client()
client.set_workspace(path="Workspace")

vitis.dispose()

platform = client.get_component(name="lab1_platform")
domain = platform.get_domain(name="zynq_fsbl")

status = domain.regenerate()

vitis.dispose()

