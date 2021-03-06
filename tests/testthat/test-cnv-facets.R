context("FACETS tsv")

facets <- system.file("extdata", "HCC2218_facets_cncf.tsv", package = "pebbles")
cn_facets <- prep_facets_seg(facets)
cn_facets2 <- read_cnv(facets)
tab_chrom <- table(cn_facets$cnv$chrom)

test_that("object is of cnv class", {
  expect_equal(class(cn_facets), "cnv")
  expect_equal(class(cn_facets2), "cnv")
})

test_that("chrom 23 is X", {
  expect_true("X" %in% names(tab_chrom))
  expect_false("23" %in% names(tab_chrom))
})

