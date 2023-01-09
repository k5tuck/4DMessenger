project "Messenger"

	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",
	}

	includedirs
	{
		"%{wks.location}/Star/src",
		"%{IncludeDir.spdlog}",
		"%{IncludeDir.ImGui}",
		"%{IncludeDir.GLFW}",
		"%{IncludeDir.VulkanSDK}",
		"%{IncludeDir.filewatcher}"
	}

	prebuildcommands { "{COPY} %{cfg.buildtarget.directory}../Star/Star.lib %{cfg.buildtarget.directory}" }

	links
	{
		"Star"
	}

	filter "system:windows"
		systemversion "latest"
		
		defines 
		{
			-- "SM_WINDOWS",
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

	filter "configurations:PreRelease"
		defines "SM_PRERELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Release"
		defines "SM_RELEASE"
		runtime "Release"
		optimize "on"
