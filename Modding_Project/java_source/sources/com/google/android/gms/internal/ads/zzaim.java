package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaim {
    public final int zza;
    public int zzb;
    public int zzc;
    public long zzd;
    private final boolean zze;
    private final zzen zzf;
    private final zzen zzg;
    private int zzh;
    private int zzi;

    public zzaim(zzen zzenVar, zzen zzenVar2, boolean z10) throws zzaz {
        this.zzg = zzenVar;
        this.zzf = zzenVar2;
        this.zze = z10;
        zzenVar2.zzL(12);
        this.zza = zzenVar2.zzp();
        zzenVar.zzL(12);
        this.zzi = zzenVar.zzp();
        zzadz.zzc(zzenVar.zzg() == 1, "first_chunk must be 1");
        this.zzb = -1;
    }

    public final boolean zza() {
        long zzu;
        int i10 = this.zzb + 1;
        this.zzb = i10;
        if (i10 == this.zza) {
            return false;
        }
        if (this.zze) {
            zzu = this.zzf.zzw();
        } else {
            zzu = this.zzf.zzu();
        }
        this.zzd = zzu;
        if (this.zzb == this.zzh) {
            zzen zzenVar = this.zzg;
            this.zzc = zzenVar.zzp();
            zzenVar.zzM(4);
            int i11 = -1;
            int i12 = this.zzi - 1;
            this.zzi = i12;
            if (i12 > 0) {
                i11 = (-1) + zzenVar.zzp();
            }
            this.zzh = i11;
        }
        return true;
    }
}
