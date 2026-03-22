package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* compiled from: CollectionTypeAdapterFactory.java */
/* loaded from: classes3.dex */
public final class b implements s {

    /* renamed from: a  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b f11038a;

    public b(com.bykv.vk.openvk.preload.a.b.b bVar) {
        this.f11038a = bVar;
    }

    @Override // com.bykv.vk.openvk.preload.a.s
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Type b10 = aVar.b();
        Class<? super T> a10 = aVar.a();
        if (!Collection.class.isAssignableFrom(a10)) {
            return null;
        }
        Type a11 = com.bykv.vk.openvk.preload.a.b.a.a(b10, (Class<?>) a10);
        return new a(dVar, a11, dVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(a11)), this.f11038a.a(aVar));
    }

    /* compiled from: CollectionTypeAdapterFactory.java */
    /* loaded from: classes3.dex */
    static final class a<E> extends r<Collection<E>> {

        /* renamed from: a  reason: collision with root package name */
        private final r<E> f11042a;

        /* renamed from: b  reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.h<? extends Collection<E>> f11043b;

        public a(com.bykv.vk.openvk.preload.a.d dVar, Type type, r<E> rVar, com.bykv.vk.openvk.preload.a.b.h<? extends Collection<E>> hVar) {
            this.f11042a = new l(dVar, rVar, type);
            this.f11043b = hVar;
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Collection<E> collection = (Collection) obj;
            if (collection == null) {
                cVar.h();
                return;
            }
            cVar.d();
            for (E e10 : collection) {
                this.f11042a.a(cVar, e10);
            }
            cVar.e();
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            Collection<E> a10 = this.f11043b.a();
            aVar.a();
            while (aVar.e()) {
                a10.add(this.f11042a.a(aVar));
            }
            aVar.b();
            return a10;
        }
    }
}
