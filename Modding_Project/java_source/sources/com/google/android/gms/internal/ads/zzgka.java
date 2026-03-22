package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgka extends zzgga {
    private final zzgjz zza;

    private zzgka(zzgjz zzgjzVar) {
        this.zza = zzgjzVar;
    }

    public static zzgka zzc(zzgjz zzgjzVar) {
        return new zzgka(zzgjzVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgka) || ((zzgka) obj).zza != this.zza) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgka.class, this.zza);
    }

    public final String toString() {
        String obj = this.zza.toString();
        return "XChaCha20Poly1305 Parameters (variant: " + obj + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zza != zzgjz.zzc) {
            return true;
        }
        return false;
    }

    public final zzgjz zzb() {
        return this.zza;
    }
}
