package com.graduateProject.DAO;

import com.graduateProject.entity.Finance;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Repository
public interface FinanceDAO {
    public List<Finance> selectAllFinance();
}
