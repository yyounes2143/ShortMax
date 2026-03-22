package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class I5 {

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f23733a;

    /* renamed from: b  reason: collision with root package name */
    public static String f23734b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f23735c;

    static {
        ms.i b10 = kotlin.c.b(H5.f23700a);
        f23733a = b10;
        String simpleName = I5.class.getSimpleName();
        f23735c = simpleName;
        Intrinsics.checkNotNull(simpleName);
        C6 c62 = (C6) b10.getValue();
        String str = null;
        if (c62 != null) {
            Intrinsics.checkNotNullParameter("cip", "key");
            str = c62.f23530a.getString("cip", null);
        }
        f23734b = str;
    }

    public static void a() {
        f23734b = null;
        C6 c62 = (C6) f23733a.getValue();
        if (c62 != null) {
            c62.a("cip");
        }
        Intrinsics.checkNotNull(f23735c);
    }
}
