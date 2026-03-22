package com.google.android.gms.internal.ads;

import android.util.Pair;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzht extends zzbl {
    private final int zzb;
    private final zzxc zzc;

    public zzht(boolean z10, zzxc zzxcVar) {
        this.zzc = zzxcVar;
        this.zzb = zzxcVar.zzc();
    }

    private final int zzw(int i10, boolean z10) {
        if (z10) {
            return this.zzc.zzd(i10);
        }
        if (i10 >= this.zzb - 1) {
            return -1;
        }
        return i10 + 1;
    }

    private final int zzx(int i10, boolean z10) {
        if (z10) {
            return this.zzc.zze(i10);
        }
        if (i10 <= 0) {
            return -1;
        }
        return i10 - 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zza(Object obj) {
        int zza;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int zzp = zzp(obj2);
            if (zzp != -1 && (zza = zzu(zzp).zza(obj3)) != -1) {
                return zzs(zzp) + zza;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbj zzd(int i10, zzbj zzbjVar, boolean z10) {
        int zzq = zzq(i10);
        int zzt = zzt(zzq);
        zzu(zzq).zzd(i10 - zzs(zzq), zzbjVar, z10);
        zzbjVar.zzc += zzt;
        if (z10) {
            Object zzv = zzv(zzq);
            Object obj = zzbjVar.zzb;
            obj.getClass();
            zzbjVar.zzb = Pair.create(zzv, obj);
        }
        return zzbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbk zze(int i10, zzbk zzbkVar, long j10) {
        int zzr = zzr(i10);
        int zzt = zzt(zzr);
        int zzs = zzs(zzr);
        zzu(zzr).zze(i10 - zzt, zzbkVar, j10);
        Object zzv = zzv(zzr);
        if (!zzbk.zza.equals(zzbkVar.zzb)) {
            zzv = Pair.create(zzv, zzbkVar.zzb);
        }
        zzbkVar.zzb = zzv;
        zzbkVar.zzn += zzs;
        zzbkVar.zzo += zzs;
        return zzbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final Object zzf(int i10) {
        int zzq = zzq(i10);
        return Pair.create(zzv(zzq), zzu(zzq).zzf(i10 - zzs(zzq)));
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzg(boolean z10) {
        int i10;
        if (this.zzb == 0) {
            return -1;
        }
        if (z10) {
            i10 = this.zzc.zza();
        } else {
            i10 = 0;
        }
        while (zzu(i10).zzo()) {
            i10 = zzw(i10, z10);
            if (i10 == -1) {
                return -1;
            }
        }
        return zzt(i10) + zzu(i10).zzg(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzh(boolean z10) {
        int i10;
        int i11 = this.zzb;
        if (i11 == 0) {
            return -1;
        }
        if (z10) {
            i10 = this.zzc.zzb();
        } else {
            i10 = i11 - 1;
        }
        while (zzu(i10).zzo()) {
            i10 = zzx(i10, z10);
            if (i10 == -1) {
                return -1;
            }
        }
        return zzt(i10) + zzu(i10).zzh(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzj(int i10, int i11, boolean z10) {
        int i12;
        int zzr = zzr(i10);
        int zzt = zzt(zzr);
        zzbl zzu = zzu(zzr);
        int i13 = i10 - zzt;
        if (i11 == 2) {
            i12 = 0;
        } else {
            i12 = i11;
        }
        int zzj = zzu.zzj(i13, i12, z10);
        if (zzj != -1) {
            return zzt + zzj;
        }
        int zzw = zzw(zzr, z10);
        while (zzw != -1 && zzu(zzw).zzo()) {
            zzw = zzw(zzw, z10);
        }
        if (zzw != -1) {
            return zzt(zzw) + zzu(zzw).zzg(z10);
        }
        if (i11 != 2) {
            return -1;
        }
        return zzg(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzk(int i10, int i11, boolean z10) {
        int zzr = zzr(i10);
        int zzt = zzt(zzr);
        int zzk = zzu(zzr).zzk(i10 - zzt, 0, false);
        if (zzk != -1) {
            return zzt + zzk;
        }
        int zzx = zzx(zzr, false);
        while (zzx != -1 && zzu(zzx).zzo()) {
            zzx = zzx(zzx, false);
        }
        if (zzx == -1) {
            return -1;
        }
        return zzt(zzx) + zzu(zzx).zzh(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbj zzn(Object obj, zzbj zzbjVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int zzp = zzp(obj2);
        int zzt = zzt(zzp);
        zzu(zzp).zzn(obj3, zzbjVar);
        zzbjVar.zzc += zzt;
        zzbjVar.zzb = obj;
        return zzbjVar;
    }

    protected abstract int zzp(Object obj);

    protected abstract int zzq(int i10);

    protected abstract int zzr(int i10);

    protected abstract int zzs(int i10);

    protected abstract int zzt(int i10);

    protected abstract zzbl zzu(int i10);

    protected abstract Object zzv(int i10);
}
