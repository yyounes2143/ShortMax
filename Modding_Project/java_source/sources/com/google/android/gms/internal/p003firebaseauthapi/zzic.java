package com.google.android.gms.internal.p003firebaseauthapi;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.Arrays;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzic  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzic {
    private static long zza(byte[] bArr, int i10, int i11) {
        return (zza(bArr, i10) >> i11) & 67108863;
    }

    private static long zza(byte[] bArr, int i10) {
        return (((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16)) & 4294967295L;
    }

    private static void zza(byte[] bArr, long j10, int i10) {
        int i11 = 0;
        while (i11 < 4) {
            bArr[i10 + i11] = (byte) (255 & j10);
            i11++;
            j10 >>= 8;
        }
    }

    public static byte[] zza(byte[] bArr, byte[] bArr2) {
        if (bArr.length == 32) {
            long zza = zza(bArr, 0, 0) & 67108863;
            long zza2 = zza(bArr, 3, 2) & 67108611;
            long zza3 = zza(bArr, 6, 4) & 67092735;
            long zza4 = zza(bArr, 9, 6) & 66076671;
            long zza5 = zza(bArr, 12, 8) & 1048575;
            long j10 = zza2 * 5;
            long j11 = zza3 * 5;
            long j12 = zza4 * 5;
            long j13 = zza5 * 5;
            int i10 = 17;
            byte[] bArr3 = new byte[17];
            long j14 = 0;
            int i11 = 0;
            long j15 = 0;
            long j16 = 0;
            long j17 = 0;
            long j18 = 0;
            while (i11 < bArr2.length) {
                int min = Math.min(16, bArr2.length - i11);
                System.arraycopy(bArr2, i11, bArr3, 0, min);
                bArr3[min] = 1;
                if (min != 16) {
                    Arrays.fill(bArr3, min + 1, i10, (byte) 0);
                }
                long zza6 = j18 + zza(bArr3, 0, 0);
                long zza7 = j14 + zza(bArr3, 3, 2);
                long zza8 = j15 + zza(bArr3, 6, 4);
                long zza9 = j16 + zza(bArr3, 9, 6);
                long zza10 = j17 + (zza(bArr3, 12, 8) | (bArr3[16] << 24));
                long j19 = (zza6 * zza) + (zza7 * j13) + (zza8 * j12) + (zza9 * j11) + (zza10 * j10);
                long j20 = (zza6 * zza2) + (zza7 * zza) + (zza8 * j13) + (zza9 * j12) + (zza10 * j11) + (j19 >> 26);
                long j21 = (zza6 * zza3) + (zza7 * zza2) + (zza8 * zza) + (zza9 * j13) + (zza10 * j12) + (j20 >> 26);
                long j22 = (zza6 * zza4) + (zza7 * zza3) + (zza8 * zza2) + (zza9 * zza) + (zza10 * j13) + (j21 >> 26);
                long j23 = (zza6 * zza5) + (zza7 * zza4) + (zza8 * zza3) + (zza9 * zza2) + (zza10 * zza) + (j22 >> 26);
                long j24 = (j19 & 67108863) + ((j23 >> 26) * 5);
                j14 = (j20 & 67108863) + (j24 >> 26);
                i11 += 16;
                j15 = j21 & 67108863;
                j16 = j22 & 67108863;
                j17 = j23 & 67108863;
                i10 = 17;
                j18 = j24 & 67108863;
            }
            long j25 = j15 + (j14 >> 26);
            long j26 = j25 & 67108863;
            long j27 = j16 + (j25 >> 26);
            long j28 = j27 & 67108863;
            long j29 = j17 + (j27 >> 26);
            long j30 = j29 & 67108863;
            long j31 = j18 + ((j29 >> 26) * 5);
            long j32 = j31 & 67108863;
            long j33 = (j14 & 67108863) + (j31 >> 26);
            long j34 = j32 + 5;
            long j35 = j34 & 67108863;
            long j36 = (j34 >> 26) + j33;
            long j37 = j26 + (j36 >> 26);
            long j38 = j28 + (j37 >> 26);
            long j39 = (j30 + (j38 >> 26)) - 67108864;
            long j40 = j39 >> 63;
            long j41 = ~j40;
            long j42 = (j32 & j40) | (j35 & j41);
            long j43 = (j33 & j40) | (j36 & 67108863 & j41);
            long j44 = (j26 & j40) | (j37 & 67108863 & j41);
            long j45 = (j28 & j40) | (j38 & 67108863 & j41);
            long j46 = ((j39 & j41) | (j30 & j40)) << 8;
            long zza11 = (((j43 << 26) | j42) & 4294967295L) + zza(bArr, 16);
            long j47 = zza11 & 4294967295L;
            long zza12 = (((j43 >> 6) | (j44 << 20)) & 4294967295L) + zza(bArr, 20) + (zza11 >> 32);
            long zza13 = (((j44 >> 12) | (j45 << 14)) & 4294967295L) + zza(bArr, 24) + (zza12 >> 32);
            byte[] bArr4 = new byte[16];
            zza(bArr4, j47, 0);
            zza(bArr4, zza12 & 4294967295L, 4);
            zza(bArr4, zza13 & 4294967295L, 8);
            zza(bArr4, (((j46 | (j45 >> 18)) & 4294967295L) + zza(bArr, 28) + (zza13 >> 32)) & 4294967295L, 12);
            return bArr4;
        }
        throw new IllegalArgumentException("The key length in bytes must be 32.");
    }
}
