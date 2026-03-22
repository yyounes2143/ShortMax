package com.bykv.vk.openvk.preload.a.b;

import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
/* compiled from: Excluder.java */
/* loaded from: classes3.dex */
public final class c implements s, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final c f11142a = new c();

    /* renamed from: b  reason: collision with root package name */
    private double f11143b = -1.0d;

    /* renamed from: c  reason: collision with root package name */
    private int f11144c = 136;

    /* renamed from: d  reason: collision with root package name */
    private boolean f11145d = true;

    /* renamed from: e  reason: collision with root package name */
    private List<com.bykv.vk.openvk.preload.geckox.a.a.c> f11146e = Collections.emptyList();

    /* renamed from: f  reason: collision with root package name */
    private List<com.bykv.vk.openvk.preload.geckox.a.a.c> f11147f = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public c clone() {
        try {
            return (c) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    private static boolean b(Class<?> cls) {
        if (!Enum.class.isAssignableFrom(cls)) {
            if (cls.isAnonymousClass() || cls.isLocalClass()) {
                return true;
            }
            return false;
        }
        return false;
    }

    private static boolean c(Class<?> cls) {
        if (cls.isMemberClass() && !d(cls)) {
            return true;
        }
        return false;
    }

    private static boolean d(Class<?> cls) {
        if ((cls.getModifiers() & 8) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.preload.a.s
    public final <T> r<T> a(final com.bykv.vk.openvk.preload.a.d dVar, final com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        boolean a10 = a(aVar.a());
        final boolean z10 = a10 || a(true);
        final boolean z11 = a10 || a(false);
        if (z10 || z11) {
            return new r<T>() { // from class: com.bykv.vk.openvk.preload.a.b.c.1

                /* renamed from: a  reason: collision with root package name */
                private r<T> f11148a;

                private r<T> b() {
                    r<T> rVar = this.f11148a;
                    if (rVar != null) {
                        return rVar;
                    }
                    r<T> a11 = dVar.a(c.this, aVar);
                    this.f11148a = a11;
                    return a11;
                }

                @Override // com.bykv.vk.openvk.preload.a.r
                public final T a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                    if (z11) {
                        aVar2.n();
                        return null;
                    }
                    return b().a(aVar2);
                }

                @Override // com.bykv.vk.openvk.preload.a.r
                public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
                    if (z10) {
                        cVar.h();
                    } else {
                        b().a(cVar, t10);
                    }
                }
            };
        }
        return null;
    }

    public final boolean a(Field field, boolean z10) {
        if ((this.f11144c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f11143b == -1.0d || a((com.bykv.vk.openvk.preload.a.a.c) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.c.class), (com.bykv.vk.openvk.preload.a.a.d) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.d.class))) && !field.isSynthetic()) {
            if ((this.f11145d || !c(field.getType())) && !b(field.getType())) {
                List<com.bykv.vk.openvk.preload.geckox.a.a.c> list = z10 ? this.f11146e : this.f11147f;
                if (list.isEmpty()) {
                    return false;
                }
                new com.bykv.vk.openvk.preload.geckox.a.c(field);
                for (com.bykv.vk.openvk.preload.geckox.a.a.c cVar : list) {
                    if (cVar.b()) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    private boolean a(Class<?> cls) {
        if (this.f11143b == -1.0d || a((com.bykv.vk.openvk.preload.a.a.c) cls.getAnnotation(com.bykv.vk.openvk.preload.a.a.c.class), (com.bykv.vk.openvk.preload.a.a.d) cls.getAnnotation(com.bykv.vk.openvk.preload.a.a.d.class))) {
            return (!this.f11145d && c(cls)) || b(cls);
        }
        return true;
    }

    public final boolean a(Class<?> cls, boolean z10) {
        return a(cls) || a(z10);
    }

    private boolean a(boolean z10) {
        for (com.bykv.vk.openvk.preload.geckox.a.a.c cVar : z10 ? this.f11146e : this.f11147f) {
            if (cVar.c()) {
                return true;
            }
        }
        return false;
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.c cVar, com.bykv.vk.openvk.preload.a.a.d dVar) {
        return a(cVar) && a(dVar);
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.c cVar) {
        return cVar == null || cVar.a() <= this.f11143b;
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.d dVar) {
        return dVar == null || dVar.a() > this.f11143b;
    }
}
