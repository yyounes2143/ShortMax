package com.unity3d.scar.adapter.common;
/* compiled from: DispatchGroup.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f49503a = 0;

    /* renamed from: b  reason: collision with root package name */
    private Runnable f49504b;

    private void d() {
        Runnable runnable;
        if (this.f49503a <= 0 && (runnable = this.f49504b) != null) {
            runnable.run();
        }
    }

    public synchronized void a() {
        this.f49503a++;
    }

    public synchronized void b() {
        this.f49503a--;
        d();
    }

    public void c(Runnable runnable) {
        this.f49504b = runnable;
        d();
    }
}
