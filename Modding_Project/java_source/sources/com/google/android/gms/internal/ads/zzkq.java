package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzkq {
    public zzls zza;
    public int zzb;
    public boolean zzc;
    public int zzd;
    private boolean zze;

    public zzkq(zzls zzlsVar) {
        this.zza = zzlsVar;
    }

    public final void zza(int i10) {
        boolean z10 = true;
        if (1 != ((this.zze ? 1 : 0) | i10)) {
            z10 = false;
        }
        this.zze = z10;
        this.zzb += i10;
    }

    public final void zzb(zzls zzlsVar) {
        boolean z10;
        boolean z11 = this.zze;
        if (this.zza != zzlsVar) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zze = z11 | z10;
        this.zza = zzlsVar;
    }

    public final void zzc(int i10) {
        boolean z10 = true;
        if (this.zzc && this.zzd != 5) {
            if (i10 != 5) {
                z10 = false;
            }
            zzdd.zzd(z10);
            return;
        }
        this.zze = true;
        this.zzc = true;
        this.zzd = i10;
    }
}
