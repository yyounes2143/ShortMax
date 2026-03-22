package com.google.android.gms.internal.ads;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgbo {
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
        if (z10 | z11) {
            return j12;
        }
        throw new ArithmeticException("overflow: checkedAdd(" + j10 + ", " + j11 + ")");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
        if (r8 > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
        if (r8 < 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long zzb(long r8, long r10, java.math.RoundingMode r12) {
        /*
            r12.getClass()
            long r0 = r8 / r10
            long r2 = r10 * r0
            long r2 = r8 - r2
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L10
            goto L55
        L10:
            long r8 = r8 ^ r10
            int[] r6 = com.google.android.gms.internal.ads.zzgbn.zza
            int r7 = r12.ordinal()
            r6 = r6[r7]
            r7 = 63
            long r8 = r8 >> r7
            int r8 = (int) r8
            r8 = r8 | 1
            switch(r6) {
                case 1: goto L51;
                case 2: goto L55;
                case 3: goto L4c;
                case 4: goto L4e;
                case 5: goto L49;
                case 6: goto L28;
                case 7: goto L28;
                case 8: goto L28;
                default: goto L22;
            }
        L22:
            java.lang.AssertionError r8 = new java.lang.AssertionError
            r8.<init>()
            throw r8
        L28:
            long r2 = java.lang.Math.abs(r2)
            long r9 = java.lang.Math.abs(r10)
            long r9 = r9 - r2
            long r2 = r2 - r9
            int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r9 != 0) goto L46
            java.math.RoundingMode r9 = java.math.RoundingMode.HALF_UP
            if (r12 == r9) goto L4e
            java.math.RoundingMode r9 = java.math.RoundingMode.HALF_EVEN
            if (r12 != r9) goto L55
            r9 = 1
            long r9 = r9 & r0
            int r9 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r9 == 0) goto L55
            goto L4e
        L46:
            if (r9 <= 0) goto L55
            goto L4e
        L49:
            if (r8 <= 0) goto L55
            goto L4e
        L4c:
            if (r8 >= 0) goto L55
        L4e:
            long r8 = (long) r8
            long r0 = r0 + r8
            return r0
        L51:
            r8 = 0
            com.google.android.gms.internal.ads.zzgbp.zzb(r8)
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgbo.zzb(long, long, java.math.RoundingMode):long");
    }

    public static long zzc(long j10, long j11) {
        zzgbp.zza("a", j10);
        zzgbp.zza(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, j11);
        if (j10 == 0) {
            return j11;
        }
        if (j11 == 0) {
            return j10;
        }
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j10);
        long j12 = j10 >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j11);
        long j13 = j11 >> numberOfTrailingZeros2;
        while (j12 != j13) {
            long j14 = j12 - j13;
            long j15 = (j14 >> 63) & j14;
            long j16 = (j14 - j15) - j15;
            j12 = j16 >> Long.numberOfTrailingZeros(j16);
            j13 += j15;
        }
        return j12 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static long zzd(long j10, long j11) {
        boolean z10;
        boolean z11;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(j10) + Long.numberOfLeadingZeros(~j10) + Long.numberOfLeadingZeros(j11) + Long.numberOfLeadingZeros(~j11);
        if (numberOfLeadingZeros > 65) {
            return j10 * j11;
        }
        long j12 = j10 ^ j11;
        boolean z12 = false;
        if (numberOfLeadingZeros < 64) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 < 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (j11 == Long.MIN_VALUE) {
            z12 = true;
        }
        long j13 = (j12 >>> 63) + Long.MAX_VALUE;
        if (z10 | (z12 & z11)) {
            return j13;
        }
        long j14 = j10 * j11;
        if (i10 != 0 && j14 / j10 != j11) {
            return j13;
        }
        return j14;
    }
}
