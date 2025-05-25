project "FastGLTF"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "on"

    targetdir "../Binaries/%{cfg.buildcfg}"
    objdir "../Intermediate/%{cfg.buildcfg}"

    files {
        "src/**.cpp",
        "src/**.ixx",
        "include/**.hpp",
        "deps/simdjson.h",
        "deps/simdjson.cpp"
    }

    includedirs {
        "",
        "include/",
        "deps/",
        
    }


    
    filter "system:windows"
        defines {"PLATFORM_WINDOWS"}
    
    filter "configurations:Debug"
        symbols "on"
    
    
    filter "configurations:Release"
        optimize "on"

    
    filter "configurations:Dev"
        optimize "on"
