package mapper;

import model.UsFormula;

public interface UsFormulaMapper {
    int insert(UsFormula record);

    int insertSelective(UsFormula record);
}