package com.amazonaws.cognito.clientcontext.util;

import android.util.Base64;
import android.util.Log;
import com.amazonaws.cognito.clientcontext.data.ConfigurationConstant;
import java.nio.charset.Charset;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public class SignatureGenerator {
    private void b(Exception exc) {
        Log.w("HMAC_SHA256_Signature", "Exception while completing context data signature", exc);
    }

    public String a(String str, String str2, String str3) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            Charset charset = ConfigurationConstant.f4961a;
            mac.init(new SecretKeySpec(str2.getBytes(charset), "HmacSHA256"));
            mac.update(str3.getBytes(charset));
            return Base64.encodeToString(mac.doFinal(str.getBytes(charset)), 0);
        } catch (Exception e10) {
            b(e10);
            return "";
        }
    }
}
