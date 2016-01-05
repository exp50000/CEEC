package com.practice.webapp.dao;

import com.practice.webapp.entity.Examinee;
import com.practice.webapp.entity.TestRoom;
import com.practice.webapp.entity.GSATscore;
import com.practice.webapp.entity.ASTscore;
import com.practice.webapp.entity.ELscore;

public interface QueryDAO {
    //testroom
	public Examinee GSATtestRoomQuery(Examinee examinee);
	public Examinee ASTtestRoomQuery(Examinee examinee);
	public Examinee ELtestRoomQuery(Examinee examinee);
	public TestRoom testRoomSetup(TestRoom testroom);
	//testnumber
	public int GSATtestnumberQuery(Examinee examinee);
	public int ELtestnumberQuery(Examinee examinee);
	public int ASTtestnumberQuery(Examinee examinee);
	
	
	//score
	public Examinee GSATScoreQuery(Examinee examinee);
	public GSATscore GSATScoreSetup(GSATscore gsatscore);
	
	public Examinee ELScoreQuery(Examinee examinee);
	public ELscore ELScoreSetup(ELscore elscore);
	
	public Examinee ASTScoreQuery(Examinee examinee);
	public ASTscore ASTScoreSetup(ASTscore astscore);
	
	
	//others
	public boolean ifExist(Examinee examinee);
	
}
