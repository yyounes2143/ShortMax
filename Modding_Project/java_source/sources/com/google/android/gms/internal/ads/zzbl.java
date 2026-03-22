package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbl {
    public static final zzbl zza = new zzbi();

    static {
        String str = zzex.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
    }

    public final boolean equals(@Nullable Object obj) {
        int zzh;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbl)) {
            return false;
        }
        zzbl zzblVar = (zzbl) obj;
        if (zzblVar.zzc() == zzc() && zzblVar.zzb() == zzb()) {
            zzbk zzbkVar = new zzbk();
            zzbj zzbjVar = new zzbj();
            zzbk zzbkVar2 = new zzbk();
            zzbj zzbjVar2 = new zzbj();
            for (int i10 = 0; i10 < zzc(); i10++) {
                if (!zze(i10, zzbkVar, 0L).equals(zzblVar.zze(i10, zzbkVar2, 0L))) {
                    return false;
                }
            }
            for (int i11 = 0; i11 < zzb(); i11++) {
                if (!zzd(i11, zzbjVar, true).equals(zzblVar.zzd(i11, zzbjVar2, true))) {
                    return false;
                }
            }
            int zzg = zzg(true);
            if (zzg == zzblVar.zzg(true) && (zzh = zzh(true)) == zzblVar.zzh(true)) {
                while (zzg != zzh) {
                    int zzj = zzj(zzg, 0, true);
                    if (zzj != zzblVar.zzj(zzg, 0, true)) {
                        return false;
                    }
                    zzg = zzj;
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        zzbk zzbkVar = new zzbk();
        zzbj zzbjVar = new zzbj();
        int zzc = zzc() + 217;
        int i11 = 0;
        while (true) {
            i10 = zzc * 31;
            if (i11 >= zzc()) {
                break;
            }
            zzc = i10 + zze(i11, zzbkVar, 0L).hashCode();
            i11++;
        }
        int zzb = i10 + zzb();
        for (int i12 = 0; i12 < zzb(); i12++) {
            zzb = (zzb * 31) + zzd(i12, zzbjVar, true).hashCode();
        }
        int zzg = zzg(true);
        while (zzg != -1) {
            zzb = (zzb * 31) + zzg;
            zzg = zzj(zzg, 0, true);
        }
        return zzb;
    }

    public abstract int zza(Object obj);

    public abstract int zzb();

    public abstract int zzc();

    public abstract zzbj zzd(int i10, zzbj zzbjVar, boolean z10);

    public abstract zzbk zze(int i10, zzbk zzbkVar, long j10);

    public abstract Object zzf(int i10);

    public int zzg(boolean z10) {
        if (zzo()) {
            return -1;
        }
        return 0;
    }

    public int zzh(boolean z10) {
        if (zzo()) {
            return -1;
        }
        return zzc() - 1;
    }

    public final int zzi(int i10, zzbj zzbjVar, zzbk zzbkVar, int i11, boolean z10) {
        int i12 = zzd(i10, zzbjVar, false).zzc;
        if (zze(i12, zzbkVar, 0L).zzo == i10) {
            int zzj = zzj(i12, i11, z10);
            if (zzj == -1) {
                return -1;
            }
            return zze(zzj, zzbkVar, 0L).zzn;
        }
        return i10 + 1;
    }

    public int zzj(int i10, int i11, boolean z10) {
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == zzh(z10)) {
                        return zzg(z10);
                    }
                    return i10 + 1;
                }
                throw new IllegalStateException();
            }
            return i10;
        } else if (i10 == zzh(z10)) {
            return -1;
        } else {
            return i10 + 1;
        }
    }

    public int zzk(int i10, int i11, boolean z10) {
        if (i10 == zzg(false)) {
            return -1;
        }
        return i10 - 1;
    }

    public final Pair zzl(zzbk zzbkVar, zzbj zzbjVar, int i10, long j10) {
        Pair zzm = zzm(zzbkVar, zzbjVar, i10, j10, 0L);
        zzm.getClass();
        return zzm;
    }

    @Nullable
    public final Pair zzm(zzbk zzbkVar, zzbj zzbjVar, int i10, long j10, long j11) {
        zzdd.zza(i10, 0, zzc());
        zze(i10, zzbkVar, j11);
        if (j10 == -9223372036854775807L) {
            long j12 = zzbkVar.zzl;
            j10 = 0;
        }
        int i11 = zzbkVar.zzn;
        zzd(i11, zzbjVar, false);
        while (i11 < zzbkVar.zzo) {
            long j13 = zzbjVar.zze;
            int i12 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
            if (i12 == 0) {
                break;
            }
            int i13 = i11 + 1;
            long j14 = zzd(i13, zzbjVar, false).zze;
            if (i12 < 0) {
                break;
            }
            i11 = i13;
        }
        zzd(i11, zzbjVar, true);
        long j15 = zzbjVar.zze;
        long j16 = zzbjVar.zzd;
        if (j16 != -9223372036854775807L) {
            j10 = Math.min(j10, j16 - 1);
        }
        long max = Math.max(0L, j10);
        Object obj = zzbjVar.zzb;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(max));
    }

    public zzbj zzn(Object obj, zzbj zzbjVar) {
        return zzd(zza(obj), zzbjVar, true);
    }

    public final boolean zzo() {
        if (zzc() == 0) {
            return true;
        }
        return false;
    }
}
