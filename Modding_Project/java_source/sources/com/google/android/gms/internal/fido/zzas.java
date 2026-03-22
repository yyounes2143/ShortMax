package com.google.android.gms.internal.fido;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
final class zzas {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, Object obj2) {
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
