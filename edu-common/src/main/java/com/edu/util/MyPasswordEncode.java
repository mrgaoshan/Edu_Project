package com.edu.util;

import org.springframework.security.authentication.encoding.MessageDigestPasswordEncoder;

public class MyPasswordEncode extends MessageDigestPasswordEncoder {

    public MyPasswordEncode(String algorithm) {
        super(algorithm);
    }

    @Override
    // 如果返回true，则验证通过。
    public boolean isPasswordValid(String savePass, String submitPass, Object salt) {
        String pass1 = "" + savePass;
        String pass2=EncryptUtil.MD5Encode(submitPass);
        pass2 = EncryptUtil.shaPsw(pass2);
        return pass1.equals(pass2);
    }

}
