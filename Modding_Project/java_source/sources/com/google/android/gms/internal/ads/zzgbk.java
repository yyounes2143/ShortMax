package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgbk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zza(double d10) {
        zzfvp.zzf(zzb(d10), "not a normal value");
        int exponent = Math.getExponent(d10);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10) & 4503599627370495L;
        if (exponent == -1023) {
            return doubleToRawLongBits + doubleToRawLongBits;
        }
        return doubleToRawLongBits | 4503599627370496L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzb(double d10) {
        if (Math.getExponent(d10) <= 1023) {
            return true;
        }
        return false;
    }
}
