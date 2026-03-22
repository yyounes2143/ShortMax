package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfxn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, String str) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 != null) {
                return;
            }
            String obj3 = obj.toString();
            throw new NullPointerException("null value in entry: " + obj3 + "=null");
        }
        throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
    }
}
