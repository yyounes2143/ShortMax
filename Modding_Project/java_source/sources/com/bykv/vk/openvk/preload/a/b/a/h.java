package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: ReflectiveTypeAdapterFactory.java */
/* loaded from: classes3.dex */
public final class h implements s {

    /* renamed from: a  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b f11057a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.c f11058b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.c f11059c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b.b f11060d = com.bykv.vk.openvk.preload.a.b.b.b.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReflectiveTypeAdapterFactory.java */
    /* loaded from: classes3.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        final String f11069a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f11070b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f11071c;

        protected b(String str, boolean z10, boolean z11) {
            this.f11069a = str;
            this.f11070b = z10;
            this.f11071c = z11;
        }

        abstract void a(com.bykv.vk.openvk.preload.a.d.a aVar, Object obj) throws IOException, IllegalAccessException;

        abstract void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException, IllegalAccessException;

        abstract boolean a(Object obj) throws IOException, IllegalAccessException;
    }

    public h(com.bykv.vk.openvk.preload.a.b.b bVar, com.bykv.vk.openvk.preload.a.c cVar, com.bykv.vk.openvk.preload.a.b.c cVar2) {
        this.f11057a = bVar;
        this.f11058b = cVar;
        this.f11059c = cVar2;
    }

    private boolean a(Field field, boolean z10) {
        com.bykv.vk.openvk.preload.a.b.c cVar = this.f11059c;
        return (cVar.a(field.getType(), z10) || cVar.a(field, z10)) ? false : true;
    }

    private List<String> a(Field field) {
        com.bykv.vk.openvk.preload.a.a.b bVar = (com.bykv.vk.openvk.preload.a.a.b) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.b.class);
        if (bVar == null) {
            return Collections.singletonList(this.f11058b.a(field));
        }
        String a10 = bVar.a();
        String[] b10 = bVar.b();
        if (b10.length == 0) {
            return Collections.singletonList(a10);
        }
        ArrayList arrayList = new ArrayList(b10.length + 1);
        arrayList.add(a10);
        for (String str : b10) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* compiled from: ReflectiveTypeAdapterFactory.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends r<T> {

        /* renamed from: a  reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.h<T> f11067a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, b> f11068b;

        a(com.bykv.vk.openvk.preload.a.b.h<T> hVar, Map<String, b> map) {
            this.f11067a = hVar;
            this.f11068b = map;
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            T a10 = this.f11067a.a();
            try {
                aVar.c();
                while (aVar.e()) {
                    b bVar = this.f11068b.get(aVar.g());
                    if (bVar != null && bVar.f11071c) {
                        bVar.a(aVar, a10);
                    }
                    aVar.n();
                }
                aVar.d();
                return a10;
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (IllegalStateException e11) {
                throw new p(e11);
            }
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
            if (t10 == null) {
                cVar.h();
                return;
            }
            cVar.f();
            try {
                for (b bVar : this.f11068b.values()) {
                    if (bVar.a(t10)) {
                        cVar.a(bVar.f11069a);
                        bVar.a(cVar, t10);
                    }
                }
                cVar.g();
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.s
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Class<? super T> a10 = aVar.a();
        if (Object.class.isAssignableFrom(a10)) {
            return new a(this.f11057a.a(aVar), a(dVar, aVar, a10));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    private Map<String, b> a(final com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<?> aVar, Class<?> cls) {
        Class<?> cls2;
        int i10;
        boolean z10;
        int i11;
        Field[] fieldArr;
        com.bykv.vk.openvk.preload.a.c.a<?> aVar2;
        h hVar = this;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type b10 = aVar.b();
        com.bykv.vk.openvk.preload.a.c.a<?> aVar3 = aVar;
        Class<?> cls3 = cls;
        while (cls3 != Object.class) {
            Field[] declaredFields = cls3.getDeclaredFields();
            int length = declaredFields.length;
            boolean z11 = false;
            int i12 = 0;
            while (i12 < length) {
                Field field = declaredFields[i12];
                boolean z12 = true;
                boolean a10 = hVar.a(field, true);
                boolean a11 = hVar.a(field, z11);
                if (a10 || a11) {
                    hVar.f11060d.a(field);
                    Type a12 = com.bykv.vk.openvk.preload.a.b.a.a(aVar3.b(), cls3, field.getGenericType());
                    List<String> a13 = hVar.a(field);
                    int size = a13.size();
                    int i13 = z11;
                    cls2 = cls3;
                    b bVar = null;
                    while (i13 < size) {
                        com.bykv.vk.openvk.preload.a.c.a<?> aVar4 = aVar3;
                        String str = a13.get(i13);
                        boolean z13 = i13 != 0 ? z11 : a10;
                        final com.bykv.vk.openvk.preload.a.c.a<?> a14 = com.bykv.vk.openvk.preload.a.c.a.a(a12);
                        Class<? super Object> a15 = a14.a();
                        boolean z14 = (a15 == null || !a15.isPrimitive()) ? z11 : z12;
                        com.bykv.vk.openvk.preload.a.a.a aVar5 = (com.bykv.vk.openvk.preload.a.a.a) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.a.class);
                        r<?> a16 = aVar5 != null ? d.a(hVar.f11057a, dVar, a14, aVar5) : null;
                        boolean z15 = a16 != null;
                        if (a16 == null) {
                            a16 = dVar.a((com.bykv.vk.openvk.preload.a.c.a) a14);
                        }
                        final r<?> rVar = a16;
                        int i14 = i13;
                        int i15 = size;
                        List<String> list = a13;
                        final Field field2 = field;
                        Field field3 = field;
                        final boolean z16 = z15;
                        int i16 = i12;
                        int i17 = length;
                        Field[] fieldArr2 = declaredFields;
                        final boolean z17 = z14;
                        b bVar2 = (b) linkedHashMap.put(str, new b(str, z13, a11) { // from class: com.bykv.vk.openvk.preload.a.b.a.h.1
                            @Override // com.bykv.vk.openvk.preload.a.b.a.h.b
                            final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException, IllegalAccessException {
                                (z16 ? rVar : new l(dVar, rVar, a14.b())).a(cVar, field2.get(obj));
                            }

                            @Override // com.bykv.vk.openvk.preload.a.b.a.h.b
                            final void a(com.bykv.vk.openvk.preload.a.d.a aVar6, Object obj) throws IOException, IllegalAccessException {
                                Object a17 = rVar.a(aVar6);
                                if (a17 == null && z17) {
                                    return;
                                }
                                field2.set(obj, a17);
                            }

                            @Override // com.bykv.vk.openvk.preload.a.b.a.h.b
                            public final boolean a(Object obj) throws IOException, IllegalAccessException {
                                return this.f11070b && field2.get(obj) != obj;
                            }
                        });
                        if (bVar == null) {
                            bVar = bVar2;
                        }
                        hVar = this;
                        aVar3 = aVar4;
                        a10 = z13;
                        z12 = true;
                        z11 = false;
                        length = i17;
                        declaredFields = fieldArr2;
                        size = i15;
                        a13 = list;
                        field = field3;
                        i12 = i16;
                        i13 = i14 + 1;
                    }
                    i10 = i12;
                    z10 = z11;
                    i11 = length;
                    fieldArr = declaredFields;
                    aVar2 = aVar3;
                    if (bVar != null) {
                        throw new IllegalArgumentException(b10 + " declares multiple JSON fields named " + bVar.f11069a);
                    }
                } else {
                    i10 = i12;
                    z10 = z11;
                    i11 = length;
                    fieldArr = declaredFields;
                    aVar2 = aVar3;
                    cls2 = cls3;
                }
                i12 = i10 + 1;
                hVar = this;
                cls3 = cls2;
                aVar3 = aVar2;
                z11 = z10;
                length = i11;
                declaredFields = fieldArr;
            }
            Class<?> cls4 = cls3;
            aVar3 = com.bykv.vk.openvk.preload.a.c.a.a(com.bykv.vk.openvk.preload.a.b.a.a(aVar3.b(), cls4, cls4.getGenericSuperclass()));
            cls3 = aVar3.a();
            hVar = this;
        }
        return linkedHashMap;
    }
}
