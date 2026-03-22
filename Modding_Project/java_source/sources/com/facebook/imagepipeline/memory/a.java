package com.facebook.imagepipeline.memory;

import java.util.LinkedList;
import java.util.Queue;
import k2.h;
/* compiled from: Bucket.java */
/* loaded from: classes3.dex */
class a<V> {

    /* renamed from: a  reason: collision with root package name */
    public final int f15676a;

    /* renamed from: b  reason: collision with root package name */
    public final int f15677b;

    /* renamed from: c  reason: collision with root package name */
    final Queue f15678c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f15679d;

    /* renamed from: e  reason: collision with root package name */
    private int f15680e;

    public a(int i10, int i11, int i12, boolean z10) {
        boolean z11;
        boolean z12;
        if (i10 > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        h.i(z11);
        if (i11 >= 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        h.i(z12);
        h.i(i12 >= 0);
        this.f15676a = i10;
        this.f15677b = i11;
        this.f15678c = new LinkedList();
        this.f15680e = i12;
        this.f15679d = z10;
    }

    void a(V v10) {
        this.f15678c.add(v10);
    }

    public void b() {
        boolean z10;
        if (this.f15680e > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.i(z10);
        this.f15680e--;
    }

    @Deprecated
    public V c() {
        V g10 = g();
        if (g10 != null) {
            this.f15680e++;
        }
        return g10;
    }

    int d() {
        return this.f15678c.size();
    }

    public void e() {
        this.f15680e++;
    }

    public boolean f() {
        if (this.f15680e + d() > this.f15677b) {
            return true;
        }
        return false;
    }

    public V g() {
        return (V) this.f15678c.poll();
    }

    public void h(V v10) {
        boolean z10;
        h.g(v10);
        if (this.f15679d) {
            if (this.f15680e > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            h.i(z10);
            this.f15680e--;
            a(v10);
            return;
        }
        int i10 = this.f15680e;
        if (i10 > 0) {
            this.f15680e = i10 - 1;
            a(v10);
            return;
        }
        l2.a.k("BUCKET", "Tried to release value %s from an empty bucket!", v10);
    }
}
