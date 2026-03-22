package com.bytedance.sdk.openadsdk.utils;

import java.io.Closeable;
/* loaded from: classes3.dex */
public class PiB {
    public static void oJ(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
    }
}
