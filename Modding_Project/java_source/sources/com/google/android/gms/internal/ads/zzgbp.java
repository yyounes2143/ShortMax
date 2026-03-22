package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgbp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zza(String str, long j10) {
        if (j10 >= 0) {
            return j10;
        }
        throw new IllegalArgumentException(str + " (" + j10 + ") must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(boolean z10) {
        if (z10) {
            return;
        }
        throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
    }
}
