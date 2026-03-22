package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzggr extends zzgga {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private final zzggp zze;
    private final zzggo zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzggr(int i10, int i11, int i12, int i13, zzggp zzggpVar, zzggo zzggoVar, zzggq zzggqVar) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = i12;
        this.zzd = i13;
        this.zze = zzggpVar;
        this.zzf = zzggoVar;
    }

    public static zzggn zzf() {
        return new zzggn(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzggr)) {
            return false;
        }
        zzggr zzggrVar = (zzggr) obj;
        if (zzggrVar.zza != this.zza || zzggrVar.zzb != this.zzb || zzggrVar.zzc != this.zzc || zzggrVar.zzd != this.zzd || zzggrVar.zze != this.zze || zzggrVar.zzf != this.zzf) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzggr.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd), this.zze, this.zzf);
    }

    public final String toString() {
        zzggo zzggoVar = this.zzf;
        String valueOf = String.valueOf(this.zze);
        String valueOf2 = String.valueOf(zzggoVar);
        return "AesCtrHmacAead Parameters (variant: " + valueOf + ", hashType: " + valueOf2 + ", " + this.zzc + "-byte IV, and " + this.zzd + "-byte tags, and " + this.zza + "-byte AES key, and " + this.zzb + "-byte HMAC key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zze != zzggp.zzc) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zza;
    }

    public final int zzc() {
        return this.zzb;
    }

    public final int zzd() {
        return this.zzc;
    }

    public final int zze() {
        return this.zzd;
    }

    public final zzggo zzg() {
        return this.zzf;
    }

    public final zzggp zzh() {
        return this.zze;
    }
}
