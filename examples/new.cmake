if (NOT DEFINED EXAMPLE_NAME)
    message(FATAL_ERROR "Define name of a example to continue! -DEXAMPLE_NAME='some_name'")
endif()

# NOTE: It should be run from examples folder
file(COPY "_template_" DESTINATION ${EXAMPLE_NAME})

# YOUR VARIABLES
# NOTE: in your template files use @YOUR_VARIABLE@ format

set(CONFIGURE_FOLDER ${EXAMPLE_NAME})

# START GENERATING 

include(../tooling/ConfigureEverything.cmake)