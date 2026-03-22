package com.explorestack.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExtensionRegistryFactory.java */
/* loaded from: classes3.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    static final Class<?> f14701a = c();

    public static y a() {
        y b10 = b("getEmptyRegistry");
        if (b10 == null) {
            return y.f14707e;
        }
        return b10;
    }

    private static final y b(String str) {
        Class<?> cls = f14701a;
        if (cls == null) {
            return null;
        }
        try {
            return (y) cls.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static Class<?> c() {
        try {
            w wVar = w.f14692j;
            return w.class;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
