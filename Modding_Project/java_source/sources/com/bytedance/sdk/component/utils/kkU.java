package com.bytedance.sdk.component.utils;

import java.io.Closeable;
/* loaded from: classes3.dex */
public class kkU {
    public static void oJ(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }
}
