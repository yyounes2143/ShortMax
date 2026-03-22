package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgbw {
    public static long[] zza(long[]... jArr) {
        boolean z10;
        long j10 = 0;
        for (long[] jArr2 : jArr) {
            j10 += jArr2.length;
        }
        int i10 = (int) j10;
        if (j10 == i10) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzfvp.zzh(z10, "the total number of elements (%s) in the arrays must fit in an int", j10);
        long[] jArr3 = new long[i10];
        int i11 = 0;
        for (long[] jArr4 : jArr) {
            int length = jArr4.length;
            System.arraycopy(jArr4, 0, jArr3, i11, length);
            i11 += length;
        }
        return jArr3;
    }
}
