package com.lol.hgl.common.aop;
import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class LogAop {
	
	public void before(JoinPoint joinPoint) {
		// Logger : lof4j의 실제 구현체.
		Logger logger = LoggerFactory.getLogger(joinPoint.getTarget()+""); // 스트링이 필요해서 컨케트네이션으로 스트링으로 맏늘어줌
		//joinPoint.getTarget : AOP가 적용된 대상 객체를 반환한다.
		logger.info("========logger 시작============");
		
		Object args[] = joinPoint.getArgs();
		//joinPoint.getArgs : JointPoint에 전단된 인자를 배열로 반환한다. (인자는 AOP 를 사용하는 메소드의 인자를 말함.)
		if(args != null) {
			logger.info("Method: " + joinPoint.getSignature().getName()); //조인포인트의 메서드의 이름.
			for(int i=0; i<args.length; i++) {
				logger.info(i + " 번째: \t" + args[i]);
			}
			/* getTarget : 대상 객체
			 * getArgs : 대상 파라미터
			 * getSignature : 대상 메서드 정보
			 * */
		}
		
	}
	
	public void after(JoinPoint joinPoint) {
		Logger logger = LoggerFactory.getLogger(joinPoint.getTarget()+"");
		logger.info("Method: " + joinPoint.getSignature().getName());
		logger.info("========logger 끝============");
	}
	
	public void afterThrowing(JoinPoint joinPoint) {
		Logger logger = LoggerFactory.getLogger(joinPoint.getTarget()+"");
		logger.info("Error : " + joinPoint.getArgs());
		logger.info("Error : " + joinPoint.toString());
	}
	
	
	

}
