package com.ss.mediakit.vcnlib;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes6.dex */
public class NetUtils {
    @SuppressLint({"CI_StaticFieldLeak"})
    private static Context gContext;

    public static Context getApplicationContext() {
        return gContext;
    }

    public static void setApplicationContext(Context context) {
        if (gContext == null) {
            gContext = context;
        }
    }
}
