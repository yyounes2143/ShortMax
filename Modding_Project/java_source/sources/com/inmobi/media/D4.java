package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public abstract class D4 {
    public static final P9 a(C3260yc c3260yc) {
        Intrinsics.checkNotNullParameter(c3260yc, "<this>");
        P9 p92 = new P9();
        byte[] value = c3260yc.f25470c;
        if (value != null) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (value.length == 0) {
                p92.f23980b = new byte[0];
            } else {
                byte[] bArr = new byte[value.length];
                p92.f23980b = bArr;
                System.arraycopy(value, 0, bArr, 0, value.length);
            }
        }
        p92.f23984f = c3260yc.f25469b;
        p92.f23983e = c3260yc.f25472e;
        p92.f23982d = c3260yc.f25468a;
        Integer num = c3260yc.f25471d;
        p92.f23981c = Integer.valueOf(num != null ? num.intValue() : 0);
        return p92;
    }

    public static final boolean a(String str) {
        return str == null || StringsKt.v1(str).toString().length() == 0 || !(StringsKt.V(str, "http://", false, 2, null) || StringsKt.V(str, "https://", false, 2, null));
    }

    public static final void a(Thread thread, String name) {
        Intrinsics.checkNotNullParameter(thread, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            thread.start();
        } catch (InternalError e10) {
            e10.toString();
        }
    }
}
