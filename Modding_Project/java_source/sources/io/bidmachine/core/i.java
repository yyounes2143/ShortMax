package io.bidmachine.core;

import java.util.concurrent.TimeUnit;
/* compiled from: VisibilityParams.java */
/* loaded from: classes7.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private long f54420a = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private float f54421b = 1.0f;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54422c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54423d = false;

    public float a() {
        return this.f54421b;
    }

    public long b() {
        return this.f54420a;
    }

    public boolean c() {
        return this.f54423d;
    }

    public boolean d() {
        return this.f54422c;
    }

    public void e(boolean z10) {
        this.f54423d = z10;
    }

    public void f(boolean z10) {
        this.f54422c = z10;
    }

    public void g(float f10) {
        this.f54421b = f10;
    }

    public void h(long j10) {
        this.f54420a = j10;
    }

    public void i(long j10) {
        h(TimeUnit.SECONDS.toMillis(j10));
    }
}
