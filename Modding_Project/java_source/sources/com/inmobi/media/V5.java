package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class V5 {

    /* renamed from: a  reason: collision with root package name */
    public static C6 f24304a;

    public static final C6 a() {
        C6 c62;
        if (f24304a == null) {
            Context d10 = Uc.d();
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                c62 = B6.a(d10, "CrashSession-store");
            } else {
                c62 = null;
            }
            f24304a = c62;
        }
        return f24304a;
    }

    public static final long a(AbstractC3124q3 crashType) {
        Intrinsics.checkNotNullParameter(crashType, "crashType");
        C6 a10 = a();
        if (a10 != null) {
            String key = crashType.f25177b;
            Intrinsics.checkNotNullParameter(key, "key");
            return a10.f23530a.getLong(key, 0L);
        }
        return 0L;
    }
}
