package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgid extends zzgga {
    private final zzgic zza;

    private zzgid(zzgic zzgicVar) {
        this.zza = zzgicVar;
    }

    public static zzgid zzc(zzgic zzgicVar) {
        return new zzgid(zzgicVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgid) || ((zzgid) obj).zza != this.zza) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgid.class, this.zza);
    }

    public final String toString() {
        String obj = this.zza.toString();
        return "ChaCha20Poly1305 Parameters (variant: " + obj + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zza != zzgic.zzc) {
            return true;
        }
        return false;
    }

    public final zzgic zzb() {
        return this.zza;
    }
}
