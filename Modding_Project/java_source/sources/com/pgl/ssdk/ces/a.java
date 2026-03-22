package com.pgl.ssdk.ces;

import android.content.Context;
/* loaded from: classes6.dex */
public final class a {
    public static native Object meta(int i10, Context context, Object obj);

    public static Object njss(int i10, Object obj) {
        try {
            b h10 = b.h();
            if (h10 == null) {
                return null;
            }
            return h10.a(i10, obj);
        } catch (Throwable unused) {
            return null;
        }
    }
}
