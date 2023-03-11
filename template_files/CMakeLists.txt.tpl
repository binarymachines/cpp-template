cmake_minimum_required(VERSION 3.15)

project({{project_name}} VERSION {{project_version}} DESCRIPTION "{{description}}" LANGUAGES CXX)

{% for pkg in dependencies %}
find_package({{pkg}} REQUIRED)
{% endfor %}
add_executable({{exe_name}} {{mainfile}})

target_include_directories({{project_name}} PUBLIC include PRIVATE src)

target_link_libraries({{project_name}} ${CONAN_LIBS})
