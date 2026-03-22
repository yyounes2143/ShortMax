package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaix {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb;

    static {
        String str = zzex.zza;
        zzb = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static int zza(int i10) {
        return (i10 >> 24) & 255;
    }

    @Nullable
    public static zzav zzb(zzfc zzfcVar) {
        zzfa zzfaVar;
        zzfd zzb2 = zzfcVar.zzb(1751411826);
        zzfd zzb3 = zzfcVar.zzb(1801812339);
        zzfd zzb4 = zzfcVar.zzb(1768715124);
        if (zzb2 != null && zzb3 != null && zzb4 != null && zzi(zzb2.zza) == 1835299937) {
            zzen zzenVar = zzb3.zza;
            zzenVar.zzL(12);
            int zzg = zzenVar.zzg();
            String[] strArr = new String[zzg];
            for (int i10 = 0; i10 < zzg; i10++) {
                int zzg2 = zzenVar.zzg();
                zzenVar.zzM(4);
                strArr[i10] = zzenVar.zzB(zzg2 - 8, StandardCharsets.UTF_8);
            }
            zzen zzenVar2 = zzb4.zza;
            zzenVar2.zzL(8);
            ArrayList arrayList = new ArrayList();
            while (zzenVar2.zza() > 8) {
                int zzc = zzenVar2.zzc() + zzenVar2.zzg();
                int zzg3 = zzenVar2.zzg() - 1;
                if (zzg3 >= 0 && zzg3 < zzg) {
                    String str = strArr[zzg3];
                    while (true) {
                        int zzc2 = zzenVar2.zzc();
                        if (zzc2 < zzc) {
                            int zzg4 = zzenVar2.zzg();
                            if (zzenVar2.zzg() == 1684108385) {
                                int zzg5 = zzenVar2.zzg();
                                int zzg6 = zzenVar2.zzg();
                                int i11 = zzg4 - 16;
                                byte[] bArr = new byte[i11];
                                zzenVar2.zzH(bArr, 0, i11);
                                zzfaVar = new zzfa(str, bArr, zzg6, zzg5);
                                break;
                            }
                            zzenVar2.zzL(zzc2 + zzg4);
                        } else {
                            zzfaVar = null;
                            break;
                        }
                    }
                    if (zzfaVar != null) {
                        arrayList.add(zzfaVar);
                    }
                } else {
                    zzea.zzf("BoxParsers", "Skipped metadata with unknown key index: " + zzg3);
                }
                zzenVar2.zzL(zzc);
            }
            if (!arrayList.isEmpty()) {
                return new zzav(arrayList);
            }
        }
        return null;
    }

    public static zzav zzc(zzfd zzfdVar) {
        int zzn;
        zzen zzenVar = zzfdVar.zza;
        zzenVar.zzL(8);
        zzav zzavVar = new zzav(-9223372036854775807L, new zzau[0]);
        while (zzenVar.zza() >= 8) {
            int zzc = zzenVar.zzc();
            int zzg = zzenVar.zzg() + zzc;
            int zzg2 = zzenVar.zzg();
            zzav zzavVar2 = null;
            if (zzg2 == 1835365473) {
                zzenVar.zzL(zzc);
                zzenVar.zzM(8);
                zzg(zzenVar);
                while (true) {
                    if (zzenVar.zzc() >= zzg) {
                        break;
                    }
                    int zzc2 = zzenVar.zzc();
                    int zzg3 = zzenVar.zzg() + zzc2;
                    if (zzenVar.zzg() == 1768715124) {
                        zzenVar.zzL(zzc2);
                        zzenVar.zzM(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzenVar.zzc() < zzg3) {
                            zzau zza2 = zzajf.zza(zzenVar);
                            if (zza2 != null) {
                                arrayList.add(zza2);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            zzavVar2 = new zzav(arrayList);
                        }
                    } else {
                        zzenVar.zzL(zzg3);
                    }
                }
                zzavVar = zzavVar.zzd(zzavVar2);
            } else if (zzg2 == 1936553057) {
                zzenVar.zzL(zzc);
                zzenVar.zzM(12);
                while (true) {
                    if (zzenVar.zzc() >= zzg) {
                        break;
                    }
                    int zzc3 = zzenVar.zzc();
                    int zzg4 = zzenVar.zzg();
                    if (zzenVar.zzg() == 1935766900) {
                        if (zzg4 >= 16) {
                            zzenVar.zzM(4);
                            int i10 = -1;
                            int i11 = 0;
                            for (int i12 = 0; i12 < 2; i12++) {
                                int zzm = zzenVar.zzm();
                                int zzm2 = zzenVar.zzm();
                                if (zzm == 0) {
                                    i10 = zzm2;
                                } else if (zzm == 1) {
                                    i11 = zzm2;
                                }
                            }
                            if (i10 == 12) {
                                zzn = 240;
                            } else if (i10 == 13) {
                                zzn = 120;
                            } else {
                                if (i10 == 21 && zzenVar.zza() >= 8 && zzenVar.zzc() + 8 <= zzg) {
                                    int zzg5 = zzenVar.zzg();
                                    int zzg6 = zzenVar.zzg();
                                    if (zzg5 >= 12 && zzg6 == 1936877170) {
                                        zzn = zzenVar.zzn();
                                    }
                                }
                                zzn = -2147483647;
                            }
                            if (zzn != -2147483647) {
                                zzavVar2 = new zzav(-9223372036854775807L, new zzahp(zzn, i11));
                            }
                        }
                    } else {
                        zzenVar.zzL(zzc3 + zzg4);
                    }
                }
                zzavVar = zzavVar.zzd(zzavVar2);
            } else if (zzg2 == -1451722374) {
                zzavVar = zzavVar.zzd(zzm(zzenVar));
            }
            zzenVar.zzL(zzg);
        }
        return zzavVar;
    }

    public static zzfh zzd(zzen zzenVar) {
        long zzt;
        long zzt2;
        zzenVar.zzL(8);
        if (zza(zzenVar.zzg()) == 0) {
            zzt = zzenVar.zzu();
            zzt2 = zzenVar.zzu();
        } else {
            zzt = zzenVar.zzt();
            zzt2 = zzenVar.zzt();
        }
        return new zzfh(zzt, zzt2, zzenVar.zzu());
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x02c3 A[LOOP:14: B:111:0x02c3->B:115:0x02cd, LOOP_START, PHI: r24 
      PHI: (r24v2 int) = (r24v1 int), (r24v3 int) binds: [B:110:0x02c1, B:115:0x02cd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x02b6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzajs zze(com.google.android.gms.internal.ads.zzajp r41, com.google.android.gms.internal.ads.zzfc r42, com.google.android.gms.internal.ads.zzaej r43) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 1805
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaix.zze(com.google.android.gms.internal.ads.zzajp, com.google.android.gms.internal.ads.zzfc, com.google.android.gms.internal.ads.zzaej):com.google.android.gms.internal.ads.zzajs");
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x011e, code lost:
        r7 = 10;
        r37 = -9223372036854775807L;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:546:0x0c70  */
    /* JADX WARN: Removed duplicated region for block: B:547:0x0c72  */
    /* JADX WARN: Removed duplicated region for block: B:601:0x0e51  */
    /* JADX WARN: Removed duplicated region for block: B:602:0x0e56  */
    /* JADX WARN: Removed duplicated region for block: B:624:0x0f0c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:630:0x026a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List zzf(com.google.android.gms.internal.ads.zzfc r77, com.google.android.gms.internal.ads.zzaej r78, long r79, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzs r81, boolean r82, boolean r83, com.google.android.gms.internal.ads.zzfve r84) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 3862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaix.zzf(com.google.android.gms.internal.ads.zzfc, com.google.android.gms.internal.ads.zzaej, long, com.google.android.gms.internal.ads.zzs, boolean, boolean, com.google.android.gms.internal.ads.zzfve):java.util.List");
    }

    public static void zzg(zzen zzenVar) {
        int zzc = zzenVar.zzc();
        zzenVar.zzM(4);
        if (zzenVar.zzg() != 1751411826) {
            zzc += 4;
        }
        zzenVar.zzL(zzc);
    }

    private static int zzh(zzen zzenVar) {
        int zzm = zzenVar.zzm();
        int i10 = zzm & 127;
        while ((zzm & 128) == 128) {
            zzm = zzenVar.zzm();
            i10 = (i10 << 7) | (zzm & 127);
        }
        return i10;
    }

    private static int zzi(zzen zzenVar) {
        zzenVar.zzL(16);
        return zzenVar.zzg();
    }

    @Nullable
    private static Pair zzj(zzen zzenVar, int i10, int i11) throws zzaz {
        boolean z10;
        boolean z11;
        boolean z12;
        Integer num;
        zzajq zzajqVar;
        Pair create;
        int i12;
        int i13;
        boolean z13;
        byte[] bArr;
        int zzc = zzenVar.zzc();
        while (zzc - i10 < i11) {
            zzenVar.zzL(zzc);
            int zzg = zzenVar.zzg();
            boolean z14 = true;
            if (zzg > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzadz.zzc(z10, "childAtomSize must be positive");
            if (zzenVar.zzg() == 1936289382) {
                int i14 = zzc + 8;
                int i15 = 0;
                int i16 = -1;
                String str = null;
                Integer num2 = null;
                while (i14 - zzc < zzg) {
                    zzenVar.zzL(i14);
                    int zzg2 = zzenVar.zzg();
                    int zzg3 = zzenVar.zzg();
                    if (zzg3 == 1718775137) {
                        num2 = Integer.valueOf(zzenVar.zzg());
                    } else if (zzg3 == 1935894637) {
                        zzenVar.zzM(4);
                        str = zzenVar.zzB(4, StandardCharsets.UTF_8);
                    } else if (zzg3 == 1935894633) {
                        i16 = i14;
                        i15 = zzg2;
                    }
                    i14 += zzg2;
                }
                if (!C.CENC_TYPE_cenc.equals(str) && !C.CENC_TYPE_cbc1.equals(str) && !C.CENC_TYPE_cens.equals(str) && !C.CENC_TYPE_cbcs.equals(str)) {
                    create = null;
                } else {
                    if (num2 != null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    zzadz.zzc(z11, "frma atom is mandatory");
                    if (i16 != -1) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    zzadz.zzc(z12, "schi atom is mandatory");
                    int i17 = i16 + 8;
                    while (true) {
                        if (i17 - i16 < i15) {
                            zzenVar.zzL(i17);
                            int zzg4 = zzenVar.zzg();
                            if (zzenVar.zzg() == 1952804451) {
                                int zza2 = zza(zzenVar.zzg());
                                zzenVar.zzM(1);
                                if (zza2 == 0) {
                                    zzenVar.zzM(1);
                                    i12 = 0;
                                    i13 = 0;
                                } else {
                                    int zzm = zzenVar.zzm();
                                    i12 = zzm & 15;
                                    i13 = (zzm & 240) >> 4;
                                }
                                if (zzenVar.zzm() == 1) {
                                    z13 = true;
                                } else {
                                    z13 = false;
                                }
                                int zzm2 = zzenVar.zzm();
                                byte[] bArr2 = new byte[16];
                                zzenVar.zzH(bArr2, 0, 16);
                                if (z13 && zzm2 == 0) {
                                    int zzm3 = zzenVar.zzm();
                                    byte[] bArr3 = new byte[zzm3];
                                    zzenVar.zzH(bArr3, 0, zzm3);
                                    bArr = bArr3;
                                } else {
                                    bArr = null;
                                }
                                num = num2;
                                zzajqVar = new zzajq(z13, str, zzm2, bArr2, i13, i12, bArr);
                            } else {
                                i17 += zzg4;
                            }
                        } else {
                            num = num2;
                            zzajqVar = null;
                            break;
                        }
                    }
                    if (zzajqVar == null) {
                        z14 = false;
                    }
                    zzadz.zzc(z14, "tenc atom is mandatory");
                    String str2 = zzex.zza;
                    create = Pair.create(num, zzajqVar);
                }
                if (create != null) {
                    return create;
                }
            }
            zzc += zzg;
        }
        return null;
    }

    private static zzk zzk(zzen zzenVar) {
        int i10;
        zzi zziVar = new zzi();
        byte[] zzN = zzenVar.zzN();
        zzem zzemVar = new zzem(zzN, zzN.length);
        zzemVar.zzl(zzenVar.zzc() * 8);
        zzemVar.zzo(1);
        int zzd = zzemVar.zzd(8);
        for (int i11 = 0; i11 < zzd; i11++) {
            zzemVar.zzo(1);
            int zzd2 = zzemVar.zzd(8);
            for (int i12 = 0; i12 < zzd2; i12++) {
                zzemVar.zzn(6);
                boolean zzp = zzemVar.zzp();
                zzemVar.zzm();
                zzemVar.zzo(11);
                zzemVar.zzn(4);
                int zzd3 = zzemVar.zzd(4) + 8;
                zziVar.zzf(zzd3);
                zziVar.zza(zzd3);
                zzemVar.zzo(1);
                if (zzp) {
                    int zzd4 = zzemVar.zzd(8);
                    int zzd5 = zzemVar.zzd(8);
                    zzemVar.zzo(1);
                    boolean zzp2 = zzemVar.zzp();
                    zziVar.zzc(zzk.zza(zzd4));
                    if (true != zzp2) {
                        i10 = 2;
                    } else {
                        i10 = 1;
                    }
                    zziVar.zzb(i10);
                    zziVar.zzd(zzk.zzb(zzd5));
                }
            }
        }
        return zziVar.zzg();
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0144, code lost:
        if (r6 == 1) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzk zzl(com.google.android.gms.internal.ads.zzen r15) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaix.zzl(com.google.android.gms.internal.ads.zzen):com.google.android.gms.internal.ads.zzk");
    }

    @Nullable
    private static zzav zzm(zzen zzenVar) {
        short zzE = zzenVar.zzE();
        zzenVar.zzM(2);
        String zzB = zzenVar.zzB(zzE, StandardCharsets.UTF_8);
        int max = Math.max(zzB.lastIndexOf(43), zzB.lastIndexOf(45));
        try {
            return new zzav(-9223372036854775807L, new zzfg(Float.parseFloat(zzB.substring(0, max)), Float.parseFloat(zzB.substring(max, zzB.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static zzail zzn(zzen zzenVar, int i10) {
        zzenVar.zzL(i10 + 8);
        zzenVar.zzM(4);
        return new zzail(zzenVar.zzu(), zzenVar.zzu());
    }

    private static zzain zzo(zzen zzenVar, int i10) {
        long j10;
        long j11;
        zzenVar.zzL(i10 + 12);
        zzenVar.zzM(1);
        zzh(zzenVar);
        zzenVar.zzM(2);
        int zzm = zzenVar.zzm();
        if ((zzm & 128) != 0) {
            zzenVar.zzM(2);
        }
        if ((zzm & 64) != 0) {
            zzenVar.zzM(zzenVar.zzm());
        }
        if ((zzm & 32) != 0) {
            zzenVar.zzM(2);
        }
        zzenVar.zzM(1);
        zzh(zzenVar);
        String zzd = zzay.zzd(zzenVar.zzm());
        if (!MimeTypes.AUDIO_MPEG.equals(zzd) && !MimeTypes.AUDIO_DTS.equals(zzd) && !MimeTypes.AUDIO_DTS_HD.equals(zzd)) {
            zzenVar.zzM(4);
            long zzu = zzenVar.zzu();
            long zzu2 = zzenVar.zzu();
            zzenVar.zzM(1);
            int zzh = zzh(zzenVar);
            byte[] bArr = new byte[zzh];
            zzenVar.zzH(bArr, 0, zzh);
            if (zzu2 <= 0) {
                j10 = -1;
            } else {
                j10 = zzu2;
            }
            if (zzu > 0) {
                j11 = zzu;
            } else {
                j11 = -1;
            }
            return new zzain(zzd, bArr, j10, j11);
        }
        return new zzain(zzd, null, -1L, -1L);
    }

    private static ByteBuffer zzp() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x055b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:298:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzq(com.google.android.gms.internal.ads.zzen r29, int r30, int r31, int r32, int r33, @androidx.annotation.Nullable java.lang.String r34, boolean r35, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzs r36, com.google.android.gms.internal.ads.zzais r37, int r38) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 1465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaix.zzq(com.google.android.gms.internal.ads.zzen, int, int, int, int, java.lang.String, boolean, com.google.android.gms.internal.ads.zzs, com.google.android.gms.internal.ads.zzais, int):void");
    }
}
