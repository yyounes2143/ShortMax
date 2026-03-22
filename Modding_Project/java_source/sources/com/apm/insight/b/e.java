package com.apm.insight.b;

import androidx.annotation.CallSuper;
/* compiled from: AbsLooperDispatchListener.java */
/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    public static long f6760a;

    /* renamed from: b  reason: collision with root package name */
    public static long f6761b;

    /* renamed from: c  reason: collision with root package name */
    public volatile boolean f6762c = false;

    public boolean a() {
        return false;
    }

    @CallSuper
    public void b(String str) {
        this.f6762c = false;
    }

    @CallSuper
    public void a(String str) {
        this.f6762c = true;
    }
}
