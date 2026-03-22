package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbj {
    @Nullable
    public Object zza;
    @Nullable
    public Object zzb;
    public int zzc;
    public long zzd;
    public long zze;
    public boolean zzf;
    public zzb zzg = zzb.zza;

    static {
        String str = zzex.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbj.class.equals(obj.getClass())) {
            zzbj zzbjVar = (zzbj) obj;
            if (Objects.equals(this.zza, zzbjVar.zza) && Objects.equals(this.zzb, zzbjVar.zzb) && this.zzc == zzbjVar.zzc && this.zzd == zzbjVar.zzd && this.zzf == zzbjVar.zzf && Objects.equals(this.zzg, zzbjVar.zzg)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        Object obj = this.zza;
        int i10 = 0;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        Object obj2 = this.zzb;
        if (obj2 != null) {
            i10 = obj2.hashCode();
        }
        int i11 = ((((hashCode + 217) * 31) + i10) * 31) + this.zzc;
        long j10 = this.zzd;
        return (((((i11 * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 961) + (this.zzf ? 1 : 0)) * 31) + this.zzg.hashCode();
    }

    public final int zza(int i10) {
        return this.zzg.zza(i10).zzb;
    }

    public final int zzb() {
        int i10 = this.zzg.zzb;
        return 0;
    }

    public final int zzc(long j10) {
        return -1;
    }

    public final int zzd(long j10) {
        this.zzg.zzb(-1);
        return -1;
    }

    public final int zze(int i10) {
        return this.zzg.zza(i10).zza(-1);
    }

    public final long zzf(int i10, int i11) {
        zza zza = this.zzg.zza(i10);
        if (zza.zzb != -1) {
            return zza.zzf[i11];
        }
        return -9223372036854775807L;
    }

    public final long zzg(int i10) {
        long j10 = this.zzg.zza(i10).zza;
        return 0L;
    }

    public final long zzh() {
        long j10 = this.zzg.zzc;
        return 0L;
    }

    public final zzbj zzi(@Nullable Object obj, @Nullable Object obj2, int i10, long j10, long j11, zzb zzbVar, boolean z10) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = i10;
        this.zzd = j10;
        this.zze = 0L;
        this.zzg = zzbVar;
        this.zzf = z10;
        return this;
    }

    public final boolean zzj(int i10) {
        zzb();
        if (i10 == -1) {
            this.zzg.zzb(-1);
            return false;
        }
        return false;
    }

    public final boolean zzk(int i10) {
        boolean z10 = this.zzg.zza(i10).zzi;
        return false;
    }
}
