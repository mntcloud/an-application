# ConfigureEverything is a small includable script that 
# configures everything with variables you set

file(GLOB_RECURSE templates "${CONFIGURE_FOLDER}/*.in")

foreach(template_path ${templates})
    cmake_path(REMOVE_EXTENSION template_path LAST_ONLY OUTPUT_VARIABLE file_path)
    configure_file(${template_path} ${file_path} @ONLY)
    file(REMOVE ${template_path})
endforeach()