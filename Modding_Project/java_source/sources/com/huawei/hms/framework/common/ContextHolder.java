package com.huawei.hms.framework.common;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes5.dex */
public class ContextHolder {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    private static Context f22125a;
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static Context f22126b;

    public static Context getAppContext() {
        return f22125a;
    }

    public static Context getKitContext() {
        return f22126b;
    }

    public static Context getResourceContext() {
        if (getKitContext() != null) {
            return getKitContext();
        }
        return getAppContext();
    }

    public static void setAppContext(Context context) {
        if (f22125a != null) {
            return;
        }
        CheckParamUtils.checkNotNull(context, "sAppContext == null");
        f22125a = context.getApplicationContext();
    }

    public static void setKitContext(Context context) {
        CheckParamUtils.checkNotNull(context, "sKitContext == null");
        f22126b = context;
    }
}
