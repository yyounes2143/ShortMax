package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
/* compiled from: StringUtils.java */
/* loaded from: classes5.dex */
public class z0 {
    public static boolean a(String str) {
        if (str != null && !TextUtils.isEmpty(str.trim()) && !"null".equals(str)) {
            return false;
        }
        return true;
    }

    public static boolean b(String str) {
        if (str != null && !TextUtils.isEmpty(str.trim()) && !"null".equals(str)) {
            return true;
        }
        return false;
    }
}
