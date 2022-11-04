// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// compute_distance_matrix_cpp
NumericMatrix compute_distance_matrix_cpp(NumericMatrix X);
RcppExport SEXP _GreedyExperimentalDesign_compute_distance_matrix_cpp(SEXP XSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericMatrix >::type X(XSEXP);
    rcpp_result_gen = Rcpp::wrap(compute_distance_matrix_cpp(X));
    return rcpp_result_gen;
END_RCPP
}
// compute_avg_abs_rijss_left
NumericVector compute_avg_abs_rijss_left(NumericMatrix Rij);
RcppExport SEXP _GreedyExperimentalDesign_compute_avg_abs_rijss_left(SEXP RijSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericMatrix >::type Rij(RijSEXP);
    rcpp_result_gen = Rcpp::wrap(compute_avg_abs_rijss_left(Rij));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_GreedyExperimentalDesign_compute_distance_matrix_cpp", (DL_FUNC) &_GreedyExperimentalDesign_compute_distance_matrix_cpp, 1},
    {"_GreedyExperimentalDesign_compute_avg_abs_rijss_left", (DL_FUNC) &_GreedyExperimentalDesign_compute_avg_abs_rijss_left, 1},
    {NULL, NULL, 0}
};

RcppExport void R_init_GreedyExperimentalDesign(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
