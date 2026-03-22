package com.google.android.recaptcha.internal;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzkk {
    public static long zza(long j10, long j11) {
        boolean z10;
        boolean z11 = false;
        if ((j10 ^ j11) < 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j12 = j10 + j11;
        if ((j10 ^ j12) >= 0) {
            z11 = true;
        }
        zzkl.zza(z10 | z11, "checkedAdd", j10, j11);
        return j12;
    }

    public static long zzb(long j10, long j11) {
        boolean z10;
        boolean z11 = false;
        if ((1 ^ j10) >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j12 = (-1) + j10;
        if ((j10 ^ j12) >= 0) {
            z11 = true;
        }
        zzkl.zza(z10 | z11, "checkedSubtract", j10, 1L);
        return j12;
    }
}
