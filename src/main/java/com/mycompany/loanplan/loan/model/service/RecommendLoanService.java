package com.mycompany.loanplan.loan.model.service;

import java.util.List;

import com.mycompany.loanplan.loan.model.vo.RecommendLoan;

public interface RecommendLoanService {

	public List<RecommendLoan> getRecommendLoansList(RecommendLoan vo) throws Exception;
}
