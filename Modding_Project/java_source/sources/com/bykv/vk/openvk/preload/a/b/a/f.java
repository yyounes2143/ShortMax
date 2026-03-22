package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;
/* compiled from: MapTypeAdapterFactory.java */
/* loaded from: classes3.dex */
public final class f implements s {

    /* renamed from: a  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b f11050a;

    public f(com.bykv.vk.openvk.preload.a.b.b bVar) {
        this.f11050a = bVar;
    }

    @Override // com.bykv.vk.openvk.preload.a.s
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        r<Boolean> rVar;
        Type b10 = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] b11 = com.bykv.vk.openvk.preload.a.b.a.b(b10, com.bykv.vk.openvk.preload.a.b.a.b(b10));
        Type type = b11[0];
        if (type != Boolean.TYPE && type != Boolean.class) {
            rVar = dVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type));
        } else {
            rVar = m.f11087c;
        }
        return new a(this, dVar, b11[0], rVar, b11[1], dVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(b11[1])), this.f11050a.a(aVar));
    }

    /* compiled from: MapTypeAdapterFactory.java */
    /* loaded from: classes3.dex */
    final class a<K, V> extends r<Map<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private final r<K> f11051a;

        /* renamed from: b  reason: collision with root package name */
        private final r<V> f11052b;

        /* renamed from: c  reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.h<? extends Map<K, V>> f11053c;

        public a(f fVar, com.bykv.vk.openvk.preload.a.d dVar, Type type, r<K> rVar, Type type2, r<V> rVar2, com.bykv.vk.openvk.preload.a.b.h<? extends Map<K, V>> hVar) {
            this.f11051a = new l(dVar, rVar, type);
            this.f11052b = new l(dVar, rVar2, type2);
            this.f11053c = hVar;
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map == null) {
                cVar.h();
                return;
            }
            cVar.f();
            for (Map.Entry<K, V> entry : map.entrySet()) {
                cVar.a(String.valueOf(entry.getKey()));
                this.f11052b.a(cVar, entry.getValue());
            }
            cVar.g();
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            com.bykv.vk.openvk.preload.a.d.b f10 = aVar.f();
            if (f10 == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            Map<K, V> a10 = this.f11053c.a();
            if (f10 == com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K a11 = this.f11051a.a(aVar);
                    if (a10.put(a11, this.f11052b.a(aVar)) == null) {
                        aVar.b();
                    } else {
                        throw new p("duplicate key: ".concat(String.valueOf(a11)));
                    }
                }
                aVar.b();
            } else {
                aVar.c();
                while (aVar.e()) {
                    com.bykv.vk.openvk.preload.a.b.e.f11155a.a(aVar);
                    K a12 = this.f11051a.a(aVar);
                    if (a10.put(a12, this.f11052b.a(aVar)) != null) {
                        throw new p("duplicate key: ".concat(String.valueOf(a12)));
                    }
                }
                aVar.d();
            }
            return a10;
        }
    }
}
