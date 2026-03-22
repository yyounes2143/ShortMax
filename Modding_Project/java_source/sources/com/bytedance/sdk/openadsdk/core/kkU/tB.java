package com.bytedance.sdk.openadsdk.core.kkU;

import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
/* loaded from: classes3.dex */
public class tB {
    public static String oJ(String str) {
        return TextUtils.isEmpty(str) ? str : oJ(PiB.ib().jXJ(), str);
    }

    public static String oJ(String str, String str2) {
        if (TextUtils.isEmpty(str2) || str2.startsWith("http://") || str2.startsWith("https://")) {
            return str2;
        }
        if (!TextUtils.isEmpty(str) && !str.endsWith(DomExceptionUtils.SEPARATOR)) {
            return str + "/static/" + str2;
        }
        return str + "static/" + str2;
    }
}
