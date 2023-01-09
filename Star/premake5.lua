project "Star"

	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	pchheader "starpch.h"
	pchsource "src/starpch.cpp"

	files
	{
		"src/**.h",
		"src/**.cpp",
		"vendor/stb_image/**.h",
		"vendor/stb_image/**.cpp",

		"vendor/glm/glm/**.hpp",
		
		-- "vendor/glm/glm/**.inl",
		-- "vendor/ImGuizmo/ImGuizmo.h",
		-- "vendor/ImGuizmo/ImGuizmo.cpp"
	}

	defines
	{
		-- "_CRT_SECURE_NO_WARNINGS",
		-- "GLFW_INCLUDE_NONE"

	}

	includedirs
	{
		"src/",
		"%{IncludeDir.spdlog}",
		"%{IncludeDir.filewatcher}",
		"%{IncludeDir.GLFW}",
		"%{IncludeDir.Glad}",
		"%{IncludeDir.glm}",
		"%{IncludeDir.ImGui}",
		"%{IncludeDir.stb_image}",
		
		-- "%{IncludeDir.yaml_cpp}",

		-- "%{IncludeDir.VulkanSDK}",
		-- "%{IncludeDir.ImGuizmo}",
	}

	links
	{
		-- "BCI",
		"Glad",
		"GLFW",
		"ImGui",
		"opengl32.lib",
		-- "yaml-cpp",
	
		-- "%{Library.Vulkan}",
		-- "%{Library.VulkanUtils}",
	}

	filter "system:windows"
		systemversion "latest"

		defines
		{
			"SM_WINDOWS",
		}

		links
		{
			"%{Library.WinSock}",
			"%{Library.WinMM}",
			"%{Library.WinVersion}",
			"%{Library.BCrypt}",
		}

	-- filter "system:linux"
	-- 	systemversion "latest"
	-- 	pic "On"

	-- 	defines 
	-- 	{
	-- 		"SM_LINUX",
	-- 	}

	filter "configurations:Debug"
		defines "SM_DEBUG"
		runtime "Debug"
		symbols "on"

		-- links
		-- {
		-- 	"%{Library.ShaderC_Debug}",
		-- 	"%{Library.SPIRV_Cross_Debug}",
		-- 	"%{Library.SPIRV_Cross_GLSL_Debug}"
		-- }

	filter "configurations:PreRelease"
		defines "SM_PRERELEASE"
		runtime "Release"
		optimize "on"
	
		-- links
		-- {
		-- 	"%{Library.ShaderC_Release}",
		-- 	"%{Library.SPIRV_Cross_Release}",
		-- 	"%{Library.SPIRV_Cross_GLSL_Release}"
		-- }

	filter "configurations:Release"
		defines "SM_RELEASE"
		runtime "Release"
		optimize "on"

		-- links
		-- {
		-- 	"%{Library.ShaderC_Release}",
		-- 	"%{Library.SPIRV_Cross_Release}",
		-- 	"%{Library.SPIRV_Cross_GLSL_Release}"
		-- }
