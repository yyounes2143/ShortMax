package com.google.protobuf;
/* compiled from: Android.java */
/* loaded from: classes5.dex */
final class b {
    private static boolean ASSUME_ANDROID;
    private static final Class<?> MEMORY_CLASS = getClassForName("libcore.io.Memory");
    private static final boolean IS_ROBOLECTRIC = false;

    private b() {
    }

    private static <T> Class<T> getClassForName(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> getMemoryClass() {
        return MEMORY_CLASS;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isOnAndroidDevice() {
        return true;
    }
}
