package com.lol.hgl.util;
import java.util.*;

import org.springframework.stereotype.Component;

import java.security.*;
import java.io.*;
import java.net.*;

@Component("SMSFormOne")
public class SMSFormOne {
	
	
    /**==============================================================
      Description        :  사용 함수 선언
    ==============================================================**/
     /**
     * nullcheck
     * @param str, Defaultvalue
     * @return
     */
	
	/*
     이 메소드는 필요 없음.
     public static String nullcheck(String str,  String Defaultvalue ) throws Exception
     {
          String ReturnDefault = "" ;
          if (str == null)
          {
              ReturnDefault =  Defaultvalue ;
          }
          else if (str == "" )
         {
              ReturnDefault =  Defaultvalue ;
          }
          else
          {
                      ReturnDefault = str ;
          }
           return ReturnDefault ;
     }
     /**
     * BASE64 Encoder
     * @param str
     * @return
     */
	
    public static String base64Encode(String str)  throws java.io.IOException {
        sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();
        byte[] strByte = str.getBytes();
        String result = encoder.encode(strByte);
        return result ;
    }

    /**
     * BASE64 Decoder
     * @param str
     * @return
     */
    
    public static String base64Decode(String str)  throws java.io.IOException {
        sun.misc.BASE64Decoder decoder = new sun.misc.BASE64Decoder();
        byte[] strByte = decoder.decodeBuffer(str);
        String result = new String(strByte);
        return result ;
    }
    
   public static void sms(String rphone, String msg) throws NoSuchAlgorithmException, IOException {   
        String sms_url = "";
        sms_url = "https://sslsms.cafe24.com/sms_sender.php"; // SMS 전송요청 URL
        String user_id = "giddms42"; // SMS아이디
        String secure = "95a3179608da5885de20337c449c730e";//인증키
       // String msg = "[행가래] 오늘은 가족"+ famNickname +"님의 생일입니다. 축하메시지를 보내주세요.^^";
        //String rphone = phone;
        //반복문으로 하나씩 등록?  
        String sphone1 = "010";
        String sphone2 = "2731";
        String sphone3 = "3188";
       // String testflag = "Y";
        String[] host_info = sms_url.split("/");
        String host = host_info[2];
        String path = "/" + host_info[3];
        int port = 80;

        // 데이터 맵핑 변수 정의
        String arrKey[]
            = new String[] {"user_id","secure","msg", "rphone","sphone1", "sphone2","sphone3"};
        String valKey[]= new String[arrKey.length] ;
        valKey[0] = user_id;
        valKey[1] = secure;
        valKey[2] = msg;
        valKey[3] = rphone;
        valKey[4] = sphone1;
        valKey[5] = sphone2;
        valKey[6] = sphone3;
        //valKey[7] = testflag;

        String boundary = "";
        Random rnd = new Random();
        String rndKey = Integer.toString(rnd.nextInt(32000));
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] bytData = rndKey.getBytes();
        md.update(bytData);
        byte[] digest = md.digest();
        for(int i =0;i<digest.length;i++)
        {
            boundary = boundary + Integer.toHexString(digest[i] & 0xFF);
        }
        boundary = "---------------------"+boundary.substring(0,11);

        // 본문 생성
        String data = "";
        String index = "";
        String value = "";
        for (int i=0;i<arrKey.length; i++)
        {
            index = arrKey[i];
            value = valKey[i];
            data +="--"+boundary+"\r\n";
            data += "Content-Disposition: form-data; name=\""+index+"\"\r\n";
            data += "\r\n"+value+"\r\n";
            data +="--"+boundary+"\r\n";
        }

        InetAddress addr = InetAddress.getByName(host);
        Socket socket = new Socket(host, port);
     
        // 헤더 전송
        BufferedWriter wr = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), "EUC-KR"));
        wr.write("POST "+path+" HTTP/1.0\r\n");
        wr.write("Content-Length: "+data.length()+"\r\n");
        wr.write("Content-type: multipart/form-data, boundary="+boundary+"\r\n");
        wr.write("\r\n");

        // 데이터 전송
        wr.write(data);
        wr.flush();

        // 결과값 얻기
        BufferedReader rd = new BufferedReader(new InputStreamReader(socket.getInputStream(),  "EUC-KR"));
        String line="";
        ArrayList tmpArr = new ArrayList();
        while ((line = rd.readLine()) != null) {
            tmpArr.add(line);
        }
        wr.close();
        rd.close();

        String tmpMsg = (String)tmpArr.get(tmpArr.size()-1);
        String[] rMsg = tmpMsg.split(",");
        String Result= rMsg[0]; //발송결과
        System.out.println("Result"+Result);
        String Count= ""; //잔여건수
        if(rMsg.length>1) {
        	Count= rMsg[1]; 
        }
                        //발송결과 알림
        if(Result.equals("success")) {
            System.out.println("성공적으로 발송하였습니다.");
            System.out.println(" 잔여건수는 "+ Count+"건 입니다.");
        }
        else if(Result.equals("3205")) {
            System.out.println("잘못된 번호형식입니다.");
        }
        else {
        	System.out.println("[Error]"+Result);
        }

}
                

}
