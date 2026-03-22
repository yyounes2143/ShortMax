package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaih implements zzaig {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final long zzd;
    private final int zze;

    private zzaih(long[] jArr, long[] jArr2, long j10, long j11, long j12, int i10) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j10;
        this.zzd = j12;
        this.zze = i10;
    }

    @Nullable
    public static zzaih zzb(long j10, long j11, zzaen zzaenVar, zzen zzenVar) {
        int zzg;
        long j12;
        int zzm;
        zzenVar.zzM(6);
        int zzg2 = zzenVar.zzg();
        long j13 = zzaenVar.zzc;
        long j14 = zzg2;
        if (zzenVar.zzg() > 0) {
            long zzt = zzex.zzt((zzg * zzaenVar.zzg) - 1, zzaenVar.zzd);
            int zzq = zzenVar.zzq();
            int zzq2 = zzenVar.zzq();
            int zzq3 = zzenVar.zzq();
            zzenVar.zzM(2);
            long j15 = j11 + zzaenVar.zzc;
            long[] jArr = new long[zzq];
            long[] jArr2 = new long[zzq];
            for (int i10 = 0; i10 < zzq; i10++) {
                jArr[i10] = (i10 * zzt) / zzq;
                jArr2[i10] = j15;
                if (zzq3 != 1) {
                    if (zzq3 != 2) {
                        if (zzq3 != 3) {
                            if (zzq3 != 4) {
                                return null;
                            }
                            zzm = zzenVar.zzp();
                        } else {
                            zzm = zzenVar.zzo();
                        }
                    } else {
                        zzm = zzenVar.zzq();
                    }
                } else {
                    zzm = zzenVar.zzm();
                }
                j15 += zzm * zzq2;
            }
            long j16 = j11 + j13;
            long j17 = j14 + j16;
            if (j10 != -1 && j10 != j17) {
                zzea.zzf("VbriSeeker", "VBRI data size mismatch: " + j10 + ", " + j17);
            }
            if (j17 != j15) {
                zzea.zzf("VbriSeeker", "VBRI bytes and ToC mismatch (using max): " + j17 + ", " + j15 + "\nSeeking will be inaccurate.");
                j12 = Math.max(j17, j15);
            } else {
                j12 = j17;
            }
            return new zzaih(jArr, jArr2, zzt, j16, j12, zzaenVar.zzf);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final int zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final long zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final long zze(long j10) {
        return this.zza[zzex.zzd(this.zzb, j10, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        long[] jArr = this.zza;
        int zzd = zzex.zzd(jArr, j10, true, true);
        long j11 = jArr[zzd];
        long[] jArr2 = this.zzb;
        zzaev zzaevVar = new zzaev(j11, jArr2[zzd]);
        if (zzaevVar.zzb < j10 && zzd != jArr.length - 1) {
            int i10 = zzd + 1;
            return new zzaes(zzaevVar, new zzaev(jArr[i10], jArr2[i10]));
        }
        return new zzaes(zzaevVar, zzaevVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        return true;
    }
}
