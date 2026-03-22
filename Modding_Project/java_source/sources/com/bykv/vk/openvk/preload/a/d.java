package com.bykv.vk.openvk.preload.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
/* compiled from: Gson.java */
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final com.bykv.vk.openvk.preload.a.c.a<?> f11188a = com.bykv.vk.openvk.preload.a.c.a.a(Object.class);

    /* renamed from: b  reason: collision with root package name */
    private final ThreadLocal<Map<com.bykv.vk.openvk.preload.a.c.a<?>, a<?>>> f11189b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<com.bykv.vk.openvk.preload.a.c.a<?>, r<?>> f11190c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b f11191d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.a.d f11192e;

    /* renamed from: f  reason: collision with root package name */
    private List<s> f11193f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f11194g;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d() {
        /*
            r7 = this;
            com.bykv.vk.openvk.preload.a.b.c r1 = com.bykv.vk.openvk.preload.a.b.c.f11142a
            com.bykv.vk.openvk.preload.a.b r2 = com.bykv.vk.openvk.preload.a.b.f11026a
            java.util.Map r3 = java.util.Collections.emptyMap()
            com.bykv.vk.openvk.preload.a.q r5 = com.bykv.vk.openvk.preload.a.q.f11249a
            java.util.Collections.emptyList()
            java.util.Collections.emptyList()
            java.util.List r6 = java.util.Collections.emptyList()
            r4 = 1
            r0 = r7
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.d.<init>():void");
    }

    static void a(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.f11193f + ",instanceCreators:" + this.f11191d + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Gson.java */
    /* loaded from: classes3.dex */
    public static class a<T> extends r<T> {

        /* renamed from: a  reason: collision with root package name */
        private r<T> f11197a;

        a() {
        }

        public final void a(r<T> rVar) {
            if (this.f11197a == null) {
                this.f11197a = rVar;
                return;
            }
            throw new AssertionError();
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            r<T> rVar = this.f11197a;
            if (rVar != null) {
                return rVar.a(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
            r<T> rVar = this.f11197a;
            if (rVar != null) {
                rVar.a(cVar, t10);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        boolean z10;
        r<T> rVar = (r<T>) this.f11190c.get(aVar == null ? f11188a : aVar);
        if (rVar != null) {
            return rVar;
        }
        Map<com.bykv.vk.openvk.preload.a.c.a<?>, a<?>> map = this.f11189b.get();
        if (map == null) {
            map = new HashMap<>();
            this.f11189b.set(map);
            z10 = true;
        } else {
            z10 = false;
        }
        a<?> aVar2 = map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map.put(aVar, aVar3);
            for (s sVar : this.f11193f) {
                r rVar2 = (r<T>) sVar.a(this, aVar);
                if (rVar2 != null) {
                    aVar3.a(rVar2);
                    this.f11190c.put(aVar, rVar2);
                    return rVar2;
                }
            }
            throw new IllegalArgumentException("GSON (pangle-v3200) cannot handle ".concat(String.valueOf(aVar)));
        } finally {
            map.remove(aVar);
            if (z10) {
                this.f11189b.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(com.bykv.vk.openvk.preload.a.b.c cVar, c cVar2, Map<Type, f<?>> map, boolean z10, q qVar, List<s> list) {
        final r<Number> rVar;
        this.f11189b = new ThreadLocal<>();
        this.f11190c = new ConcurrentHashMap();
        com.bykv.vk.openvk.preload.a.b.b bVar = new com.bykv.vk.openvk.preload.a.b.b(map);
        this.f11191d = bVar;
        this.f11194g = z10;
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.B);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.g.f11054a);
        arrayList.add(cVar);
        arrayList.addAll(list);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11100p);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11091g);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11088d);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11089e);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11090f);
        if (qVar == q.f11249a) {
            rVar = com.bykv.vk.openvk.preload.a.b.a.m.f11095k;
        } else {
            rVar = new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.d.3
                @Override // com.bykv.vk.openvk.preload.a.r
                public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, Number number) throws IOException {
                    Number number2 = number;
                    if (number2 == null) {
                        cVar3.h();
                    } else {
                        cVar3.b(number2.toString());
                    }
                }

                @Override // com.bykv.vk.openvk.preload.a.r
                public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                    if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                        aVar.j();
                        return null;
                    }
                    return Long.valueOf(aVar.l());
                }
            };
        }
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Long.TYPE, Long.class, rVar));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Double.TYPE, Double.class, new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.d.1
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar3.h();
                    return;
                }
                d.a(number2.doubleValue());
                cVar3.a(number2);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Double.valueOf(aVar.k());
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Float.TYPE, Float.class, new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.d.2
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar3.h();
                    return;
                }
                d.a(number2.floatValue());
                cVar3.a(number2);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Float.valueOf((float) aVar.k());
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11096l);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11092h);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11093i);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(AtomicLong.class, new r<AtomicLong>() { // from class: com.bykv.vk.openvk.preload.a.d.4
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, AtomicLong atomicLong) throws IOException {
                r.this.a(cVar3, Long.valueOf(atomicLong.get()));
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ AtomicLong a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return new AtomicLong(((Number) r.this.a(aVar)).longValue());
            }
        }.a()));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(AtomicLongArray.class, new r<AtomicLongArray>() { // from class: com.bykv.vk.openvk.preload.a.d.5
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar3, AtomicLongArray atomicLongArray) throws IOException {
                AtomicLongArray atomicLongArray2 = atomicLongArray;
                cVar3.d();
                int length = atomicLongArray2.length();
                for (int i10 = 0; i10 < length; i10++) {
                    r.this.a(cVar3, Long.valueOf(atomicLongArray2.get(i10)));
                }
                cVar3.e();
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ AtomicLongArray a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                ArrayList arrayList2 = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList2.add(Long.valueOf(((Number) r.this.a(aVar)).longValue()));
                }
                aVar.b();
                int size = arrayList2.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i10 = 0; i10 < size; i10++) {
                    atomicLongArray.set(i10, ((Long) arrayList2.get(i10)).longValue());
                }
                return atomicLongArray;
            }
        }.a()));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11094j);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11097m);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11101q);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11102r);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(BigDecimal.class, com.bykv.vk.openvk.preload.a.b.a.m.f11098n));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(BigInteger.class, com.bykv.vk.openvk.preload.a.b.a.m.f11099o));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11103s);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11104t);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11106v);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11107w);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11110z);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11105u);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11086b);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.c.f11044a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11109y);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.j.f11074a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.i.f11072a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11108x);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.a.f11033a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f11085a);
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.b(bVar));
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.f(bVar));
        com.bykv.vk.openvk.preload.a.b.a.d dVar = new com.bykv.vk.openvk.preload.a.b.a.d(bVar);
        this.f11192e = dVar;
        arrayList.add(dVar);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.C);
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.h(bVar, cVar2, cVar));
        this.f11193f = Collections.unmodifiableList(arrayList);
    }

    public final <T> r<T> a(s sVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        if (!this.f11193f.contains(sVar)) {
            sVar = this.f11192e;
        }
        boolean z10 = false;
        for (s sVar2 : this.f11193f) {
            if (z10) {
                r<T> a10 = sVar2.a(this, aVar);
                if (a10 != null) {
                    return a10;
                }
            } else if (sVar2 == sVar) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(aVar)));
    }

    public final <T> r<T> a(Class<T> cls) {
        return a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a((Class) cls));
    }

    public final String a(Object obj) {
        if (obj == null) {
            k kVar = k.f11246a;
            StringWriter stringWriter = new StringWriter();
            try {
                com.bykv.vk.openvk.preload.a.d.c a10 = a((Writer) stringWriter);
                boolean a11 = a10.a();
                a10.a(true);
                boolean b10 = a10.b();
                a10.b(this.f11194g);
                boolean c10 = a10.c();
                a10.c(false);
                try {
                    com.bykv.vk.openvk.preload.geckox.h.a.a(kVar, a10);
                    a10.a(a11);
                    a10.b(b10);
                    a10.c(c10);
                    return stringWriter.toString();
                } catch (IOException e10) {
                    throw new j(e10);
                } catch (AssertionError e11) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e11.getMessage());
                    assertionError.initCause(e11);
                    throw assertionError;
                }
            } catch (IOException e12) {
                throw new j(e12);
            }
        }
        Class<?> cls = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        try {
            com.bykv.vk.openvk.preload.a.d.c a12 = a((Writer) stringWriter2);
            r a13 = a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a((Type) cls));
            boolean a14 = a12.a();
            a12.a(true);
            boolean b11 = a12.b();
            a12.b(this.f11194g);
            boolean c11 = a12.c();
            a12.c(false);
            try {
                a13.a(a12, obj);
                a12.a(a14);
                a12.b(b11);
                a12.c(c11);
                return stringWriter2.toString();
            } catch (IOException e13) {
                throw new j(e13);
            } catch (AssertionError e14) {
                AssertionError assertionError2 = new AssertionError("AssertionError (GSON pangle-v3200): " + e14.getMessage());
                assertionError2.initCause(e14);
                throw assertionError2;
            }
        } catch (IOException e15) {
            throw new j(e15);
        }
    }

    private static com.bykv.vk.openvk.preload.a.d.c a(Writer writer) throws IOException {
        com.bykv.vk.openvk.preload.a.d.c cVar = new com.bykv.vk.openvk.preload.a.d.c(writer);
        cVar.c(false);
        return cVar;
    }

    private <T> T a(com.bykv.vk.openvk.preload.a.d.a aVar, Type type) throws j, p {
        boolean p10 = aVar.p();
        boolean z10 = true;
        aVar.a(true);
        try {
            try {
                try {
                    aVar.f();
                    z10 = false;
                    return a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type)).a(aVar);
                } catch (EOFException e10) {
                    if (z10) {
                        aVar.a(p10);
                        return null;
                    }
                    throw new p(e10);
                } catch (IllegalStateException e11) {
                    throw new p(e11);
                }
            } catch (IOException e12) {
                throw new p(e12);
            } catch (AssertionError e13) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e13.getMessage());
                assertionError.initCause(e13);
                throw assertionError;
            }
        } finally {
            aVar.a(p10);
        }
    }

    public final <T> T a(Reader reader, Type type) throws j, p {
        com.bykv.vk.openvk.preload.a.d.a aVar = new com.bykv.vk.openvk.preload.a.d.a(reader);
        aVar.a(false);
        T t10 = (T) a(aVar, type);
        if (t10 != null) {
            try {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.END_DOCUMENT) {
                    throw new j("JSON document was not fully consumed.");
                }
            } catch (com.bykv.vk.openvk.preload.a.d.d e10) {
                throw new p(e10);
            } catch (IOException e11) {
                throw new j(e11);
            }
        }
        return t10;
    }
}
