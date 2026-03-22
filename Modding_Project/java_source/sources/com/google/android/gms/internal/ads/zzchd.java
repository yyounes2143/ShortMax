package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzchd {
    public final int zza;
    public final int zzb;
    private final int zzc;

    private zzchd(int i10, int i11, int i12) {
        this.zzc = i10;
        this.zzb = i11;
        this.zza = i12;
    }

    public static zzchd zza() {
        return new zzchd(0, 0, 0);
    }

    public static zzchd zzb(int i10, int i11) {
        return new zzchd(1, i10, i11);
    }

    public static zzchd zzc(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        if (zzrVar.zzd) {
            return new zzchd(3, 0, 0);
        }
        if (zzrVar.zzi) {
            return new zzchd(2, 0, 0);
        }
        if (zzrVar.zzh) {
            return new zzchd(0, 0, 0);
        }
        return new zzchd(1, zzrVar.zzf, zzrVar.zzc);
    }

    public static zzchd zzd() {
        return new zzchd(5, 0, 0);
    }

    public static zzchd zze() {
        return new zzchd(4, 0, 0);
    }

    public final boolean zzf() {
        if (this.zzc == 0) {
            return true;
        }
        return false;
    }

    public final boolean zzg() {
        if (this.zzc == 2) {
            return true;
        }
        return false;
    }

    public final boolean zzh() {
        if (this.zzc == 5) {
            return true;
        }
        return false;
    }

    public final boolean zzi() {
        if (this.zzc == 3) {
            return true;
        }
        return false;
    }

    public final boolean zzj() {
        if (this.zzc == 4) {
            return true;
        }
        return false;
    }
}
