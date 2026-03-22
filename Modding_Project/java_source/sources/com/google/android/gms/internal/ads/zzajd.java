package com.google.android.gms.internal.ads;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzajd implements zzadv {
    private static final byte[] zza = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzz zzb;
    private long zzA;
    private long zzB;
    @Nullable
    private zzajc zzC;
    private int zzD;
    private int zzE;
    private int zzF;
    private boolean zzG;
    private boolean zzH;
    private zzady zzI;
    private zzafb[] zzJ;
    private zzafb[] zzK;
    private boolean zzL;
    private long zzM;
    private final zzakr zzc;
    private final int zzd;
    private final List zze;
    private final SparseArray zzf;
    private final zzen zzg;
    private final zzen zzh;
    private final zzen zzi;
    private final byte[] zzj;
    private final zzen zzk;
    private final zzags zzl;
    private final zzen zzm;
    private final ArrayDeque zzn;
    private final ArrayDeque zzo;
    private final zzfz zzp;
    private final zzadj zzq;
    private zzfyq zzr;
    private int zzs;
    private int zzt;
    private long zzu;
    private int zzv;
    @Nullable
    private zzen zzw;
    private long zzx;
    private int zzy;
    private long zzz;

    static {
        zzx zzxVar = new zzx();
        zzxVar.zzah(MimeTypes.APPLICATION_EMSG);
        zzb = zzxVar.zzan();
    }

    @Deprecated
    public zzajd() {
        this(zzakr.zza, 32, null, null, zzfyq.zzn(), null);
    }

    private static int zzg(int i10) throws zzaz {
        if (i10 >= 0) {
            return i10;
        }
        throw zzaz.zza("Unexpected negative value: " + i10, null);
    }

    private static Pair zzh(zzen zzenVar, long j10) throws zzaz {
        long zzw;
        long zzw2;
        int[] iArr;
        zzenVar.zzL(8);
        int zza2 = zzaix.zza(zzenVar.zzg());
        zzenVar.zzM(4);
        long zzu = zzenVar.zzu();
        if (zza2 == 0) {
            zzw = zzenVar.zzu();
            zzw2 = zzenVar.zzu();
        } else {
            zzw = zzenVar.zzw();
            zzw2 = zzenVar.zzw();
        }
        long j11 = zzw;
        long j12 = j10 + zzw2;
        long zzu2 = zzex.zzu(j11, 1000000L, zzu, RoundingMode.DOWN);
        zzenVar.zzM(2);
        int zzq = zzenVar.zzq();
        int[] iArr2 = new int[zzq];
        long[] jArr = new long[zzq];
        long[] jArr2 = new long[zzq];
        long[] jArr3 = new long[zzq];
        long j13 = zzu2;
        int i10 = 0;
        long j14 = j11;
        while (i10 < zzq) {
            int zzg = zzenVar.zzg();
            if ((Integer.MIN_VALUE & zzg) == 0) {
                long zzu3 = zzenVar.zzu();
                iArr2[i10] = zzg & Integer.MAX_VALUE;
                jArr[i10] = j12;
                jArr3[i10] = j13;
                long j15 = j14 + zzu3;
                long[] jArr4 = jArr3;
                long[] jArr5 = jArr2;
                int i11 = zzq;
                long zzu4 = zzex.zzu(j15, 1000000L, zzu, RoundingMode.DOWN);
                jArr5[i10] = zzu4 - jArr4[i10];
                zzenVar.zzM(4);
                j12 += iArr[i10];
                i10++;
                iArr2 = iArr2;
                jArr2 = jArr5;
                jArr = jArr;
                zzq = i11;
                jArr3 = jArr4;
                j14 = j15;
                j13 = zzu4;
            } else {
                throw zzaz.zza("Unhandled indirect reference", null);
            }
        }
        return Pair.create(Long.valueOf(zzu2), new zzadi(iArr2, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0122  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzs zzj(java.util.List r18) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajd.zzj(java.util.List):com.google.android.gms.internal.ads.zzs");
    }

    private final void zzk() {
        this.zzs = 0;
        this.zzv = 0;
    }

    private static void zzl(zzen zzenVar, int i10, zzajr zzajrVar) throws zzaz {
        zzenVar.zzL(i10 + 8);
        int zzg = zzenVar.zzg();
        int i11 = zzaix.zza;
        boolean z10 = true;
        if ((zzg & 1) == 0) {
            if ((zzg & 2) == 0) {
                z10 = false;
            }
            int zzp = zzenVar.zzp();
            if (zzp == 0) {
                Arrays.fill(zzajrVar.zzl, 0, zzajrVar.zze, false);
                return;
            }
            int i12 = zzajrVar.zze;
            if (zzp == i12) {
                Arrays.fill(zzajrVar.zzl, 0, zzp, z10);
                zzajrVar.zza(zzenVar.zza());
                zzen zzenVar2 = zzajrVar.zzn;
                zzenVar.zzH(zzenVar2.zzN(), 0, zzenVar2.zzd());
                zzenVar2.zzL(0);
                zzajrVar.zzo = false;
                return;
            }
            throw zzaz.zza("Senc sample count " + zzp + " is different from fragment sample count" + i12, null);
        }
        throw zzaz.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x035d, code lost:
        if ((r13 + com.google.android.gms.internal.ads.zzex.zzu(r2[0], 1000000, r6.zzc, r46)) < r6.zze) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x0742, code lost:
        zzk();
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0746, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:139:0x038d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzm(long r55) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 1863
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajd.zzm(long):void");
    }

    private static final zzaiy zzn(SparseArray sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return (zzaiy) sparseArray.valueAt(0);
        }
        zzaiy zzaiyVar = (zzaiy) sparseArray.get(i10);
        zzaiyVar.getClass();
        return zzaiyVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ef, code lost:
        if (java.util.Objects.equals(r5, "video/hevc") != false) goto L319;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f7, code lost:
        if (com.google.android.gms.internal.ads.zzay.zzg(r14.zzk, "video/hevc") == false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01fa, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0202, code lost:
        if (((r18 & 126) >> 1) != 39) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0204, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0206, code lost:
        r20 = r8;
        r19 = r9;
        r8 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x020c, code lost:
        r27.zzH = r5;
        r10.zzr(r15, r3);
        r27.zzE += r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0216, code lost:
        if (r3 <= 0) goto L318;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x021a, code lost:
        if (r27.zzG != false) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0223, code lost:
        if (com.google.android.gms.internal.ads.zzfv.zzj(r6, 4, r3, r2.zzg) == false) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0225, code lost:
        r27.zzG = true;
        r5 = r8;
        r9 = r19;
        r8 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x022f, code lost:
        r5 = r8;
        r9 = r19;
        r8 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x023e, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x023f, code lost:
        r20 = r8;
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0246, code lost:
        if (r27.zzH == false) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0248, code lost:
        r5 = r27.zzi;
        r5.zzI(r3);
        r28.zzi(r5.zzN(), 0, r27.zzF);
        r10.zzr(r5, r27.zzF);
        r3 = r27.zzF;
        r8 = com.google.android.gms.internal.ads.zzfv.zzc(r5.zzN(), r5.zzd());
        r5.zzL(0);
        r5.zzK(r8);
        r8 = r2.zzg.zzq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0275, code lost:
        if (r8 != (-1)) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0277, code lost:
        r8 = r27.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x027d, code lost:
        if (r8.zza() == 0) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x027f, code lost:
        r8.zze(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0283, code lost:
        r9 = r27.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0289, code lost:
        if (r9.zza() == r8) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x028b, code lost:
        r9.zze(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x028e, code lost:
        r8 = r27.zzp;
        r8.zzb(r11, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0299, code lost:
        if ((r4.zza() & 4) == 0) goto L277;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x029b, code lost:
        r8.zzd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x029f, code lost:
        r3 = r10.zzf(r28, r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x02a5, code lost:
        r27.zzE += r3;
        r27.zzF -= r3;
        r9 = r19;
        r8 = r20;
        r5 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02b7, code lost:
        r1 = r4.zza();
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02bd, code lost:
        if (r27.zzG != false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02bf, code lost:
        r1 = r1 | 67108864;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02c2, code lost:
        r22 = r1;
        r1 = r4.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02c8, code lost:
        if (r1 == null) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x02ca, code lost:
        r25 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02cf, code lost:
        r25 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x02d1, code lost:
        r10.zzt(r11, r22, r27.zzD, 0, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x02de, code lost:
        r1 = r27.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x02e4, code lost:
        if (r1.isEmpty() != false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02e6, code lost:
        r1 = (com.google.android.gms.internal.ads.zzajb) r1.removeFirst();
        r2 = r27.zzy;
        r3 = r1.zzc;
        r27.zzy = r2 - r3;
        r5 = r1.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02f7, code lost:
        if (r1.zzb == false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02f9, code lost:
        r5 = r5 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02fa, code lost:
        r1 = r27.zzJ;
        r2 = r1.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02fe, code lost:
        if (r7 >= r2) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0300, code lost:
        r1[r7].zzt(r5, 1, r3, r27.zzy, null);
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0318, code lost:
        if (r4.zzl() != false) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x031a, code lost:
        r27.zzC = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x031d, code lost:
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x031e, code lost:
        r27.zzs = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0321, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0093, code lost:
        r5 = 6;
        r8 = "video/avc";
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009a, code lost:
        if (r27.zzs != 3) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009c, code lost:
        r27.zzD = r4.zzb();
        r2 = r4.zzd.zza.zzg.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ae, code lost:
        if (java.util.Objects.equals(r2, "video/avc") != false) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b0, code lost:
        java.util.Objects.equals(r2, "video/hevc");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b3, code lost:
        r27.zzG = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b9, code lost:
        if (r4.zzf >= r4.zzi) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bb, code lost:
        r28.zzk(r27.zzD);
        r1 = r4.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c4, code lost:
        if (r1 != null) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c7, code lost:
        r2 = r4.zzb;
        r3 = r2.zzn;
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cd, code lost:
        if (r1 == 0) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cf, code lost:
        r3.zzM(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d8, code lost:
        if (r2.zzb(r4.zzf) == false) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00da, code lost:
        r3.zzM(r3.zzq() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e6, code lost:
        if (r4.zzl() != false) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e8, code lost:
        r27.zzC = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ea, code lost:
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f3, code lost:
        if (r4.zzd.zza.zzh != r3) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f5, code lost:
        r27.zzD -= 8;
        r28.zzk(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x010c, code lost:
        if ("audio/ac4".equals(r4.zzd.zza.zzg.zzo) == false) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x010e, code lost:
        r27.zzE = r4.zzc(r27.zzD, 7);
        r2 = r27.zzD;
        r11 = r27.zzk;
        com.google.android.gms.internal.ads.zzacy.zzc(r2, r11);
        r4.zza.zzr(r11, 7);
        r2 = r27.zzE + 7;
        r27.zzE = r2;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x012a, code lost:
        r10 = 0;
        r2 = r4.zzc(r27.zzD, 0);
        r27.zzE = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0133, code lost:
        r27.zzD += r2;
        r27.zzs = 4;
        r27.zzF = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x013d, code lost:
        r2 = r4.zzd.zza;
        r10 = r4.zza;
        r11 = r4.zze();
        r13 = r2.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0149, code lost:
        if (r13 != 0) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x014b, code lost:
        r2 = r27.zzE;
        r5 = r27.zzD;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x014f, code lost:
        if (r2 >= r5) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0151, code lost:
        r27.zzE += r10.zzf(r28, r5 - r2, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x015d, code lost:
        r15 = r27.zzh;
        r6 = r15.zzN();
        r6[0] = 0;
        r6[r3 ? 1 : 0] = 0;
        r6[2] = 0;
        r9 = 4 - r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0173, code lost:
        if (r27.zzE >= r27.zzD) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0175, code lost:
        r3 = r27.zzF;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0177, code lost:
        if (r3 != 0) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x017c, code lost:
        if (r27.zzK.length > 0) goto L329;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0180, code lost:
        if (r27.zzG != false) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0183, code lost:
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0185, code lost:
        r3 = com.google.android.gms.internal.ads.zzfv.zzb(r2.zzg);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0194, code lost:
        if ((r13 + r3) <= (r27.zzD - r27.zzE)) goto L331;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0197, code lost:
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0199, code lost:
        r28.zzi(r6, r9, r13 + r3);
        r15.zzL(0);
        r14 = r15.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01a6, code lost:
        if (r14 < 0) goto L326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a8, code lost:
        r27.zzF = r14 - r3;
        r14 = r27.zzg;
        r14.zzL(0);
        r10.zzr(r14, 4);
        r27.zzE += 4;
        r27.zzD += r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01c1, code lost:
        if (r27.zzK.length <= 0) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c3, code lost:
        if (r3 <= 0) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c5, code lost:
        r14 = r2.zzg;
        r18 = r6[4];
        r5 = com.google.android.gms.internal.ads.zzfv.zza;
        r5 = r14.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d1, code lost:
        if (java.util.Objects.equals(r5, r8) != false) goto L324;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01d3, code lost:
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01db, code lost:
        if (com.google.android.gms.internal.ads.zzay.zzg(r14.zzk, r8) == false) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01de, code lost:
        r20 = r8;
        r8 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01e2, code lost:
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01e4, code lost:
        r20 = r8;
        r8 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e9, code lost:
        if ((r18 & 31) == 6) goto L321;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzadv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzadw r28, com.google.android.gms.internal.ads.zzaer r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1928
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajd.zzb(com.google.android.gms.internal.ads.zzadw, com.google.android.gms.internal.ads.zzaer):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        int i10;
        int i11 = this.zzd;
        if ((i11 & 32) == 0) {
            zzadyVar = new zzaku(zzadyVar, this.zzc);
        }
        this.zzI = zzadyVar;
        zzk();
        zzafb[] zzafbVarArr = new zzafb[2];
        this.zzJ = zzafbVarArr;
        int i12 = 100;
        int i13 = 0;
        if ((i11 & 4) != 0) {
            zzafbVarArr[0] = this.zzI.zzw(100, 5);
            i10 = 1;
            i12 = 101;
        } else {
            i10 = 0;
        }
        zzafb[] zzafbVarArr2 = (zzafb[]) zzex.zzQ(this.zzJ, i10);
        this.zzJ = zzafbVarArr2;
        for (zzafb zzafbVar : zzafbVarArr2) {
            zzafbVar.zzm(zzb);
        }
        List list = this.zze;
        this.zzK = new zzafb[list.size()];
        while (i13 < this.zzK.length) {
            zzafb zzw = this.zzI.zzw(i12, 3);
            zzw.zzm((zzz) list.get(i13));
            this.zzK[i13] = zzw;
            i13++;
            i12++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        SparseArray sparseArray = this.zzf;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((zzajc) sparseArray.valueAt(i10)).zzi();
        }
        this.zzo.clear();
        this.zzy = 0;
        this.zzp.zzc();
        this.zzz = j11;
        this.zzn.clear();
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        zzfyq zzn;
        zzaey zza2 = zzajo.zza(zzadwVar);
        if (zza2 != null) {
            zzn = zzfyq.zzo(zza2);
        } else {
            zzn = zzfyq.zzn();
        }
        this.zzr = zzn;
        if (zza2 == null) {
            return true;
        }
        return false;
    }

    public zzajd(zzakr zzakrVar, int i10, @Nullable zzeu zzeuVar, @Nullable zzajp zzajpVar, List list, @Nullable zzafb zzafbVar) {
        this.zzc = zzakrVar;
        this.zzd = i10;
        this.zze = Collections.unmodifiableList(list);
        this.zzl = new zzags();
        this.zzm = new zzen(16);
        this.zzg = new zzen(zzfv.zza);
        this.zzh = new zzen(6);
        this.zzi = new zzen();
        byte[] bArr = new byte[16];
        this.zzj = bArr;
        this.zzk = new zzen(bArr);
        this.zzn = new ArrayDeque();
        this.zzo = new ArrayDeque();
        this.zzf = new SparseArray();
        this.zzr = zzfyq.zzn();
        this.zzA = -9223372036854775807L;
        this.zzz = -9223372036854775807L;
        this.zzB = -9223372036854775807L;
        this.zzI = zzady.zza;
        this.zzJ = new zzafb[0];
        this.zzK = new zzafb[0];
        this.zzp = new zzfz(new zzfy() { // from class: com.google.android.gms.internal.ads.zzaja
            @Override // com.google.android.gms.internal.ads.zzfy
            public final void zza(long j10, zzen zzenVar) {
                zzadh.zza(j10, zzenVar, zzajd.this.zzK);
            }
        });
        this.zzq = new zzadj();
        this.zzM = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
