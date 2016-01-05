package com.practice.webapp.dao;
import com.practice.webapp.entity.Examinee;
import com.practice.webapp.entity.TestRoom;

public interface ApplyDAO {
    public void newGSATscore(Examinee examinee);
    public int getGSATscore(Examinee examinee);
	public void applyGSAT(Examinee examinee);
	public void newASTscore(Examinee examinee);
    public int getASTscore(Examinee examinee);
	public void applyAST(Examinee examinee);
	public void newELscore(Examinee examinee);
	public int getELscore(Examinee examinee);
	public void applyEL(Examinee examinee);
}
