package com.ss.ttvideoengine.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.util.Random;
/* loaded from: classes6.dex */
public class SessionIDGenerator {
    public static String generateSessionID(String str) {
        String str2 = new String();
        if (str != null) {
            str2 = str2 + str;
        }
        Random random = new Random();
        return Base64.encodeToString(((str2 + random.nextInt()) + System.currentTimeMillis()).getBytes(), 2);
    }

    public static String generateTrackID(String str) {
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
            sb2.append("T");
        }
        sb2.append(Long.toString(System.currentTimeMillis()));
        sb2.append("T");
        sb2.append(Integer.toString((int) (Math.random() * 65535.0d)));
        return sb2.toString();
    }
}
