package com.practice.webapp.dao;
import com.practice.webapp.entity.ASTscore;
import com.practice.webapp.entity.Admin;
import com.practice.webapp.entity.ELscore;
import com.practice.webapp.entity.Examinee;
import com.practice.webapp.entity.GSATscore;

import java.util.List;
public interface AdminDAO {
    
	public List<Examinee> getList(String sql);
	public List<Examinee> getAllExamineeList();
	public List<GSATscore> getGSATList();
	public List<ELscore> getELList();
	public List<ASTscore> getASTList();
	public Examinee get(Examinee examinee);
	public GSATscore get(GSATscore GSATscore);
	public ASTscore get(ASTscore ASTscore);
	
	
	
	public void GSATallocate(GSATscore GSATscore);
	public ELscore get(ELscore eLscore);
	public void ELallocate(ELscore eLscore);
	public void ASTallocate(ASTscore ASTscore);
	public void getSubject();
	
}
