package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfv {
    public static final byte[] zza = {0, 0, 0, 1};
    public static final float[] zzb = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object zzc = new Object();
    private static int[] zzd = new int[10];

    public static int zza(byte[] bArr, int i10, int i11, boolean[] zArr) {
        boolean z10;
        boolean z11;
        boolean z12;
        int i12 = i11 - i10;
        boolean z13 = false;
        if (i12 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        if (i12 == 0) {
            return i11;
        }
        if (zArr[0]) {
            zzi(zArr);
            return i10 - 3;
        } else if (i12 > 1 && zArr[1] && bArr[i10] == 1) {
            zzi(zArr);
            return i10 - 2;
        } else if (i12 > 2 && zArr[2] && bArr[i10] == 0 && bArr[i10 + 1] == 1) {
            zzi(zArr);
            return i10 - 1;
        } else {
            int i13 = i11 - 1;
            int i14 = i10 + 2;
            while (i14 < i13) {
                byte b10 = bArr[i14];
                if ((b10 & 254) == 0) {
                    int i15 = i14 - 2;
                    if (bArr[i15] == 0 && bArr[i14 - 1] == 0 && b10 == 1) {
                        zzi(zArr);
                        return i15;
                    }
                    i14 = i15;
                }
                i14 += 3;
            }
            if (i12 <= 2 ? !(i12 != 2 ? !zArr[1] || bArr[i13] != 1 : !zArr[2] || bArr[i11 - 2] != 0 || bArr[i13] != 1) : !(bArr[i11 - 3] != 0 || bArr[i11 - 2] != 0 || bArr[i13] != 1)) {
                z11 = true;
            } else {
                z11 = false;
            }
            zArr[0] = z11;
            if (i12 <= 1 ? !(!zArr[2] || bArr[i13] != 0) : !(bArr[i11 - 2] != 0 || bArr[i13] != 0)) {
                z12 = true;
            } else {
                z12 = false;
            }
            zArr[1] = z12;
            if (bArr[i13] == 0) {
                z13 = true;
            }
            zArr[2] = z13;
            return i11;
        }
    }

    public static int zzb(zzz zzzVar) {
        String str = zzzVar.zzo;
        if (Objects.equals(str, "video/avc")) {
            return 1;
        }
        if (!Objects.equals(str, "video/hevc") && !zzay.zzg(zzzVar.zzk, "video/hevc")) {
            return 0;
        }
        return 2;
    }

    public static int zzc(byte[] bArr, int i10) {
        int i11;
        synchronized (zzc) {
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10) {
                while (true) {
                    try {
                        if (i12 < i10 - 2) {
                            int i14 = i12 + 1;
                            if (bArr[i12] == 0 && bArr[i14] == 0 && bArr[i12 + 2] == 3) {
                                break;
                            }
                            i12 = i14;
                        } else {
                            i12 = i10;
                            break;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (i12 < i10) {
                    int[] iArr = zzd;
                    int length = iArr.length;
                    if (length <= i13) {
                        zzd = Arrays.copyOf(iArr, length + length);
                    }
                    zzd[i13] = i12;
                    i12 += 3;
                    i13++;
                }
            }
            i11 = i10 - i13;
            int i15 = 0;
            int i16 = 0;
            for (int i17 = 0; i17 < i13; i17++) {
                int i18 = zzd[i17] - i15;
                System.arraycopy(bArr, i15, bArr, i16, i18);
                int i19 = i16 + i18;
                int i20 = i19 + 1;
                bArr[i19] = 0;
                i16 = i19 + 2;
                bArr[i20] = 0;
                i15 += i18 + 3;
            }
            System.arraycopy(bArr, i15, bArr, i16, i11 - i16);
        }
        return i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzfp zzd(byte[] r36, int r37, int r38, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzfs r39) {
        /*
            Method dump skipped, instructions count: 1053
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfv.zzd(byte[], int, int, com.google.android.gms.internal.ads.zzfs):com.google.android.gms.internal.ads.zzfp");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0575  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzfs zze(byte[] r36, int r37, int r38) {
        /*
            Method dump skipped, instructions count: 2125
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfv.zze(byte[], int, int):com.google.android.gms.internal.ads.zzfs");
    }

    public static zzft zzf(byte[] bArr, int i10, int i11) {
        zzfw zzfwVar = new zzfw(bArr, 4, i11);
        int zzc2 = zzfwVar.zzc();
        int zzc3 = zzfwVar.zzc();
        zzfwVar.zze();
        return new zzft(zzc2, zzc3, zzfwVar.zzh());
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0229 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0178  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzfu zzg(byte[] r32, int r33, int r34) {
        /*
            Method dump skipped, instructions count: 637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfv.zzg(byte[], int, int):com.google.android.gms.internal.ads.zzfu");
    }

    @Nullable
    public static String zzh(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            byte[] bArr = (byte[]) list.get(i10);
            int length = bArr.length;
            if (length > 3) {
                boolean[] zArr = new boolean[3];
                int i11 = zzfyq.zzd;
                zzfyn zzfynVar = new zzfyn();
                int i12 = 0;
                while (true) {
                    int length2 = bArr.length;
                    if (i12 >= length2) {
                        break;
                    }
                    int zza2 = zza(bArr, i12, length2, zArr);
                    if (zza2 != length2) {
                        zzfynVar.zzf(Integer.valueOf(zza2));
                    }
                    i12 = zza2 + 3;
                }
                zzfyq zzi = zzfynVar.zzi();
                for (int i13 = 0; i13 < zzi.size(); i13++) {
                    if (((Integer) zzi.get(i13)).intValue() + 3 < length) {
                        zzfw zzfwVar = new zzfw(bArr, ((Integer) zzi.get(i13)).intValue() + 3, length);
                        zzfj zzm = zzm(zzfwVar);
                        if (zzm.zza == 33 && zzm.zzb == 0) {
                            zzfwVar.zzf(4);
                            int zza3 = zzfwVar.zza(3);
                            zzfwVar.zze();
                            zzfk zzn = zzn(zzfwVar, true, zza3, null);
                            return zzdk.zzd(zzn.zza, zzn.zzb, zzn.zzc, zzn.zzd, zzn.zze, zzn.zzf);
                        }
                    }
                }
                continue;
            }
        }
        return null;
    }

    public static void zzi(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean zzj(byte[] bArr, int i10, int i11, zzz zzzVar) {
        int i12;
        String str = zzzVar.zzo;
        if (Objects.equals(str, "video/avc")) {
            byte b10 = bArr[4];
            if (((b10 & 96) >> 5) == 0 && ((i12 = b10 & 31) == 1 || i12 == 9 || i12 == 14)) {
                return false;
            }
        } else if (Objects.equals(str, "video/hevc")) {
            zzfj zzm = zzm(new zzfw(bArr, 4, i11 + 4));
            int i13 = zzm.zza;
            if (i13 == 35) {
                return false;
            }
            if (i13 <= 14 && i13 % 2 == 0 && zzm.zzc == zzzVar.zzF - 1) {
                return false;
            }
        }
        return true;
    }

    private static int zzk(int i10, int i11, int i12, int i13) {
        int i14 = 1;
        if (i11 == 1) {
            i14 = 2;
        }
        return i10 - (i14 * (i12 + i13));
    }

    private static int zzl(int i10, int i11, int i12, int i13) {
        int i14 = 2;
        if (i11 != 1 && i11 != 2) {
            i14 = 1;
        }
        return i10 - (i14 * (i12 + i13));
    }

    private static zzfj zzm(zzfw zzfwVar) {
        zzfwVar.zze();
        return new zzfj(zzfwVar.zza(6), zzfwVar.zza(6), zzfwVar.zza(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzfk zzn(com.google.android.gms.internal.ads.zzfw r18, boolean r19, int r20, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzfk r21) {
        /*
            r0 = r18
            r1 = r20
            r2 = r21
            r3 = 6
            int[] r4 = new int[r3]
            r5 = 8
            r6 = 0
            if (r19 == 0) goto L41
            r2 = 2
            int r2 = r0.zza(r2)
            boolean r7 = r18.zzh()
            r8 = 5
            int r8 = r0.zza(r8)
            r9 = r6
            r10 = r9
        L1e:
            r11 = 32
            if (r9 >= r11) goto L2e
            boolean r11 = r18.zzh()
            if (r11 == 0) goto L2b
            r11 = 1
            int r11 = r11 << r9
            r10 = r10 | r11
        L2b:
            int r9 = r9 + 1
            goto L1e
        L2e:
            r9 = r6
        L2f:
            if (r9 >= r3) goto L3a
            int r11 = r0.zza(r5)
            r4[r9] = r11
            int r9 = r9 + 1
            goto L2f
        L3a:
            r12 = r2
        L3b:
            r16 = r4
            r13 = r7
            r14 = r8
            r15 = r10
            goto L55
        L41:
            if (r2 == 0) goto L4f
            int r3 = r2.zza
            boolean r7 = r2.zzb
            int r8 = r2.zzc
            int r10 = r2.zzd
            int[] r4 = r2.zze
            r12 = r3
            goto L3b
        L4f:
            r16 = r4
            r12 = r6
            r13 = r12
            r14 = r13
            r15 = r14
        L55:
            int r17 = r0.zza(r5)
            r2 = r6
        L5a:
            if (r6 >= r1) goto L6f
            boolean r3 = r18.zzh()
            if (r3 == 0) goto L64
            int r2 = r2 + 88
        L64:
            boolean r3 = r18.zzh()
            if (r3 == 0) goto L6c
            int r2 = r2 + 8
        L6c:
            int r6 = r6 + 1
            goto L5a
        L6f:
            r0.zzf(r2)
            if (r1 <= 0) goto L79
            int r5 = r5 - r1
            int r5 = r5 + r5
            r0.zzf(r5)
        L79:
            com.google.android.gms.internal.ads.zzfk r0 = new com.google.android.gms.internal.ads.zzfk
            r11 = r0
            r11.<init>(r12, r13, r14, r15, r16, r17)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfv.zzn(com.google.android.gms.internal.ads.zzfw, boolean, int, com.google.android.gms.internal.ads.zzfk):com.google.android.gms.internal.ads.zzfk");
    }

    private static void zzo(zzfw zzfwVar) {
        int zzc2 = zzfwVar.zzc() + 1;
        zzfwVar.zzf(8);
        for (int i10 = 0; i10 < zzc2; i10++) {
            zzfwVar.zzc();
            zzfwVar.zzc();
            zzfwVar.zze();
        }
        zzfwVar.zzf(20);
    }
}
