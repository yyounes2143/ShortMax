package com.bytedance.sdk.component.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import java.util.Locale;
/* loaded from: classes3.dex */
public class BTZ {
    @SuppressLint({"StaticFieldLeak"})
    private static Context oJ;

    private static Configuration ZYk(Context context, String str, String str2) {
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(new Locale(str, str2));
        return configuration;
    }

    public static void oJ(Context context, String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        try {
            oJ = context.createConfigurationContext(ZYk(context, str, str2));
        } catch (Throwable th2) {
            th2.getMessage();
        }
        cY.oJ(oJ);
    }
}
