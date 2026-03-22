package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgjt extends zzgga {
    private final zzgjs zza;
    private final int zzb;

    private zzgjt(zzgjs zzgjsVar, int i10) {
        this.zza = zzgjsVar;
        this.zzb = i10;
    }

    public static zzgjt zzd(zzgjs zzgjsVar, int i10) throws GeneralSecurityException {
        if (i10 >= 8 && i10 <= 12) {
            return new zzgjt(zzgjsVar, i10);
        }
        throw new GeneralSecurityException("Salt size must be between 8 and 12 bytes");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgjt)) {
            return false;
        }
        zzgjt zzgjtVar = (zzgjt) obj;
        if (zzgjtVar.zza != this.zza || zzgjtVar.zzb != this.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgjt.class, this.zza, Integer.valueOf(this.zzb));
    }

    public final String toString() {
        String obj = this.zza.toString();
        return "X-AES-GCM Parameters (variant: " + obj + "salt_size_bytes: " + this.zzb + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zza != zzgjs.zzb) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final zzgjs zzc() {
        return this.zza;
    }
}
