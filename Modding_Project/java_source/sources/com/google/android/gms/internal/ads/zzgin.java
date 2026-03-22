package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgin extends zzgga {
    private final String zza;
    private final zzgim zzb;

    private zzgin(String str, zzgim zzgimVar) {
        this.zza = str;
        this.zzb = zzgimVar;
    }

    public static zzgin zzc(String str, zzgim zzgimVar) {
        return new zzgin(str, zzgimVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgin)) {
            return false;
        }
        zzgin zzginVar = (zzgin) obj;
        if (!zzginVar.zza.equals(this.zza) || !zzginVar.zzb.equals(this.zzb)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgin.class, this.zza, this.zzb);
    }

    public final String toString() {
        String obj = this.zzb.toString();
        return "LegacyKmsAead Parameters (keyUri: " + this.zza + ", variant: " + obj + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zzb != zzgim.zzb) {
            return true;
        }
        return false;
    }

    public final zzgim zzb() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zza;
    }
}
