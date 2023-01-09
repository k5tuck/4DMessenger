--  Dependencies

VULKAN_SDK = os.getenv("VULKAN_SDK")

IncludeDir = {}
IncludeDir["stb_image"] = "%{wks.location}/Star/vendor/stb_image"
IncludeDir["spdlog"] = "%{wks.location}/Star/vendor/spdlog/include"
IncludeDir["yaml_cpp"] = "%{wks.location}/Star/vendor/yaml-cpp/include"
IncludeDir["filewatcher"] = "%{wks.location}/Star/vendor/filewatcher"
IncludeDir["GLFW"] = "%{wks.location}/Star/vendor/glfw/include"
IncludeDir["ImGui"] = "%{wks.location}/Star/vendor/imgui"
IncludeDir["glm"] = "%{wks.location}/Star/vendor/glm"
IncludeDir["Glad"] = "%{wks.location}/Star/vendor/glad/include"

-- IncludeDir["VulkanSDK"] = "%{VULKAN_SDK}/Include"
-- IncludeDir["ImGuizmo"] = "%{wks.location}/Star/vendor/ImGuizmo"
-- IncludeDir["shaderc"] = "%{wks.location}/Star/vendor/shaderc/include"
-- IncludeDir["SPIRV_Cross"] = "%{wks.location}/Star/vendor/SPIRV-Cross"

LibraryDir = {}
LibraryDir["VulkanSDK"] = "%{VULKAN_SDK}/Lib"

Library = {}

Library["Vulkan"] = "%{LibraryDir.VulkanSDK}/vulkan-1.lib"
Library["VulkanUtils"] = "%{LibraryDir.VulkanSDK}/VkLayer_utils.lib"

-- Library["ShaderC_Debug"] = "%{LibraryDir.VulkanSDK}/shaderc_sharedd.lib"
-- Library["SPIRV_Cross_Debug"] = "%{LibraryDir.VulkanSDK}/spirv-cross-cored.lib"
-- Library["SPIRV_Cross_GLSL_Debug"] = "%{LibraryDir.VulkanSDK}/spirv-cross-glsld.lib"
-- Library["SPIRV_Tools_Debug"] = "%{LibraryDir.VulkanSDK}/SPIRV-Toolsd.lib"

-- Library["ShaderC_Release"] = "%{LibraryDir.VulkanSDK}/shaderc_shared.lib"
-- Library["SPIRV_Cross_Release"] = "%{LibraryDir.VulkanSDK}/spirv-cross-core.lib"
-- Library["SPIRV_Cross_GLSL_Release"] = "%{LibraryDir.VulkanSDK}/spirv-cross-glsl.lib"

-- Windows
Library["WinSock"] = "Ws2_32.lib"
Library["WinMM"] = "Winmm.lib"
Library["WinVersion"] = "Version.lib"
Library["BCrypt"] = "Bcrypt.lib"

-- MacOS

-- Linux
