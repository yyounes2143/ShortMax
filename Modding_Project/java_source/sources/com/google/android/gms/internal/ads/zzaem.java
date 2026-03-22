package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaem implements zzaeu {
    private final zzeb zza;
    private final zzeb zzb;
    private long zzc;

    public zzaem(long[] jArr, long[] jArr2, long j10) {
        boolean z10;
        int length = jArr.length;
        int length2 = jArr2.length;
        if (length == length2) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        if (length2 > 0 && jArr2[0] > 0) {
            int i10 = length2 + 1;
            zzeb zzebVar = new zzeb(i10);
            this.zza = zzebVar;
            zzeb zzebVar2 = new zzeb(i10);
            this.zzb = zzebVar2;
            zzebVar.zzc(0L);
            zzebVar2.zzc(0L);
        } else {
            this.zza = new zzeb(length2);
            this.zzb = new zzeb(length2);
        }
        this.zza.zzd(jArr);
        this.zzb.zzd(jArr2);
        this.zzc = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        zzeb zzebVar = this.zzb;
        if (zzebVar.zza() == 0) {
            zzaev zzaevVar = zzaev.zza;
            return new zzaes(zzaevVar, zzaevVar);
        }
        int zzb = zzex.zzb(zzebVar, j10, true, true);
        long zzb2 = zzebVar.zzb(zzb);
        zzeb zzebVar2 = this.zza;
        zzaev zzaevVar2 = new zzaev(zzb2, zzebVar2.zzb(zzb));
        if (zzaevVar2.zzb != j10 && zzb != zzebVar.zza() - 1) {
            int i10 = zzb + 1;
            return new zzaes(zzaevVar2, new zzaev(zzebVar.zzb(i10), zzebVar2.zzb(i10)));
        }
        return new zzaes(zzaevVar2, zzaevVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        if (this.zzb.zza() > 0) {
            return true;
        }
        return false;
    }
}
