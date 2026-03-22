package com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoInternalErrorException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoJWTParser;
import java.util.Date;
/* loaded from: classes2.dex */
public class CognitoIdToken extends CognitoUserToken {
    public CognitoIdToken(String str) {
        super(str);
    }

    public Date b() {
        try {
            String a10 = CognitoJWTParser.a(super.a(), "exp");
            if (a10 == null) {
                return null;
            }
            return new Date(Long.parseLong(a10) * 1000);
        } catch (Exception e10) {
            throw new CognitoInternalErrorException(e10.getMessage(), e10);
        }
    }

    public String c() {
        return super.a();
    }
}
