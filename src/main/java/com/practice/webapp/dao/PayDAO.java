package com.practice.webapp.dao;
import com.practice.webapp.entity.Bill;
import com.practice.webapp.entity.Examinee;
public interface PayDAO {
    public void insertBill(Bill bill);
    public void showPayInfo(Examinee examinee);
}
