package com.bykv.vk.openvk.preload.a.c;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* compiled from: TypeToken.java */
/* loaded from: classes3.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private Class<? super T> f11185a;

    /* renamed from: b  reason: collision with root package name */
    private Type f11186b;

    /* renamed from: c  reason: collision with root package name */
    private int f11187c;

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            Type a10 = com.bykv.vk.openvk.preload.a.b.a.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
            this.f11186b = a10;
            this.f11185a = (Class<? super T>) com.bykv.vk.openvk.preload.a.b.a.b(a10);
            this.f11187c = this.f11186b.hashCode();
            return;
        }
        throw new RuntimeException("Missing type parameter.");
    }

    public final Class<? super T> a() {
        return this.f11185a;
    }

    public final Type b() {
        return this.f11186b;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof a) && com.bykv.vk.openvk.preload.a.b.a.a(this.f11186b, ((a) obj).f11186b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f11187c;
    }

    public final String toString() {
        return com.bykv.vk.openvk.preload.a.b.a.c(this.f11186b);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls);
    }

    private a(Type type) {
        Type a10 = com.bykv.vk.openvk.preload.a.b.a.a((Type) com.bykv.vk.openvk.preload.falconx.a.a.a(type));
        this.f11186b = a10;
        this.f11185a = (Class<? super T>) com.bykv.vk.openvk.preload.a.b.a.b(a10);
        this.f11187c = this.f11186b.hashCode();
    }
}
