if (NOT OpenMP_CXX_FOUND)
    find_package(OpenMP)
endif ()

function(setup_omp_target target)
    if (OpenMP_CXX_FOUND)
        target_link_libraries(${target} PUBLIC OpenMP::OpenMP_CXX)
    else ()
        message(WARNING "OpenMP not found, ${target} will not be built with OpenMP support")
    endif ()
endfunction()