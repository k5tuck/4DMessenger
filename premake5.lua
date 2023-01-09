include "resources/vendor/premake/customizations/dependencies.lua"

workspace "StarMessenger"
	architecture "x64"
	startproject "Messenger"
	
	configurations { "Debug", "PreRelease", "Release" }

	flags { "MultiProcessorCompile" }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Dependencies"
	include "Star/vendor/glad"
	include "Star/vendor/glfw"
	include "Star/vendor/imgui"
	-- include "Star/vendor/yaml-cpp"
group ""

group "BCI_Library"
	include "Kratos"
group ""

group "Linker_Engine"
	include "Star"
group ""

group "Application"
	include "Messenger"
group ""
