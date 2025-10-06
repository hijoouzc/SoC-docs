# 2025-10-01T10:52:49.080327100
import vitis

client = vitis.create_client()
client.set_workspace(path="Workspace")

proj = client.create_sys_project(name="lab2_system", platform="$COMPONENT_LOCATION/../../labs/lab_2/system_wrapper.xsa", template="empty_accelerated_application")

proj = client.create_sys_project(name="lab2_system", platform="$COMPONENT_LOCATION/../../labs/lab_2/system_wrapper.xsa", template="empty_accelerated_application")

platform = client.get_component(name="lab1_platform")
status = platform.build()

proj = client.create_sys_project(name="lab2", platform="$COMPONENT_LOCATION/../../labs/lab_2/system_wrapper.xsa", template="empty_accelerated_application")

proj = client.create_sys_project(name="lab2", platform="$COMPONENT_LOCATION/../../labs/lab_2/system_wrapper.xsa", template="empty_accelerated_application")

platform = client.get_component(name="lab2_platform")
status = platform.build()

status = platform.build()

vitis.dispose()

