package com.google.firebase.crashlytics.internal.common;

import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: OnDemandCounter.java */
/* loaded from: classes5.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f20751a = new AtomicInteger();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f20752b = new AtomicInteger();

    public void a() {
        this.f20752b.getAndIncrement();
    }

    public void b() {
        this.f20751a.getAndIncrement();
    }

    public void c() {
        this.f20752b.set(0);
    }
}
