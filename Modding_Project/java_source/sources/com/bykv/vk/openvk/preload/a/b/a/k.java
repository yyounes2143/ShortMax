package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.o;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
/* compiled from: TreeTypeAdapter.java */
/* loaded from: classes3.dex */
public final class k<T> extends r<T> {

    /* renamed from: a  reason: collision with root package name */
    private final o<T> f11076a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.h<T> f11077b;

    /* renamed from: c  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.a.d f11078c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.c.a<T> f11079d;

    /* renamed from: e  reason: collision with root package name */
    private final s f11080e;

    /* renamed from: f  reason: collision with root package name */
    private r<T> f11081f;

    /* compiled from: TreeTypeAdapter.java */
    /* loaded from: classes3.dex */
    final class a {
        private a(byte b10) {
        }

        /* synthetic */ a() {
            this((byte) 0);
        }
    }

    public k(o<T> oVar, com.bykv.vk.openvk.preload.a.h<T> hVar, com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar, s sVar) {
        new a();
        this.f11076a = oVar;
        this.f11077b = hVar;
        this.f11078c = dVar;
        this.f11079d = aVar;
        this.f11080e = sVar;
    }

    private r<T> b() {
        r<T> rVar = this.f11081f;
        if (rVar != null) {
            return rVar;
        }
        r<T> a10 = this.f11078c.a(this.f11080e, this.f11079d);
        this.f11081f = a10;
        return a10;
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        if (this.f11077b == null) {
            return b().a(aVar);
        }
        if (com.bykv.vk.openvk.preload.geckox.h.a.a(aVar) instanceof com.bykv.vk.openvk.preload.a.k) {
            return null;
        }
        com.bykv.vk.openvk.preload.a.h<T> hVar = this.f11077b;
        this.f11079d.b();
        return hVar.a();
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
        o<T> oVar = this.f11076a;
        if (oVar == null) {
            b().a(cVar, t10);
        } else if (t10 == null) {
            cVar.h();
        } else {
            this.f11079d.b();
            com.bykv.vk.openvk.preload.geckox.h.a.a(oVar.a(), cVar);
        }
    }
}
