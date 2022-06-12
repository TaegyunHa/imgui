project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    pchheader "stdafx.h"
    pchsource "%{prj.name}/src/stdafx.cpp"

    files
    {
        "imconfig.h"
        "imgui.h"
        "imgui.cpp"
        "imgui_draw.cpp"
        "imgui_internal.h"
        "imgui_widgets.cpp"
        "imstb_rectpack.h"
        "imstb_textedit.h"
        "imstb_truetype.h"
        "imgui_demo.cpp"
    }

    filter "system:windows"
        cppdialect "C++17"
        staticruntime "On"
        systemversion "latest"

    filter {"system:windows", "configurations:Release"}
        buildoptions "/MT"
