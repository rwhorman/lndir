function(check_cxx_std_filesystem_exists)
    try_compile(SUPPORT_STD_FILESYTEM ${CMAKE_BINARY_DIR} ${CMAKE_SOURCE_DIR}/src/build_checks/std_filesystem.cpp LINK_LIBRARIES stdc++fs CXX_STANDARD 17)
    if (SUPPORT_STD_FILESYTEM)
        message(STATUS "Compiler supports std::filesystem")
    elseif (NOT SUPPORT_STD_FILESYTEM)
        message(FATAL_ERROR "Compiler does not support std::filesystem")
    endif(SUPPORT_STD_FILESYTEM)
endfunction(check_cxx_std_filesystem_exists)