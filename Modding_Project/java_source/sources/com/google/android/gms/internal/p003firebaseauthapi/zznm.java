package com.google.android.gms.internal.p003firebaseauthapi;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.Arrays;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zznm  reason: invalid package */
/* loaded from: classes4.dex */
public final class zznm {
    private static final int[] zza = {0, 3, 6, 9, 12, 16, 19, 22, 25, 28};
    private static final int[] zzb = {0, 2, 3, 5, 6, 0, 1, 3, 4, 6};
    private static final int[] zzc = {67108863, 33554431};
    private static final int[] zzd = {26, 25};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[10];
        long[] jArr4 = new long[10];
        long[] jArr5 = new long[10];
        long[] jArr6 = new long[10];
        long[] jArr7 = new long[10];
        long[] jArr8 = new long[10];
        long[] jArr9 = new long[10];
        long[] jArr10 = new long[10];
        long[] jArr11 = new long[10];
        long[] jArr12 = new long[10];
        zzb(jArr3, jArr2);
        zzb(jArr12, jArr3);
        zzb(jArr11, jArr12);
        zza(jArr4, jArr11, jArr2);
        zza(jArr5, jArr4, jArr3);
        zzb(jArr11, jArr5);
        zza(jArr6, jArr11, jArr4);
        zzb(jArr11, jArr6);
        zzb(jArr12, jArr11);
        zzb(jArr11, jArr12);
        zzb(jArr12, jArr11);
        zzb(jArr11, jArr12);
        zza(jArr7, jArr11, jArr6);
        zzb(jArr11, jArr7);
        zzb(jArr12, jArr11);
        for (int i10 = 2; i10 < 10; i10 += 2) {
            zzb(jArr11, jArr12);
            zzb(jArr12, jArr11);
        }
        zza(jArr8, jArr12, jArr7);
        zzb(jArr11, jArr8);
        zzb(jArr12, jArr11);
        for (int i11 = 2; i11 < 20; i11 += 2) {
            zzb(jArr11, jArr12);
            zzb(jArr12, jArr11);
        }
        zza(jArr11, jArr12, jArr8);
        zzb(jArr12, jArr11);
        zzb(jArr11, jArr12);
        for (int i12 = 2; i12 < 10; i12 += 2) {
            zzb(jArr12, jArr11);
            zzb(jArr11, jArr12);
        }
        zza(jArr9, jArr11, jArr7);
        zzb(jArr11, jArr9);
        zzb(jArr12, jArr11);
        for (int i13 = 2; i13 < 50; i13 += 2) {
            zzb(jArr11, jArr12);
            zzb(jArr12, jArr11);
        }
        zza(jArr10, jArr12, jArr9);
        zzb(jArr12, jArr10);
        zzb(jArr11, jArr12);
        for (int i14 = 2; i14 < 100; i14 += 2) {
            zzb(jArr12, jArr11);
            zzb(jArr11, jArr12);
        }
        zza(jArr12, jArr11, jArr10);
        zzb(jArr11, jArr12);
        zzb(jArr12, jArr11);
        for (int i15 = 2; i15 < 50; i15 += 2) {
            zzb(jArr11, jArr12);
            zzb(jArr12, jArr11);
        }
        zza(jArr11, jArr12, jArr9);
        zzb(jArr12, jArr11);
        zzb(jArr11, jArr12);
        zzb(jArr12, jArr11);
        zzb(jArr11, jArr12);
        zzb(jArr12, jArr11);
        zza(jArr, jArr12, jArr5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr[0] = jArr2[0] * jArr3[0];
        long j10 = jArr2[0];
        long j11 = jArr2[1];
        long j12 = jArr3[0];
        jArr[1] = (jArr3[1] * j10) + (j11 * j12);
        long j13 = jArr2[1];
        long j14 = jArr3[1];
        jArr[2] = (j13 * 2 * j14) + (jArr3[2] * j10) + (jArr2[2] * j12);
        long j15 = jArr3[2];
        long j16 = jArr2[2];
        jArr[3] = (j13 * j15) + (j16 * j14) + (jArr3[3] * j10) + (jArr2[3] * j12);
        long j17 = jArr3[3];
        long j18 = jArr2[3];
        jArr[4] = (j16 * j15) + (((j13 * j17) + (j18 * j14)) * 2) + (jArr3[4] * j10) + (jArr2[4] * j12);
        long j19 = jArr3[4];
        long j20 = jArr2[4];
        jArr[5] = (j16 * j17) + (j18 * j15) + (j13 * j19) + (j20 * j14) + (jArr3[5] * j10) + (jArr2[5] * j12);
        long j21 = jArr3[5];
        long j22 = jArr2[5];
        jArr[6] = (((j18 * j17) + (j13 * j21) + (j22 * j14)) * 2) + (j16 * j19) + (j20 * j15) + (jArr3[6] * j10) + (jArr2[6] * j12);
        long j23 = jArr3[6];
        long j24 = jArr2[6];
        jArr[7] = (j18 * j19) + (j20 * j17) + (j16 * j21) + (j22 * j15) + (j13 * j23) + (j24 * j14) + (jArr3[7] * j10) + (jArr2[7] * j12);
        long j25 = jArr3[7];
        long j26 = jArr2[7];
        jArr[8] = (j20 * j19) + (((j18 * j21) + (j22 * j17) + (j13 * j25) + (j26 * j14)) * 2) + (j16 * j23) + (j24 * j15) + (jArr3[8] * j10) + (jArr2[8] * j12);
        long j27 = jArr3[8];
        long j28 = jArr2[8];
        jArr[9] = (j20 * j21) + (j22 * j19) + (j18 * j23) + (j24 * j17) + (j16 * j25) + (j26 * j15) + (j13 * j27) + (j28 * j14) + (j10 * jArr3[9]) + (jArr2[9] * j12);
        long j29 = jArr3[9];
        long j30 = jArr2[9];
        jArr[10] = (((j22 * j21) + (j18 * j25) + (j26 * j17) + (j13 * j29) + (j14 * j30)) * 2) + (j20 * j23) + (j24 * j19) + (j16 * j27) + (j28 * j15);
        jArr[11] = (j22 * j23) + (j24 * j21) + (j20 * j25) + (j26 * j19) + (j18 * j27) + (j28 * j17) + (j16 * j29) + (j15 * j30);
        jArr[12] = (j24 * j23) + (((j22 * j25) + (j26 * j21) + (j18 * j29) + (j17 * j30)) * 2) + (j20 * j27) + (j28 * j19);
        jArr[13] = (j24 * j25) + (j26 * j23) + (j22 * j27) + (j28 * j21) + (j20 * j29) + (j19 * j30);
        jArr[14] = (((j26 * j25) + (j22 * j29) + (j21 * j30)) * 2) + (j24 * j27) + (j28 * j23);
        jArr[15] = (j26 * j27) + (j28 * j25) + (j24 * j29) + (j23 * j30);
        jArr[16] = (j28 * j27) + (((j26 * j29) + (j25 * j30)) * 2);
        jArr[17] = (j28 * j29) + (j27 * j30);
        jArr[18] = j30 * 2 * j29;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzc(long[] jArr, long[] jArr2) {
        zzc(jArr, jArr2, jArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzd(long[] jArr, long[] jArr2) {
        zzd(jArr, jArr, jArr2);
    }

    private static void zze(long[] jArr, long[] jArr2) {
        if (jArr.length != 19) {
            long[] jArr3 = new long[19];
            System.arraycopy(jArr, 0, jArr3, 0, jArr.length);
            jArr = jArr3;
        }
        zzb(jArr);
        zza(jArr);
        System.arraycopy(jArr, 0, jArr2, 0, 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzc(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i10 = 0; i10 < 10; i10++) {
            jArr[i10] = jArr2[i10] - jArr3[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzd(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i10 = 0; i10 < 10; i10++) {
            jArr[i10] = jArr2[i10] + jArr3[i10];
        }
    }

    public static byte[] zzc(long[] jArr) {
        int i10;
        int i11;
        long j10;
        int i12;
        int i13;
        int i14;
        long j11;
        int i15;
        int i16;
        int i17;
        long[] copyOf = Arrays.copyOf(jArr, 10);
        int i18 = 0;
        while (true) {
            if (i18 >= 2) {
                break;
            }
            int i19 = 0;
            while (i19 < 9) {
                long j12 = copyOf[i19];
                copyOf[i19] = j12 + (i17 << i16);
                i19++;
                copyOf[i19] = copyOf[i19] - (-((int) (((j12 >> 31) & j12) >> zzd[i19 & 1])));
            }
            long j13 = copyOf[9];
            copyOf[9] = j13 + (i15 << 25);
            copyOf[0] = copyOf[0] - ((-((int) (((j13 >> 31) & j13) >> 25))) * 19);
            i18++;
        }
        long j14 = copyOf[0];
        copyOf[0] = j14 + (i11 << 26);
        copyOf[1] = copyOf[1] - (-((int) (((j14 >> 31) & j14) >> 26)));
        int i20 = 0;
        for (i10 = 2; i20 < i10; i10 = 2) {
            int i21 = 0;
            while (i21 < 9) {
                int i22 = i21 & 1;
                copyOf[i21] = copyOf[i21] & zzc[i22];
                i21++;
                copyOf[i21] = copyOf[i21] + ((int) (j11 >> zzd[i22]));
            }
            i20++;
        }
        copyOf[9] = copyOf[9] & 33554431;
        long j15 = copyOf[0] + (((int) (j10 >> 25)) * 19);
        copyOf[0] = j15;
        int i23 = ~((((int) j15) - 67108845) >> 31);
        for (int i24 = 1; i24 < 10; i24++) {
            int i25 = ~(((int) copyOf[i24]) ^ zzc[i24 & 1]);
            int i26 = i25 & (i25 << 16);
            int i27 = i26 & (i26 << 8);
            int i28 = i27 & (i27 << 4);
            int i29 = i28 & (i28 << 2);
            i23 &= (i29 & (i29 << 1)) >> 31;
        }
        copyOf[0] = copyOf[0] - (67108845 & i23);
        long j16 = 33554431 & i23;
        copyOf[1] = copyOf[1] - j16;
        for (int i30 = 2; i30 < 10; i30 += 2) {
            copyOf[i30] = copyOf[i30] - (67108863 & i23);
            int i31 = i30 + 1;
            copyOf[i31] = copyOf[i31] - j16;
        }
        for (int i32 = 0; i32 < 10; i32++) {
            copyOf[i32] = copyOf[i32] << zzb[i32];
        }
        byte[] bArr = new byte[32];
        for (int i33 = 0; i33 < 10; i33++) {
            int i34 = zza[i33];
            long j17 = copyOf[i33];
            bArr[i34] = (byte) (bArr[i34] | (j17 & 255));
            bArr[i34 + 1] = (byte) (bArr[i12] | ((j17 >> 8) & 255));
            bArr[i34 + 2] = (byte) (bArr[i13] | ((j17 >> 16) & 255));
            bArr[i34 + 3] = (byte) (bArr[i14] | ((j17 >> 24) & 255));
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(long[] jArr) {
        long j10 = jArr[8];
        long j11 = jArr[18];
        long j12 = j10 + (j11 << 4);
        jArr[8] = j12;
        long j13 = j12 + (j11 << 1);
        jArr[8] = j13;
        jArr[8] = j13 + j11;
        long j14 = jArr[7];
        long j15 = jArr[17];
        long j16 = j14 + (j15 << 4);
        jArr[7] = j16;
        long j17 = j16 + (j15 << 1);
        jArr[7] = j17;
        jArr[7] = j17 + j15;
        long j18 = jArr[6];
        long j19 = jArr[16];
        long j20 = j18 + (j19 << 4);
        jArr[6] = j20;
        long j21 = j20 + (j19 << 1);
        jArr[6] = j21;
        jArr[6] = j21 + j19;
        long j22 = jArr[5];
        long j23 = jArr[15];
        long j24 = j22 + (j23 << 4);
        jArr[5] = j24;
        long j25 = j24 + (j23 << 1);
        jArr[5] = j25;
        jArr[5] = j25 + j23;
        long j26 = jArr[4];
        long j27 = jArr[14];
        long j28 = j26 + (j27 << 4);
        jArr[4] = j28;
        long j29 = j28 + (j27 << 1);
        jArr[4] = j29;
        jArr[4] = j29 + j27;
        long j30 = jArr[3];
        long j31 = jArr[13];
        long j32 = j30 + (j31 << 4);
        jArr[3] = j32;
        long j33 = j32 + (j31 << 1);
        jArr[3] = j33;
        jArr[3] = j33 + j31;
        long j34 = jArr[2];
        long j35 = jArr[12];
        long j36 = j34 + (j35 << 4);
        jArr[2] = j36;
        long j37 = j36 + (j35 << 1);
        jArr[2] = j37;
        jArr[2] = j37 + j35;
        long j38 = jArr[1];
        long j39 = jArr[11];
        long j40 = j38 + (j39 << 4);
        jArr[1] = j40;
        long j41 = j40 + (j39 << 1);
        jArr[1] = j41;
        jArr[1] = j41 + j39;
        long j42 = jArr[0];
        long j43 = jArr[10];
        long j44 = j42 + (j43 << 4);
        jArr[0] = j44;
        long j45 = j44 + (j43 << 1);
        jArr[0] = j45;
        jArr[0] = j45 + j43;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(long[] jArr, long[] jArr2) {
        long j10 = jArr2[0];
        long j11 = jArr2[1];
        long j12 = jArr2[2];
        long j13 = jArr2[3];
        long j14 = jArr2[4];
        long j15 = jArr2[5];
        long j16 = jArr2[6];
        long j17 = jArr2[7];
        long j18 = jArr2[8];
        long j19 = jArr2[9];
        zze(new long[]{j10 * j10, j10 * 2 * j11, ((j11 * j11) + (j10 * j12)) * 2, ((j11 * j12) + (j10 * j13)) * 2, (j12 * j12) + (j11 * 4 * j13) + (j10 * 2 * j14), ((j12 * j13) + (j11 * j14) + (j10 * j15)) * 2, ((j13 * j13) + (j12 * j14) + (j10 * j16) + (j11 * 2 * j15)) * 2, ((j13 * j14) + (j12 * j15) + (j11 * j16) + (j10 * j17)) * 2, (j14 * j14) + (((j12 * j16) + (j10 * j18) + (((j11 * j17) + (j13 * j15)) * 2)) * 2), ((j14 * j15) + (j13 * j16) + (j12 * j17) + (j11 * j18) + (j10 * j19)) * 2, ((j15 * j15) + (j14 * j16) + (j12 * j18) + (((j13 * j17) + (j11 * j19)) * 2)) * 2, ((j15 * j16) + (j14 * j17) + (j13 * j18) + (j12 * j19)) * 2, (j16 * j16) + (((j14 * j18) + (((j15 * j17) + (j13 * j19)) * 2)) * 2), ((j16 * j17) + (j15 * j18) + (j14 * j19)) * 2, ((j17 * j17) + (j16 * j18) + (j15 * 2 * j19)) * 2, ((j17 * j18) + (j16 * j19)) * 2, (j18 * j18) + (j17 * 4 * j19), j18 * 2 * j19, 2 * j19 * j19}, jArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[19];
        zzb(jArr4, jArr2, jArr3);
        zze(jArr4, jArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(long[] jArr) {
        jArr[10] = 0;
        int i10 = 0;
        while (i10 < 10) {
            long j10 = jArr[i10];
            long j11 = j10 / 67108864;
            jArr[i10] = j10 - (j11 << 26);
            int i11 = i10 + 1;
            long j12 = jArr[i11] + j11;
            jArr[i11] = j12;
            long j13 = j12 / 33554432;
            jArr[i11] = j12 - (j13 << 25);
            i10 += 2;
            jArr[i10] = jArr[i10] + j13;
        }
        long j14 = jArr[0];
        long j15 = jArr[10];
        long j16 = j14 + (j15 << 4);
        jArr[0] = j16;
        long j17 = j16 + (j15 << 1);
        jArr[0] = j17;
        long j18 = j17 + j15;
        jArr[0] = j18;
        jArr[10] = 0;
        long j19 = j18 / 67108864;
        jArr[0] = j18 - (j19 << 26);
        jArr[1] = jArr[1] + j19;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(long[] jArr, long[] jArr2, long j10) {
        for (int i10 = 0; i10 < 10; i10++) {
            jArr[i10] = jArr2[i10] * j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long[] zza(byte[] bArr) {
        long[] jArr = new long[10];
        for (int i10 = 0; i10 < 10; i10++) {
            int i11 = zza[i10];
            jArr[i10] = (((((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i11 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8)) | ((bArr[i11 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16)) | ((bArr[i11 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24)) >> zzb[i10]) & zzc[i10 & 1];
        }
        return jArr;
    }
}
