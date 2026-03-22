package com.bykv.vk.openvk.preload.b;

import java.util.concurrent.atomic.AtomicLong;
/* compiled from: Interceptor.java */
/* loaded from: classes3.dex */
public abstract class d<IN, OUT> {

    /* renamed from: d  reason: collision with root package name */
    private static AtomicLong f11253d = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    d f11254a;

    /* renamed from: b  reason: collision with root package name */
    IN f11255b;

    /* renamed from: c  reason: collision with root package name */
    OUT f11256c;

    /* renamed from: e  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.b.b.a f11257e;

    /* renamed from: f  reason: collision with root package name */
    private b f11258f;

    /* renamed from: g  reason: collision with root package name */
    private long f11259g;

    public abstract Object a(b<OUT> bVar, IN in2) throws Throwable;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Object... objArr) {
    }

    public final long b() {
        return this.f11259g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f11257e;
        if (aVar == null) {
            return;
        }
        aVar.a(this.f11258f, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f11257e;
        if (aVar == null) {
            return;
        }
        aVar.c(this.f11258f, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f11257e;
        if (aVar == null) {
            return;
        }
        aVar.b(this.f11258f, this);
    }

    public final OUT f() {
        return this.f11256c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b bVar, d dVar, IN in2, com.bykv.vk.openvk.preload.b.b.a aVar, Object[] objArr) {
        this.f11258f = new m(bVar);
        this.f11254a = dVar;
        this.f11255b = in2;
        this.f11257e = aVar;
        if (dVar != null) {
            this.f11259g = dVar.f11259g;
        } else {
            long andIncrement = f11253d.getAndIncrement();
            this.f11259g = andIncrement;
            if (andIncrement < 0) {
                throw new RuntimeException("Pipeline ID use up!");
            }
        }
        a(objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Throwable th2) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f11257e;
        if (aVar == null) {
            return;
        }
        aVar.a(this.f11258f, this, th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Throwable th2) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f11257e;
        if (aVar == null) {
            return;
        }
        aVar.b(this.f11258f, this, th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d(Throwable th2) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f11257e;
        if (aVar == null) {
            return;
        }
        aVar.c(this.f11258f, this, th2);
    }
}
