package com.huawei.hms.framework.common;

import android.annotation.SuppressLint;
/* loaded from: classes5.dex */
public class SecurityRandomHelper {
    @SuppressLint({"StaticFieldLeak"})
    public static volatile SecurityRandomHelper instance;

    private SecurityRandomHelper() {
    }

    public static SecurityRandomHelper getInstance() {
        if (instance == null) {
            synchronized (SecurityRandomHelper.class) {
                try {
                    if (instance == null) {
                        mb.a.e(true);
                        instance = new SecurityRandomHelper();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public byte[] generateSecureRandom(int i10) {
        return mb.a.c(i10);
    }

    public String generateSecureRandomStr(int i10) {
        return mb.a.d(i10);
    }
}
