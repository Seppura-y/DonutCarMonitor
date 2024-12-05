cmake_minimum_required(VERSION 3.22)
project(DonutCarMonitor)


include_directories(
    ${CMAKE_CURRENT_LIST_DIR}/src

)

find_package(Qt6 6.6 REQUIRED COMPONENTS
    Core
    Qml
    Quick 
    Quick3D
    Quick3DHelpers
    Quick3DEffects
    Quick3DParticles REQUIRED
)


set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

if(MINGW)
    set(PROJECT_TOOLCHAIN "mingw")
endif()
if(MSVC)
    set(PROJECT_TOOLCHAIN "msvc")
endif()

file(GLOB ${PROJECT_NAME}_HEADERS ${CMAKE_CURRENT_LIST_DIR}/src/*.h)
file(GLOB ${PROJECT_NAME}_SOURCES ${CMAKE_CURRENT_LIST_DIR}/src/*.cpp)
file(GLOB ${PROJECT_NAME}_QRC_FILES ${CMAKE_CURRENT_LIST_DIR}/src/*.qrc)
file(GLOB ${PROJECT_NAME}_QML_FILES  ${CMAKE_CURRENT_LIST_DIR}/src/*.qml ${CMAKE_CURRENT_LIST_DIR}/src/*.js)

file(GLOB ${PROJECT_NAME}_HMI_FILES  ${CMAKE_CURRENT_LIST_DIR}/src/hmi/*.qml ${CMAKE_CURRENT_LIST_DIR}/src/hmi/*.js)
file(GLOB ${PROJECT_NAME}_HMI_QRC_FILES  ${CMAKE_CURRENT_LIST_DIR}/src/hmi/*.qrc)

file(GLOB ${PROJECT_NAME}_COMPONENTS_FILES  ${CMAKE_CURRENT_LIST_DIR}/src/components/*.qml ${CMAKE_CURRENT_LIST_DIR}/src/components/*.js)
file(GLOB ${PROJECT_NAME}_COMPONENTS_QRC_FILES  ${CMAKE_CURRENT_LIST_DIR}/src/components/*.qrc)


file(GLOB ${PROJECT_NAME}_QML_DIR  ${CMAKE_CURRENT_LIST_DIR}/src/qmldir)

source_group("qrc"                              FILES  ${${PROJECT_NAME}_QRC_FILES} ${${PROJECT_NAME}_QML_DIR})
source_group("qrc//qml"                         FILES  ${${PROJECT_NAME}_QML_FILES})

source_group("qrc//qml//hmi"                    FILES  ${${PROJECT_NAME}_HMI_FILES})

source_group("qrc//qml//components"             FILES  ${${PROJECT_NAME}_COMPONENTS_FILES})

source_group("src"                              FILES  ${${PROJECT_NAME}_HEADERS} ${${PROJECT_NAME}_SOURCES})



add_executable(${PROJECT_NAME}
    ${${PROJECT_NAME}_HEADERS}
    ${${PROJECT_NAME}_SOURCES}

    ${${PROJECT_NAME}_QRC_FILES}
    ${${PROJECT_NAME}_QML_FILES}

    ${${PROJECT_NAME}_HMI_FILES}
    ${${PROJECT_NAME}_HMI_QRC_FILES}

    ${${PROJECT_NAME}_COMPONENTS_FILES}
    ${${PROJECT_NAME}_COMPONENTS_QRC_FILES}

    ${${PROJECT_NAME}_QML_DIR}

)

if( MSVC )
    SET( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /SUBSYSTEM:CONSOLE /ENTRY:mainCRTStartup" )

    set_target_properties(${PROJECT_NAME} PROPERTIES
        VS_DEBUGGER_WORKING_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/bin"
    )
endif()


set_source_files_properties(${CMAKE_CURRENT_LIST_DIR}/src/SkinColor.qml PROPERTIES
    QT_QML_SINGLETON_TYPE TRUE
)

# 为文件批量设置相对路径别名（相对于资源系统）
foreach(hmi_file ${${PROJECT_NAME}_HMI_FILES})
    
    file(RELATIVE_PATH                  # CMake 的文件路径工具，用于将一个绝对路径转换为相对于指定目录的路径。
        relative_hmi_file               # 输出变量，存储计算出的相对路径。
        ${CMAKE_CURRENT_LIST_DIR}/src   # 基准目录，表示相对路径的起点。
        ${hmi_file}                     # 当前循环的绝对路径文件。
    )
    # set_source_files_properties: CMake 用于设置源文件属性的命令。
    set_source_files_properties(
        ${hmi_file}
        PROPERTIES QT_RESOURCE_ALIAS    # 设置此文件的 QT_RESOURCE_ALIAS 属性，表示它在 Qt 资源系统中的路径别名。
        "hmi/${relative_hmi_file}"      # 设置的路径别名: hmi/ 前缀加上文件的相对路径。
    )
endforeach()

# 为文件批量设置相对路径别名（相对于资源系统）
foreach(components_file ${${PROJECT_NAME}_COMPONENTS_FILES})
    
    file(RELATIVE_PATH                  # CMake 的文件路径工具，用于将一个绝对路径转换为相对于指定目录的路径。
        relative_components_file               # 输出变量，存储计算出的相对路径。
        ${CMAKE_CURRENT_LIST_DIR}/src   # 基准目录，表示相对路径的起点。
        ${components_file}                     # 当前循环的绝对路径文件。
    )
    # set_source_files_properties: CMake 用于设置源文件属性的命令。
    set_source_files_properties(
        ${components_file}
        PROPERTIES QT_RESOURCE_ALIAS    # 设置此文件的 QT_RESOURCE_ALIAS 属性，表示它在 Qt 资源系统中的路径别名。
        "components/${relative_components_file}"      # 设置的路径别名: hmi/ 前缀加上文件的相对路径。
    )
endforeach()

qt_add_qml_module(
    ${PROJECT_NAME}
    VERSION 1.0

    URI 
        Donut.DonutCarMonitor

        #这里添加QML_FILES时，必须使用相对路径，否则编译会报错
    QML_FILES
        ${${PROJECT_NAME}_HMI_FILES}
        ${${PROJECT_NAME}_COMPONENTS_FILES}

    SOURCES
        ${${PROJECT_NAME}_HEADERS} ${${PROJECT_NAME}_SOURCES}
)



set(QML_IMPORT_PATH ${CMAKE_BINARY_DIR})

target_link_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/lib
)

target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/include/
    ${CMAKE_PREFIX_PATH}/lib/cmake/
)

message(${CMAKE_PREFIX_PATH})

target_compile_definitions(${PROJECT_NAME} PRIVATE
    __STDC_CONSTANT_MACROS
)

target_compile_features(${PROJECT_NAME} PRIVATE
    cxx_std_17
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
    Qt6::Core
    Qt6::Qml
    Qt6::Gui
    Qt6::Network
    Qt6::OpenGL
    Qt6::Quick
    Qt6::Quick3D
    Qt6::Quick3DHelpers
    Qt6::Quick3DEffects
    Qt6::Quick3DParticles
    #Qt6::Quick3DHelpersImpl
)

set(RUNTIME "${CMAKE_CURRENT_LIST_DIR}/bin/${PROJECT_TOOLCHAIN}")
set_target_properties(${PROJECT_NAME}
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${RUNTIME}
    RUNTIME_OUTPUT_DIRECTORY_DEBUG ${RUNTIME}
    RUNTIME_OUTPUT_DIRECTORY_RELEASE ${RUNTIME}
)

# 设置QML模块的目录和版本信息
#set_target_properties(${PROJECT_NAME} PROPERTIES
#    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
#    LIBRARY_OUTPUT_NAME ${PROJECT_NAME}
#
#    RUNTIME_OUTPUT_DIRECTORY ${RUNTIME}
#    RUNTIME_OUTPUT_DIRECTORY_DEBUG ${RUNTIME}
#    RUNTIME_OUTPUT_DIRECTORY_RELEASE ${RUNTIME}
#
#    AUTOMOC ON
#    AUTORCC ON
#    AUTOUIC OFF
#)
