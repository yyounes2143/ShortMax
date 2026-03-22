package com.bytedance.sdk.component.utils;

import android.os.Build;
import android.text.TextUtils;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.component.utils.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0181oJ {
        static final Random oJ = oJ.tB();
    }

    public static String ZYk(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String oJ = oJ();
        String oJ2 = oJ(oJ, 32);
        String ZYk = ZYk();
        String oJ3 = (oJ2 == null || ZYk == null) ? null : com.bytedance.sdk.component.ex.oJ.oJ(str, ZYk, oJ2);
        return 3 + oJ + ZYk + oJ3;
    }

    public static JSONObject oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        return oJ(jSONObject.toString());
    }

    public static String tB(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 49) {
            return str;
        }
        String oJ = oJ(str.substring(1, 33), 32);
        String substring = str.substring(33, 49);
        return (substring == null || oJ == null) ? str : com.bytedance.sdk.component.ex.oJ.ZYk(str.substring(49), substring, oJ);
    }

    public static JSONObject oJ(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            try {
                String ZYk = ZYk(str);
                if (!TextUtils.isEmpty(ZYk)) {
                    jSONObject.put("message", ZYk);
                    jSONObject.put("cypher", 3);
                } else {
                    jSONObject.put("message", str);
                    jSONObject.put("cypher", 0);
                }
            } catch (Throwable th2) {
                th2.getMessage();
            }
        } catch (Throwable unused) {
            jSONObject.put("message", str);
            jSONObject.put("cypher", 0);
        }
        return jSONObject;
    }

    public static Random tB() {
        SecureRandom instanceStrong;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                instanceStrong = SecureRandom.getInstanceStrong();
                return instanceStrong;
            } catch (Throwable unused) {
                return new SecureRandom();
            }
        }
        return new SecureRandom();
    }

    public static String ZYk() {
        String oJ = oJ(8);
        if (oJ == null || oJ.length() != 16) {
            return null;
        }
        return oJ;
    }

    public static String oJ() {
        String oJ = oJ(16);
        if (oJ == null || oJ.length() != 32) {
            return null;
        }
        return oJ;
    }

    public static String oJ(String str, int i10) {
        if (str == null || str.length() != i10) {
            return null;
        }
        int i11 = i10 / 2;
        return str.substring(i11, i10) + str.substring(0, i11);
    }

    public static String oJ(int i10) {
        try {
            byte[] bArr = new byte[i10];
            C0181oJ.oJ.nextBytes(bArr);
            return Pfn.oJ(bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
