package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzae  reason: invalid package */
/* loaded from: classes4.dex */
final class zzae {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, String str) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, Object obj2) {
        if (obj == null) {
            String valueOf = String.valueOf(obj2);
            throw new NullPointerException("null key in entry: null=" + valueOf);
        } else if (obj2 != null) {
        } else {
            String valueOf2 = String.valueOf(obj);
            throw new NullPointerException("null value in entry: " + valueOf2 + "=null");
        }
    }
}
