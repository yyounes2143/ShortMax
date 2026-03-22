package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzahe {
    public static final zzahc zza = new Object() { // from class: com.google.android.gms.internal.ads.zzahc
    };

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ac  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.google.android.gms.internal.ads.zzav zza(byte[] r11, int r12, com.google.android.gms.internal.ads.zzahc r13, com.google.android.gms.internal.ads.zzagq r14) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahe.zza(byte[], int, com.google.android.gms.internal.ads.zzahc, com.google.android.gms.internal.ads.zzagq):com.google.android.gms.internal.ads.zzav");
    }

    private static int zzb(int i10) {
        if (i10 != 0 && i10 != 3) {
            return 2;
        }
        return 1;
    }

    private static int zzc(byte[] bArr, int i10, int i11) {
        int zzd = zzd(bArr, i10);
        if (i11 == 0 || i11 == 3) {
            return zzd;
        }
        while (true) {
            int length = bArr.length;
            if (zzd < length - 1) {
                int i12 = zzd + 1;
                if ((zzd - i10) % 2 == 0 && bArr[i12] == 0) {
                    return zzd;
                }
                zzd = zzd(bArr, i12);
            } else {
                return length;
            }
        }
    }

    private static int zzd(byte[] bArr, int i10) {
        while (true) {
            int length = bArr.length;
            if (i10 < length) {
                if (bArr[i10] == 0) {
                    return i10;
                }
                i10++;
            } else {
                return length;
            }
        }
    }

    private static int zze(zzen zzenVar, int i10) {
        byte[] zzN = zzenVar.zzN();
        int zzc = zzenVar.zzc();
        int i11 = zzc;
        while (true) {
            int i12 = i11 + 1;
            if (i12 < zzc + i10) {
                if ((zzN[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) == 255 && zzN[i12] == 0) {
                    System.arraycopy(zzN, i11 + 2, zzN, i12, (i10 - (i11 - zzc)) - 2);
                    i10--;
                }
                i11 = i12;
            } else {
                return i10;
            }
        }
    }

    private static zzfyq zzf(byte[] bArr, int i10, int i11) {
        if (i11 >= bArr.length) {
            return zzfyq.zzo("");
        }
        int i12 = zzfyq.zzd;
        zzfyn zzfynVar = new zzfyn();
        int zzc = zzc(bArr, i11, i10);
        while (i11 < zzc) {
            zzfynVar.zzf(new String(bArr, i11, zzc - i11, zzi(i10)));
            i11 = zzb(i10) + zzc;
            zzc = zzc(bArr, i11, i10);
        }
        zzfyq zzi = zzfynVar.zzi();
        if (zzi.isEmpty()) {
            return zzfyq.zzo("");
        }
        return zzi;
    }

    private static String zzg(byte[] bArr, int i10, int i11, Charset charset) {
        if (i11 > i10 && i11 <= bArr.length) {
            return new String(bArr, i10, i11 - i10, charset);
        }
        return "";
    }

    private static String zzh(int i10, int i11, int i12, int i13, int i14) {
        if (i10 == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
    }

    private static Charset zzi(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return StandardCharsets.ISO_8859_1;
                }
                return StandardCharsets.UTF_8;
            }
            return StandardCharsets.UTF_16BE;
        }
        return StandardCharsets.UTF_16;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
        r4 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zzj(com.google.android.gms.internal.ads.zzen r21, int r22, int r23, boolean r24) {
        /*
            r1 = r21
            r0 = r22
            int r2 = r21.zzc()
        L8:
            int r3 = r21.zza()     // Catch: java.lang.Throwable -> L22
            r4 = 1
            r5 = r23
            if (r3 < r5) goto La7
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L25
            int r7 = r21.zzg()     // Catch: java.lang.Throwable -> L22
            long r8 = r21.zzu()     // Catch: java.lang.Throwable -> L22
            int r10 = r21.zzq()     // Catch: java.lang.Throwable -> L22
            goto L2f
        L22:
            r0 = move-exception
            goto Lab
        L25:
            int r7 = r21.zzo()     // Catch: java.lang.Throwable -> L22
            int r8 = r21.zzo()     // Catch: java.lang.Throwable -> L22
            long r8 = (long) r8     // Catch: java.lang.Throwable -> L22
            r10 = r6
        L2f:
            r11 = 0
            if (r7 != 0) goto L3b
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3b
            if (r10 != 0) goto L3b
            goto La7
        L3b:
            r7 = 4
            if (r0 != r7) goto L6b
            if (r24 != 0) goto L6b
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 == 0) goto L4b
        L48:
            r4 = r6
            goto La7
        L4b:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            r17 = 16
            long r17 = r8 >> r17
            r19 = 24
            long r8 = r8 >> r19
            long r15 = r15 & r11
            long r11 = r17 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 14
            long r11 = r11 << r15
            long r11 = r11 | r13
            r13 = 21
            long r8 = r8 << r13
            long r8 = r8 | r11
        L6b:
            if (r0 != r7) goto L7b
            r3 = r10 & 64
            if (r3 == 0) goto L72
            goto L73
        L72:
            r4 = r6
        L73:
            r3 = r10 & 1
            r20 = r4
            r4 = r3
            r3 = r20
            goto L8d
        L7b:
            if (r0 != r3) goto L8b
            r3 = r10 & 32
            if (r3 == 0) goto L83
            r3 = r4
            goto L84
        L83:
            r3 = r6
        L84:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L89
            goto L8d
        L89:
            r4 = r6
            goto L8d
        L8b:
            r3 = r6
            r4 = r3
        L8d:
            if (r4 == 0) goto L91
            int r3 = r3 + 4
        L91:
            long r3 = (long) r3     // Catch: java.lang.Throwable -> L22
            int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r3 >= 0) goto L97
            goto L48
        L97:
            int r3 = r21.zza()     // Catch: java.lang.Throwable -> L22
            long r3 = (long) r3     // Catch: java.lang.Throwable -> L22
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 >= 0) goto La1
            goto L48
        La1:
            int r3 = (int) r8     // Catch: java.lang.Throwable -> L22
            r1.zzM(r3)     // Catch: java.lang.Throwable -> L22
            goto L8
        La7:
            r1.zzL(r2)
            return r4
        Lab:
            r1.zzL(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahe.zzj(com.google.android.gms.internal.ads.zzen, int, int, boolean):boolean");
    }

    private static byte[] zzk(byte[] bArr, int i10, int i11) {
        if (i11 <= i10) {
            return zzex.zzb;
        }
        return Arrays.copyOfRange(bArr, i10, i11);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:80|(2:82|(1:88)(1:87))|89|90|(2:92|(10:308|100|101|(4:139|140|141|(2:155|(3:(7:243|(2:245|(2:247|(7:251|252|(1:254)|255|256|121|54))(1:272))(1:273)|262|263|264|121|54)(15:186|187|(1:189)(1:238)|190|(10:192|193|194|195|196|197|198|199|200|201)|219|220|(4:223|(3:225|226|227)(1:229)|228|221)|230|231|(1:233)(1:237)|234|235|121|54)|(0)|57)(13:162|(1:164)|165|(1:167)|168|(4:171|(3:173|174|175)(1:177)|176|169)|178|179|120|121|54|(0)|57))(2:149|(5:151|64|54|(0)|57)(3:152|153|154)))(7:108|109|(3:111|(1:113)|114)(4:124|125|126|(1:128))|115|116|117|118)|119|120|121|54|(0)|57)(2:95|(12:293|294|295|296|297|298|299|300|66|54|(0)|57)(1:98)))(1:309)|99|100|101|(15:103|139|140|141|(1:143)|155|(1:157)|(1:181)|243|(0)(0)|262|263|264|121|54)(15:282|139|140|141|(0)|155|(0)|(0)|243|(0)(0)|262|263|264|121|54)|(0)|57) */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0340, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0341, code lost:
        r8 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0348, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0349, code lost:
        r8 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0352, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:204:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0595  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x05c9  */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v57 */
    /* JADX WARN: Type inference failed for: r8v58 */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzahf zzl(int r35, com.google.android.gms.internal.ads.zzen r36, boolean r37, int r38, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzahc r39) {
        /*
            Method dump skipped, instructions count: 1534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahe.zzl(int, com.google.android.gms.internal.ads.zzen, boolean, int, com.google.android.gms.internal.ads.zzahc):com.google.android.gms.internal.ads.zzahf");
    }
}
