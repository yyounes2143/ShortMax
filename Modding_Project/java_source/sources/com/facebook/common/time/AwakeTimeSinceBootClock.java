package com.facebook.common.time;

import k2.d;
import q2.c;
@d
/* loaded from: classes3.dex */
public class AwakeTimeSinceBootClock implements c {
    @d
    private static final AwakeTimeSinceBootClock INSTANCE = new AwakeTimeSinceBootClock();

    private AwakeTimeSinceBootClock() {
    }

    @d
    public static AwakeTimeSinceBootClock get() {
        return INSTANCE;
    }

    @Override // q2.c, q2.b
    @d
    public /* bridge */ /* synthetic */ long now() {
        return super.now();
    }

    @Override // q2.c, q2.b
    @d
    public long nowNanos() {
        return System.nanoTime();
    }
}
