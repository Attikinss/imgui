project "DearImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir ("%{wks.location}/bin/" .. output_directory .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. output_directory .. "/%{prj.name}")

    files {
        -- Inlcude all .cpp and .h files in root folder only
        "*.h",
        "*.cpp"
    }

    filter "system:windows"
		systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"