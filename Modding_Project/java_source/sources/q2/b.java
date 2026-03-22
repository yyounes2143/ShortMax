package q2;

import java.util.concurrent.TimeUnit;
/* compiled from: MonotonicClock.java */
/* loaded from: classes3.dex */
public interface b {
    @k2.d
    default long now() {
        return TimeUnit.NANOSECONDS.toMillis(nowNanos());
    }

    @k2.d
    long nowNanos();
}
