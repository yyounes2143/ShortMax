package com.bykv.vk.openvk.preload.b;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealInterceptorChain.java */
/* loaded from: classes3.dex */
public final class i implements b {

    /* renamed from: a  reason: collision with root package name */
    protected e f11272a;

    /* renamed from: b  reason: collision with root package name */
    private int f11273b;

    /* renamed from: c  reason: collision with root package name */
    private List<h> f11274c;

    /* renamed from: d  reason: collision with root package name */
    private d f11275d;

    /* compiled from: RealInterceptorChain.java */
    /* loaded from: classes3.dex */
    static final class a extends Exception {
        a(Throwable th2) {
            super(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(List<h> list, int i10, e eVar, d dVar) {
        this.f11274c = list;
        this.f11273b = i10;
        this.f11272a = eVar;
        this.f11275d = dVar;
    }

    private d c(Class cls) {
        d dVar = this.f11275d;
        while (dVar != null && dVar.getClass() != cls) {
            dVar = dVar.f11254a;
        }
        return dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(Object obj) throws Exception {
        d dVar = this.f11275d;
        if (dVar != null) {
            dVar.f11256c = obj;
            dVar.e();
        }
        if (this.f11273b >= this.f11274c.size()) {
            return obj;
        }
        h hVar = this.f11274c.get(this.f11273b);
        Class<? extends d> cls = hVar.f11266a;
        d dVar2 = (d) this.f11272a.a(cls);
        if (dVar2 != null) {
            com.bykv.vk.openvk.preload.b.b.a a10 = hVar.a();
            i iVar = new i(this.f11274c, this.f11273b + 1, this.f11272a, dVar2);
            dVar2.a(iVar, this.f11275d, obj, a10, hVar.b());
            dVar2.c();
            try {
                Object a11 = dVar2.a(iVar, obj);
                dVar2.d();
                return a11;
            } catch (a e10) {
                dVar2.c(e10.getCause());
                throw e10;
            } catch (Throwable th2) {
                dVar2.b(th2);
                throw new a(th2);
            }
        }
        throw new IllegalArgumentException("interceptor == null , index = " + obj + " , class: " + cls);
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object b(Class cls) {
        d c10 = c(cls);
        if (c10 != null) {
            return c10.f11256c;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(Class cls) {
        d c10 = c(cls);
        if (c10 != null) {
            return c10.f11255b;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }
}
