package com.bykv.vk.openvk.preload.a.b;

import com.bykv.vk.openvk.preload.a.j;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
/* compiled from: ConstructorConstructor.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Type, com.bykv.vk.openvk.preload.a.f<?>> f11129a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b.b f11130b = com.bykv.vk.openvk.preload.a.b.b.b.a();

    public b(Map<Type, com.bykv.vk.openvk.preload.a.f<?>> map) {
        this.f11129a = map;
    }

    public final <T> h<T> a(com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        h<T> hVar;
        final Type b10 = aVar.b();
        final Class<? super T> a10 = aVar.a();
        final com.bykv.vk.openvk.preload.a.f<?> fVar = this.f11129a.get(b10);
        if (fVar != null) {
            return new h<T>() { // from class: com.bykv.vk.openvk.preload.a.b.b.1
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final T a() {
                    return (T) com.bykv.vk.openvk.preload.a.f.this.a();
                }
            };
        }
        final com.bykv.vk.openvk.preload.a.f<?> fVar2 = this.f11129a.get(a10);
        if (fVar2 != null) {
            return new h<T>() { // from class: com.bykv.vk.openvk.preload.a.b.b.7
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final T a() {
                    return (T) com.bykv.vk.openvk.preload.a.f.this.a();
                }
            };
        }
        h<T> a11 = a(a10);
        if (a11 != null) {
            return a11;
        }
        if (Collection.class.isAssignableFrom(a10)) {
            if (SortedSet.class.isAssignableFrom(a10)) {
                hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.9
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        return new TreeSet();
                    }
                };
            } else if (EnumSet.class.isAssignableFrom(a10)) {
                hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.10
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        Type type = b10;
                        if (type instanceof ParameterizedType) {
                            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                            if (type2 instanceof Class) {
                                return EnumSet.noneOf((Class) type2);
                            }
                            throw new j("Invalid EnumSet type: " + b10.toString());
                        }
                        throw new j("Invalid EnumSet type: " + b10.toString());
                    }
                };
            } else if (Set.class.isAssignableFrom(a10)) {
                hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.11
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        return new LinkedHashSet();
                    }
                };
            } else if (Queue.class.isAssignableFrom(a10)) {
                hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.12
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        return new ArrayDeque();
                    }
                };
            } else {
                hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.13
                    @Override // com.bykv.vk.openvk.preload.a.b.h
                    public final Object a() {
                        return new ArrayList();
                    }
                };
            }
        } else if (!Map.class.isAssignableFrom(a10)) {
            hVar = null;
        } else if (ConcurrentNavigableMap.class.isAssignableFrom(a10)) {
            hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.14
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new ConcurrentSkipListMap();
                }
            };
        } else if (ConcurrentMap.class.isAssignableFrom(a10)) {
            hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.2
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new ConcurrentHashMap();
                }
            };
        } else if (SortedMap.class.isAssignableFrom(a10)) {
            hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.3
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new TreeMap();
                }
            };
        } else if ((b10 instanceof ParameterizedType) && !String.class.isAssignableFrom(com.bykv.vk.openvk.preload.a.c.a.a(((ParameterizedType) b10).getActualTypeArguments()[0]).a())) {
            hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.4
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new LinkedHashMap();
                }
            };
        } else {
            hVar = new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.5
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final Object a() {
                    return new g();
                }
            };
        }
        return hVar != null ? hVar : new h() { // from class: com.bykv.vk.openvk.preload.a.b.b.6

            /* renamed from: a  reason: collision with root package name */
            private final i f11133a = i.a();

            @Override // com.bykv.vk.openvk.preload.a.b.h
            public final Object a() {
                try {
                    return this.f11133a.a(a10);
                } catch (Exception e10) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + b10 + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e10);
                }
            }
        };
    }

    public final String toString() {
        return this.f11129a.toString();
    }

    private <T> h<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f11130b.a(declaredConstructor);
            }
            return new h<T>() { // from class: com.bykv.vk.openvk.preload.a.b.b.8
                @Override // com.bykv.vk.openvk.preload.a.b.h
                public final T a() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e10) {
                        throw new AssertionError(e10);
                    } catch (InstantiationException e11) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e11);
                    } catch (InvocationTargetException e12) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e12.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }
}
