package com.explorestack.protobuf;
/* compiled from: Android.java */
/* loaded from: classes3.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f14333a;

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f14334b = a("libcore.io.Memory");

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f14335c;

    static {
        boolean z10;
        if (!f14333a && a("org.robolectric.Robolectric") != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        f14335c = z10;
    }

    private static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> b() {
        return f14334b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        if (!f14333a && (f14334b == null || f14335c)) {
            return false;
        }
        return true;
    }
}
