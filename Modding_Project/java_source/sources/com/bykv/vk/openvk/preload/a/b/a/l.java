package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.b.a.h;
import com.bykv.vk.openvk.preload.a.r;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypeAdapterRuntimeTypeWrapper.java */
/* loaded from: classes3.dex */
public final class l<T> extends r<T> {

    /* renamed from: a  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.d f11082a;

    /* renamed from: b  reason: collision with root package name */
    private final r<T> f11083b;

    /* renamed from: c  reason: collision with root package name */
    private final Type f11084c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(com.bykv.vk.openvk.preload.a.d dVar, r<T> rVar, Type type) {
        this.f11082a = dVar;
        this.f11083b = rVar;
        this.f11084c = type;
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        return this.f11083b.a(aVar);
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
        r<T> rVar = this.f11083b;
        Type type = this.f11084c;
        if (t10 != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t10.getClass();
        }
        if (type != this.f11084c) {
            rVar = this.f11082a.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type));
            if (rVar instanceof h.a) {
                r<T> rVar2 = this.f11083b;
                if (!(rVar2 instanceof h.a)) {
                    rVar = rVar2;
                }
            }
        }
        rVar.a(cVar, t10);
    }
}
