package com.facebook.imagepipeline.producers;

import android.annotation.SuppressLint;
/* compiled from: BaseConsumer.java */
/* loaded from: classes3.dex */
public abstract class c<T> implements n<T> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f15737a = false;

    public static boolean d(int i10) {
        if ((i10 & 1) == 1) {
            return true;
        }
        return false;
    }

    public static boolean e(int i10) {
        return !d(i10);
    }

    public static boolean l(int i10, int i11) {
        if ((i10 & i11) != 0) {
            return true;
        }
        return false;
    }

    public static boolean m(int i10, int i11) {
        if ((i10 & i11) == i11) {
            return true;
        }
        return false;
    }

    public static int n(int i10, int i11) {
        return i10 & (~i11);
    }

    @Override // com.facebook.imagepipeline.producers.n
    public synchronized void a() {
        if (this.f15737a) {
            return;
        }
        this.f15737a = true;
        try {
            f();
        } catch (Exception e10) {
            j(e10);
        }
    }

    @Override // com.facebook.imagepipeline.producers.n
    public synchronized void b(T t10, int i10) {
        if (this.f15737a) {
            return;
        }
        this.f15737a = d(i10);
        try {
            h(t10, i10);
        } catch (Exception e10) {
            j(e10);
        }
    }

    @Override // com.facebook.imagepipeline.producers.n
    public synchronized void c(float f10) {
        if (this.f15737a) {
            return;
        }
        try {
            i(f10);
        } catch (Exception e10) {
            j(e10);
        }
    }

    protected abstract void f();

    protected abstract void g(Throwable th2);

    protected abstract void h(T t10, int i10);

    protected abstract void i(float f10);

    protected void j(Exception exc) {
        l2.a.A(getClass(), "unhandled exception", exc);
    }

    @Override // com.facebook.imagepipeline.producers.n
    public synchronized void onFailure(Throwable th2) {
        if (this.f15737a) {
            return;
        }
        this.f15737a = true;
        try {
            g(th2);
        } catch (Exception e10) {
            j(e10);
        }
    }

    @SuppressLint({"WrongConstant"})
    public static int k(boolean z10) {
        return z10 ? 1 : 0;
    }
}
