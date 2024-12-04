cmake_minimum_required(VERSION 3.22)
project(DonutCarMonitor)


include_directories(
    ${CMAKE_CURRENT_LIST_DIR}/src

)

find_package(Qt6 COMPONENTS
    Core
    Qml
    Quick 
    Quick3D
    Quick3DHelpers
    Quick3DEffects
    Quick3DParticles REQUIRED
)


set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
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
file(GLOB ${PROJECT_NAME}_QML_DIR  ${CMAKE_CURRENT_LIST_DIR}/src/qmldir)

source_group("qrc"                              FILES  ${${PROJECT_NAME}_QRC_FILES} ${${PROJECT_NAME}_QML_DIR})
source_group("qrc//qml"                         FILES  ${${PROJECT_NAME}_QML_FILES})
source_group("src"                              FILES  ${${PROJECT_NAME}_HEADERS} ${${PROJECT_NAME}_SOURCES})



add_executable(${PROJECT_NAME}
    ${${PROJECT_NAME}_HEADERS}
    ${${PROJECT_NAME}_SOURCES}

    ${${PROJECT_NAME}_QRC_FILES}
    ${${PROJECT_NAME}_QML_FILES}
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


qt_add_qml_module(
    ${PROJECT_NAME}
    VERSION 1.0
    URI Donut.DonutCarMonitor
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

