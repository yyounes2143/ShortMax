package com.google.common.collect;

import java.util.Arrays;
import java.util.Map;
/* compiled from: Platform.java */
/* loaded from: classes5.dex */
final class u {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] a(Object[] objArr, int i10, int i11, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i10, i11, tArr.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] b(T[] tArr, int i10) {
        if (tArr.length != 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 0);
        }
        return (T[]) Arrays.copyOf(tArr, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map<K, V> c(int i10) {
        return CompactHashMap.E(i10);
    }
}
