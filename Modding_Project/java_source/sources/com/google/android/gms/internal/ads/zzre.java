package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzre {
    private final zzcn[] zza;
    private final zzrw zzb;
    private final zzcq zzc;

    public zzre(zzcn... zzcnVarArr) {
        zzrw zzrwVar = new zzrw();
        zzcq zzcqVar = new zzcq();
        this.zza = r2;
        System.arraycopy(zzcnVarArr, 0, r2, 0, 0);
        this.zzb = zzrwVar;
        this.zzc = zzcqVar;
        zzcn[] zzcnVarArr2 = {zzrwVar, zzcqVar};
    }

    public final long zza(long j10) {
        zzcq zzcqVar = this.zzc;
        if (zzcqVar.zzg()) {
            return zzcqVar.zzi(j10);
        }
        return j10;
    }

    public final long zzb() {
        return this.zzb.zzo();
    }

    public final zzbb zzc(zzbb zzbbVar) {
        zzcq zzcqVar = this.zzc;
        zzcqVar.zzk(zzbbVar.zzb);
        zzcqVar.zzj(zzbbVar.zzc);
        return zzbbVar;
    }

    public final boolean zzd(boolean z10) {
        this.zzb.zzp(z10);
        return z10;
    }

    public final zzcn[] zze() {
        return this.zza;
    }
}
