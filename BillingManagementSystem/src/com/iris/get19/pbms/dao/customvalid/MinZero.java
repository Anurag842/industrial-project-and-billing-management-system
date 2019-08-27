package com.iris.get19.pbms.dao.customvalid;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.LOCAL_VARIABLE;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;
import javax.validation.constraints.Min;

@Documented
@Retention(RUNTIME)
@Constraint(validatedBy = MinPerHourBilling.class)
@Target({ TYPE, FIELD, METHOD, LOCAL_VARIABLE, ANNOTATION_TYPE })
@Min(1)
public @interface MinZero {
	
	String message() default "Minimum $1 is required";


    Class<?>[] groups() default {};
    
    Class<? extends Payload>[] payload() default {};
    int price() default 1;
     
}
