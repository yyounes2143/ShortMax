package com.google.common.collect;
/* compiled from: CollectPreconditions.java */
/* loaded from: classes5.dex */
final class d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 != null) {
                return;
            }
            throw new NullPointerException("null value in entry: " + obj + "=null");
        }
        throw new NullPointerException("null key in entry: null=" + obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i10, String str) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(boolean z10) {
        h7.k.p(z10, "no calls to next() since the last call to remove()");
    }
}
