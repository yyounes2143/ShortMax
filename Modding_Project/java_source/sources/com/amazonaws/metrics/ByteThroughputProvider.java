package com.amazonaws.metrics;
/* loaded from: classes2.dex */
public abstract class ByteThroughputProvider {

    /* renamed from: a  reason: collision with root package name */
    private long f5063a;

    /* renamed from: b  reason: collision with root package name */
    private int f5064b;

    /* renamed from: c  reason: collision with root package name */
    private final ThroughputMetricType f5065c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteThroughputProvider(ThroughputMetricType throughputMetricType) {
        this.f5065c = throughputMetricType;
    }

    public int a() {
        return this.f5064b;
    }

    public long b() {
        return this.f5063a;
    }

    public String c() {
        return super.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(int i10, long j10) {
        this.f5064b += i10;
        this.f5063a += System.nanoTime() - j10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        this.f5064b = 0;
        this.f5063a = 0L;
    }

    public String toString() {
        return String.format("providerId=%s, throughputType=%s, byteCount=%d, duration=%d", c(), this.f5065c, Integer.valueOf(this.f5064b), Long.valueOf(this.f5063a));
    }
}
