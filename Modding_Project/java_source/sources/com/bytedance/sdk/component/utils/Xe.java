package com.bytedance.sdk.component.utils;

import android.os.Build;
import android.text.TextUtils;
/* loaded from: classes3.dex */
public class Xe {
    private static volatile String oJ;

    public static String oJ() {
        if (!TextUtils.isEmpty(oJ)) {
            return oJ;
        }
        String str = Build.MODEL;
        oJ = str;
        return str;
    }
}
