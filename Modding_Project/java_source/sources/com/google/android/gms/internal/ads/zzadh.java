package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzadh {
    public static void zza(long j10, zzen zzenVar, zzafb[] zzafbVarArr) {
        int i10;
        boolean z10;
        while (true) {
            boolean z11 = true;
            if (zzenVar.zza() > 1) {
                int zzc = zzc(zzenVar);
                int zzc2 = zzc(zzenVar);
                int zzc3 = zzenVar.zzc() + zzc2;
                if (zzc2 != -1 && zzc2 <= zzenVar.zza()) {
                    if (zzc == 4 && zzc2 >= 8) {
                        int zzm = zzenVar.zzm();
                        int zzq = zzenVar.zzq();
                        if (zzq == 49) {
                            i10 = zzenVar.zzg();
                            zzq = 49;
                        } else {
                            i10 = 0;
                        }
                        int zzm2 = zzenVar.zzm();
                        if (zzq == 47) {
                            zzenVar.zzM(1);
                            zzq = 47;
                        }
                        if (zzm != 181 || ((zzq != 49 && zzq != 47) || zzm2 != 3)) {
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        if (zzq == 49) {
                            if (i10 != 1195456820) {
                                z11 = false;
                            }
                            z10 &= z11;
                        }
                        if (z10) {
                            zzb(j10, zzenVar, zzafbVarArr);
                        }
                    }
                } else {
                    zzea.zzf("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    zzc3 = zzenVar.zzd();
                }
                zzenVar.zzL(zzc3);
            } else {
                return;
            }
        }
    }

    public static void zzb(long j10, zzen zzenVar, zzafb[] zzafbVarArr) {
        boolean z10;
        int zzm = zzenVar.zzm();
        if ((zzm & 64) != 0) {
            int i10 = zzm & 31;
            zzenVar.zzM(1);
            int zzc = zzenVar.zzc();
            for (zzafb zzafbVar : zzafbVarArr) {
                int i11 = i10 * 3;
                zzenVar.zzL(zzc);
                zzafbVar.zzr(zzenVar, i11);
                if (j10 != -9223372036854775807L) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zzdd.zzf(z10);
                zzafbVar.zzt(j10, 1, i11, 0, null);
            }
        }
    }

    private static int zzc(zzen zzenVar) {
        int i10 = 0;
        while (zzenVar.zza() != 0) {
            int zzm = zzenVar.zzm();
            i10 += zzm;
            if (zzm != 255) {
                return i10;
            }
        }
        return -1;
    }
}
