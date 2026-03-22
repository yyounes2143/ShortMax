package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzmp {
    public final long zza;
    public final zzbl zzb;
    public final int zzc;
    @Nullable
    public final zzvh zzd;
    public final long zze;
    public final zzbl zzf;
    public final int zzg;
    @Nullable
    public final zzvh zzh;
    public final long zzi;
    public final long zzj;

    public zzmp(long j10, zzbl zzblVar, int i10, @Nullable zzvh zzvhVar, long j11, zzbl zzblVar2, int i11, @Nullable zzvh zzvhVar2, long j12, long j13) {
        this.zza = j10;
        this.zzb = zzblVar;
        this.zzc = i10;
        this.zzd = zzvhVar;
        this.zze = j11;
        this.zzf = zzblVar2;
        this.zzg = i11;
        this.zzh = zzvhVar2;
        this.zzi = j12;
        this.zzj = j13;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmp.class == obj.getClass()) {
            zzmp zzmpVar = (zzmp) obj;
            if (this.zza == zzmpVar.zza && this.zzc == zzmpVar.zzc && this.zze == zzmpVar.zze && this.zzg == zzmpVar.zzg && this.zzi == zzmpVar.zzi && this.zzj == zzmpVar.zzj && Objects.equals(this.zzb, zzmpVar.zzb) && Objects.equals(this.zzd, zzmpVar.zzd) && Objects.equals(this.zzf, zzmpVar.zzf) && Objects.equals(this.zzh, zzmpVar.zzh)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.zza), this.zzb, Integer.valueOf(this.zzc), this.zzd, Long.valueOf(this.zze), this.zzf, Integer.valueOf(this.zzg), this.zzh, Long.valueOf(this.zzi), Long.valueOf(this.zzj));
    }
}
