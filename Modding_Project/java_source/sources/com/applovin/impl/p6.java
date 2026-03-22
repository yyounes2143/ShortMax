package com.applovin.impl;
/* loaded from: classes2.dex */
public class p6 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f9217g;

    public p6(com.applovin.impl.sdk.k kVar, String str, Runnable runnable) {
        this(kVar, false, str, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f9217g.run();
    }

    public p6(com.applovin.impl.sdk.k kVar, boolean z10, String str, Runnable runnable) {
        super("TaskRunnable:" + str, kVar, z10);
        this.f9217g = runnable;
    }
}
