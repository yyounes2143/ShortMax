package com.facebook.common.time;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;
import k2.d;
import q2.b;
@d
/* loaded from: classes3.dex */
public class RealtimeSinceBootClock implements b {

    /* renamed from: a  reason: collision with root package name */
    private static final RealtimeSinceBootClock f15329a = new RealtimeSinceBootClock();

    private RealtimeSinceBootClock() {
    }

    @d
    public static RealtimeSinceBootClock get() {
        return f15329a;
    }

    @Override // q2.b
    public long now() {
        return SystemClock.elapsedRealtime();
    }

    @Override // q2.b
    public long nowNanos() {
        return TimeUnit.MILLISECONDS.toNanos(now());
    }
}
