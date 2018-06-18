package com.lol.hgl.util;
import java.util.*;

import org.springframework.stereotype.Component;

import java.security.*;
import java.io.*;
import java.net.*;

@Component("SMSFormtwo")
public class SMSFormTwo {
	
public static void smsTwo(){
	
	 try {
          String apiUrl =  "https://sslsms.cafe24.com/smsSenderPhone.php";
          String userAgent = "Mozilla/5.0";
          String postParams = "userId=giddms42&passwd=95a3179608da5885de20337c449c730e";
          URL obj = new URL(apiUrl);
          HttpURLConnection con = (HttpURLConnection) obj.openConnection();
          con.setRequestMethod("POST");
          con.setRequestProperty("User-Agent", userAgent);

          // For POST only - START
          con.setDoOutput(true);
          OutputStream os = con.getOutputStream();
          os.write(postParams.getBytes());
          os.flush();
          os.close();
          // For POST only - END

          int responseCode = con.getResponseCode();
          System.out.println("POST Response Code :: " + responseCode);

          if (responseCode == HttpURLConnection.HTTP_OK) { //success
              BufferedReader in = new BufferedReader(new InputStreamReader(
                      con.getInputStream()));
              String inputLine;
              StringBuffer buf = new StringBuffer();

              while ((inputLine = in.readLine()) != null) {
                  buf.append(inputLine);
              }
              in.close();
              System.out.println(buf.toString());
        
          } else {
        	  System.out.println("POST request not worked");
          }
  } catch(IOException ex){

  }
}
   
       

}
