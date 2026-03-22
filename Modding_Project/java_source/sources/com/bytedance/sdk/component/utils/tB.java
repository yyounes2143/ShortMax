package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.content.pm.Signature;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class tB {
    private static HashMap<String, ArrayList<String>> oJ = new HashMap<>();

    private static Signature[] ZYk(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Exception unused) {
            return null;
        }
    }

    public static ArrayList<String> oJ(Context context, String str) {
        Signature[] ZYk;
        ArrayList<String> arrayList = null;
        if (context != null && str != null) {
            String packageName = context.getPackageName();
            if (packageName == null) {
                return null;
            }
            if (oJ.get(str) != null) {
                return oJ.get(str);
            }
            arrayList = new ArrayList<>();
            try {
                for (Signature signature : ZYk(context, packageName)) {
                    String str2 = "error!";
                    if (SameMD5.TAG.equals(str)) {
                        str2 = oJ(signature, SameMD5.TAG);
                    } else if ("SHA1".equals(str)) {
                        str2 = oJ(signature, "SHA1");
                    } else if ("SHA256".equals(str)) {
                        str2 = oJ(signature, "SHA256");
                    }
                    arrayList.add(str2);
                }
            } catch (Exception unused) {
            }
            oJ.put(str, arrayList);
        }
        return arrayList;
    }

    public static String oJ(Context context) {
        StringBuilder sb2 = new StringBuilder();
        ArrayList<String> oJ2 = oJ(context, "SHA1");
        if (oJ2 != null && oJ2.size() != 0) {
            for (int i10 = 0; i10 < oJ2.size(); i10++) {
                sb2.append(oJ2.get(i10));
                if (i10 < oJ2.size() - 1) {
                    sb2.append(",");
                }
            }
        }
        return sb2.toString();
    }

    private static String oJ(Signature signature, String str) {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "error!";
            }
            byte[] digest = messageDigest.digest(byteArray);
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : digest) {
                sb2.append(Integer.toHexString((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | 256).substring(1, 3).toUpperCase());
                sb2.append(":");
            }
            return sb2.substring(0, sb2.length() - 1).toString();
        } catch (Exception unused) {
            return "error!";
        }
    }
}
