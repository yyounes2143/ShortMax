package com.google.android.recaptcha.internal;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzkl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(boolean z10, String str, long j10, long j11) {
        if (z10) {
            return;
        }
        throw new ArithmeticException("overflow: " + str + "(" + j10 + ", " + j11 + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(boolean z10) {
        if (z10) {
            return;
        }
        throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
    }
}
