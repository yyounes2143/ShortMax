package com.amazonaws;

import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public class SDKGlobalConfiguration {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicLong f4886a = new AtomicLong(0);

    public static long a() {
        return f4886a.get();
    }

    public static void b(long j10) {
        f4886a.set(j10);
    }
}
