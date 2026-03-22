package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzany {
    private final zzamz zza;
    private final zzeu zzb;
    private final zzem zzc = new zzem(new byte[64], 64);
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    public zzany(zzamz zzamzVar, zzeu zzeuVar) {
        this.zza = zzamzVar;
        this.zzb = zzeuVar;
    }

    public final void zza(zzen zzenVar) throws zzaz {
        long j10;
        long j11;
        zzem zzemVar = this.zzc;
        zzenVar.zzH(zzemVar.zza, 0, 3);
        zzemVar.zzl(0);
        zzemVar.zzn(8);
        this.zzd = zzemVar.zzp();
        this.zze = zzemVar.zzp();
        zzemVar.zzn(6);
        zzenVar.zzH(zzemVar.zza, 0, zzemVar.zzd(8));
        zzemVar.zzl(0);
        if (this.zzd) {
            zzemVar.zzn(4);
            long zzd = zzemVar.zzd(3);
            zzemVar.zzn(1);
            int zzd2 = zzemVar.zzd(15) << 15;
            zzemVar.zzn(1);
            long zzd3 = zzemVar.zzd(15);
            zzemVar.zzn(1);
            if (!this.zzf && this.zze) {
                zzemVar.zzn(4);
                zzemVar.zzn(1);
                zzemVar.zzn(1);
                j11 = zzd;
                zzemVar.zzn(1);
                this.zzb.zzb((zzemVar.zzd(3) << 30) | (zzemVar.zzd(15) << 15) | zzemVar.zzd(15));
                this.zzf = true;
            } else {
                j11 = zzd;
            }
            j10 = this.zzb.zzb((j11 << 30) | zzd2 | zzd3);
        } else {
            j10 = 0;
        }
        zzamz zzamzVar = this.zza;
        zzamzVar.zzd(j10, 4);
        zzamzVar.zza(zzenVar);
        zzamzVar.zzc(false);
    }

    public final void zzb() {
        this.zzf = false;
        this.zza.zze();
    }
}
