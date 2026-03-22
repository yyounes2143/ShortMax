package com.explorestack.protobuf;
/* compiled from: ExtensionSchemas.java */
/* loaded from: classes3.dex */
final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static final z<?> f14292a = new b0();

    /* renamed from: b  reason: collision with root package name */
    private static final z<?> f14293b = c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z<?> a() {
        z<?> zVar = f14293b;
        if (zVar != null) {
            return zVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z<?> b() {
        return f14292a;
    }

    private static z<?> c() {
        try {
            int i10 = a0.f14214b;
            return (z) a0.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
