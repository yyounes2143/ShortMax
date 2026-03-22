package com.amazonaws.util;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class TimingInfo {

    /* renamed from: a  reason: collision with root package name */
    private final Long f6418a;

    /* renamed from: b  reason: collision with root package name */
    private final long f6419b;

    /* renamed from: c  reason: collision with root package name */
    private Long f6420c;

    /* JADX INFO: Access modifiers changed from: protected */
    public TimingInfo(Long l10, long j10, Long l11) {
        this.f6418a = l10;
        this.f6419b = j10;
        this.f6420c = l11;
    }

    public static double b(long j10, long j11) {
        return TimeUnit.NANOSECONDS.toMicros(j11 - j10) / 1000.0d;
    }

    public static TimingInfo m() {
        return new TimingInfo(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public static TimingInfo n() {
        return new TimingInfoFullSupport(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public static TimingInfo o(long j10) {
        return new TimingInfoFullSupport(null, j10, null);
    }

    public static TimingInfo p(long j10, Long l10) {
        return new TimingInfoUnmodifiable(null, j10, l10);
    }

    public TimingInfo c() {
        this.f6420c = Long.valueOf(System.nanoTime());
        return this;
    }

    public Map<String, Number> d() {
        return Collections.emptyMap();
    }

    public final long e() {
        Long l10 = this.f6420c;
        if (l10 == null) {
            return -1L;
        }
        return l10.longValue();
    }

    public final long f() {
        return this.f6419b;
    }

    public Map<String, List<TimingInfo>> g() {
        return Collections.emptyMap();
    }

    @Deprecated
    public final double h() {
        Double i10 = i();
        if (i10 == null) {
            return -1.0d;
        }
        return i10.doubleValue();
    }

    public final Double i() {
        if (k()) {
            return Double.valueOf(b(this.f6419b, this.f6420c.longValue()));
        }
        return null;
    }

    public final boolean k() {
        if (this.f6420c != null) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return String.valueOf(h());
    }

    public void j(String str) {
    }

    public void a(String str, TimingInfo timingInfo) {
    }

    public void l(String str, long j10) {
    }
}
