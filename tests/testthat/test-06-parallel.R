context("Parallel tests")

# =================================================================================================
# run all tests with a parallel backend
# =================================================================================================

chk <- Sys.getenv("_R_CHECK_LIMIT_CORES_", "")

if (nzchar(chk) && chk == "TRUE") {
    ## use 2 cores in CHECK/Travis/AppVeyor
    num_workers <- 2L
} else {
    ## use all cores in devtools::test()
    num_workers <- parallel::detectCores()
}

## see https://github.com/hadley/testthat/issues/129
Sys.setenv("R_TESTS" = "")

test_that("Parallel computation gives the same results as sequential", {
    skip_on_cran()

    if (getOption("skip_par_tests", FALSE))
        skip("Parallel tests disabled explicitly.")

    cat("with", num_workers, "workers\n")

    require(doParallel)

    cl <- makeCluster(num_workers)
    invisible(clusterEvalQ(cl, library(dtwclust)))
    registerDoParallel(cl)

    ## Filter excludes files that have "parallel" in them, otherwise it would be recursive
    test_dir("./", filter = "parallel", invert = TRUE)

    stopCluster(cl)
    stopImplicitCluster()
    registerDoSEQ()

    rm(cl)
})

test_that("Parallel FORK computation gives the same results as sequential", {
    skip_on_cran()
    skip_on_travis()
    skip_on_os("windows")

    if (getOption("skip_par_tests", FALSE))
        skip("Parallel tests disabled explicitly.")

    ## Also test FORK in Linux
    cat("Test FORKs:\n")

    cl <- makeCluster(num_workers - 1L, "FORK")
    registerDoParallel(cl)

    ## Filter excludes files that have "parallel" in them, otherwise it would be recursive
    test_dir("./", filter = "parallel", invert = TRUE)

    stopCluster(cl)
    stopImplicitCluster()
    registerDoSEQ()
})
