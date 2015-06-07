package com.edu.serviceTest;


import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:testingContext.xml")
@TransactionConfiguration(defaultRollback=false)
public abstract class AbstractServiceForTesting{

    final protected Logger logger = LoggerFactory.getLogger(this.getClass());
        
	
}