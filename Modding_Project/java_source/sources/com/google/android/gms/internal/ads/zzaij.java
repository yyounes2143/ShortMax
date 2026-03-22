package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaij implements zzaig {
    private final long zza;
    private final int zzb;
    private final long zzc;
    private final int zzd;
    private final long zze;
    private final long zzf;
    @Nullable
    private final long[] zzg;

    private zzaij(long j10, int i10, long j11, int i11, long j12, @Nullable long[] jArr) {
        this.zza = j10;
        this.zzb = i10;
        this.zzc = j11;
        this.zzd = i11;
        this.zze = j12;
        this.zzg = jArr;
        this.zzf = j12 != -1 ? j10 + j12 : -1L;
    }

    @Nullable
    public static zzaij zzb(zzaii zzaiiVar, long j10) {
        long zza = zzaiiVar.zza();
        if (zza == -9223372036854775807L) {
            return null;
        }
        zzaen zzaenVar = zzaiiVar.zza;
        return new zzaij(j10, zzaenVar.zzc, zza, zzaenVar.zzf, zzaiiVar.zzc, zzaiiVar.zzf);
    }

    private final long zzf(int i10) {
        return (this.zzc * i10) / 100;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final int zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final long zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final long zze(long j10) {
        long j11;
        double d10;
        if (zzh()) {
            long j12 = j10 - this.zza;
            if (j12 > this.zzb) {
                long[] jArr = this.zzg;
                zzdd.zzb(jArr);
                double d11 = (j12 * 256.0d) / this.zze;
                int zzd = zzex.zzd(jArr, (long) d11, true, true);
                long zzf = zzf(zzd);
                long j13 = jArr[zzd];
                int i10 = zzd + 1;
                long zzf2 = zzf(i10);
                if (zzd == 99) {
                    j11 = 256;
                } else {
                    j11 = jArr[i10];
                }
                if (j13 == j11) {
                    d10 = 0.0d;
                } else {
                    d10 = (d11 - j13) / (j11 - j13);
                }
                return zzf + Math.round(d10 * (zzf2 - zzf));
            }
            return 0L;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        double d10;
        if (!zzh()) {
            zzaev zzaevVar = new zzaev(0L, this.zza + this.zzb);
            return new zzaes(zzaevVar, zzaevVar);
        }
        long j11 = this.zzc;
        String str = zzex.zza;
        long max = Math.max(0L, Math.min(j10, j11));
        double d11 = (max * 100.0d) / j11;
        double d12 = 0.0d;
        if (d11 > 0.0d) {
            if (d11 >= 100.0d) {
                d12 = 256.0d;
            } else {
                int i10 = (int) d11;
                long[] jArr = this.zzg;
                zzdd.zzb(jArr);
                double d13 = jArr[i10];
                if (i10 == 99) {
                    d10 = 256.0d;
                } else {
                    d10 = jArr[i10 + 1];
                }
                d12 = d13 + ((d11 - i10) * (d10 - d13));
            }
        }
        long j12 = this.zze;
        zzaev zzaevVar2 = new zzaev(max, this.zza + Math.max(this.zzb, Math.min(Math.round((d12 / 256.0d) * j12), j12 - 1)));
        return new zzaes(zzaevVar2, zzaevVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        if (this.zzg != null) {
            return true;
        }
        return false;
    }
}
