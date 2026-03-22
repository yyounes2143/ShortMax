package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import android.util.Base64;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class CognitoJWTParser {
    public static String a(String str, String str2) {
        try {
            Object obj = b(str).get(str2);
            if (obj != null) {
                return obj.toString();
            }
            return null;
        } catch (Exception unused) {
            throw new CognitoParameterInvalidException("invalid token");
        }
    }

    public static JSONObject b(String str) {
        try {
            c(str);
            return new JSONObject(new String(Base64.decode(str.split("\\.")[1], 8), "UTF-8"));
        } catch (UnsupportedEncodingException e10) {
            throw new CognitoParameterInvalidException(e10.getMessage());
        } catch (JSONException e11) {
            throw new CognitoParameterInvalidException(e11.getMessage());
        } catch (Exception unused) {
            throw new CognitoParameterInvalidException("error in parsing JSON");
        }
    }

    public static void c(String str) {
        if (str.split("\\.").length == 3) {
            return;
        }
        throw new CognitoParameterInvalidException("not a JSON Web Token");
    }
}
