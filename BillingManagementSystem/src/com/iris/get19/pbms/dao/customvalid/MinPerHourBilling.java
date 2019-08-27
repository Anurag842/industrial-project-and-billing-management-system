package com.iris.get19.pbms.dao.customvalid;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class MinPerHourBilling implements ConstraintValidator<MinZero,String>{

	private  int price;
	@Override
	public void initialize(MinZero mz) {
		this.price=mz.price();
	}

	@Override
	public boolean isValid(String mz, ConstraintValidatorContext arg1) {
		
		if(Integer.parseInt(mz)>0)
		{
			return true;
		}
		return false;
		
	}

}
