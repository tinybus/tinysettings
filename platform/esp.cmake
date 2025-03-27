cmake_minimum_required(VERSION 3.20)

idf_component_register(PRIV_REQUIRES nvs_flash esp_partition)

tiny_library_named(tinysettings)
tiny_library_include_directories_public(${PROJECT_DIR}/include)
tiny_library_link_libraries(tiny)
tiny_library_link_libraries(__idf_nvs_flash)
add_subdirectory(${PROJECT_DIR}/src)

target_link_libraries(${COMPONENT_LIB} INTERFACE tinysettings)
