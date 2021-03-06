package com.mycompany.loanplan.loan.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.loanplan.loan.model.dao.RecommendLoanCharterDao;
import com.mycompany.loanplan.loan.model.vo.RecommendLoanCharter;

@Service("recommendLoanCharterService")
public class RecommendLoanCharterServiceImpl implements RecommendLoanCharterService {
	
	@Autowired
	private RecommendLoanCharterDao recommendLoanCharterDao;
	
	@Override
	public int loanCount() {
		return recommendLoanCharterDao.loanCount();
	}
	
	@Override
	public RecommendLoanCharter recommendLoanCharterDt(int rlchnum) {
		return recommendLoanCharterDao.recommendLoanCharterDt(rlchnum);
	}
	
//	@Override
//	public List<RecommendLoanCharter> listLoanCharter() {
//		return recommendLoanCharterDao.listLoanCharter();
//	}
	
	@Override
	public List<RecommendLoanCharter> selectList(int startPage, int limit) {
		return recommendLoanCharterDao.selectList(startPage, limit);
	}
	
	
}
