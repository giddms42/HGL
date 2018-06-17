package com.lol.hgl.util;


import java.util.UUID;

import org.springframework.stereotype.Component;


@Component("commonUtil")
public class CommonUtil {

	public static String getRandomString(){
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

}
