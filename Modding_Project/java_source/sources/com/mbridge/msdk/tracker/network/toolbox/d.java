package com.mbridge.msdk.tracker.network.toolbox;

import android.text.TextUtils;
import com.mbridge.msdk.tracker.network.t;
/* compiled from: Common.java */
/* loaded from: classes6.dex */
public class d {
    public static String a(String str, t<?> tVar) {
        if (!TextUtils.isEmpty(str) && tVar != null) {
            byte[] b10 = tVar.b();
            if (b10 != null && b10.length != 0) {
                if (str.endsWith("?")) {
                    return str + new String(b10);
                }
                return str + "?" + new String(b10);
            }
            return str;
        }
        return "";
    }
}
