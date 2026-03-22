package com.facebook.imagepipeline.producers;

import android.net.Uri;
/* compiled from: FetchState.java */
/* loaded from: classes3.dex */
public class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final n<y3.k> f15738a;

    /* renamed from: b  reason: collision with root package name */
    private final c1 f15739b;

    /* renamed from: c  reason: collision with root package name */
    private long f15740c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f15741d;

    /* renamed from: e  reason: collision with root package name */
    private s3.b f15742e;

    public c0(n<y3.k> nVar, c1 c1Var) {
        this.f15738a = nVar;
        this.f15739b = c1Var;
    }

    public n<y3.k> a() {
        return this.f15738a;
    }

    public c1 b() {
        return this.f15739b;
    }

    public long c() {
        return this.f15740c;
    }

    public e1 d() {
        return this.f15739b.l();
    }

    public int e() {
        return this.f15741d;
    }

    public s3.b f() {
        return this.f15742e;
    }

    public Uri g() {
        return this.f15739b.o().w();
    }

    public void h(long j10) {
        this.f15740c = j10;
    }

    public void i(int i10) {
        this.f15741d = i10;
    }

    public void j(s3.b bVar) {
        this.f15742e = bVar;
    }
}
