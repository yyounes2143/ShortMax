package com.bytedance.sdk.component.ba.oJ;
/* loaded from: classes3.dex */
public class tB {
    public static void oJ(Object obj, String str) {
        if (obj == null) {
            oJ(str);
        }
    }

    public static void oJ(String str) {
        throw new IllegalArgumentException(str);
    }
}
