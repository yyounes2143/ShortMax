package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgpz {
    private zzgql zza = null;
    private zzgxf zzb = null;
    private Integer zzc = null;

    private zzgpz() {
    }

    public final zzgpz zza(Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgpz zzb(zzgxf zzgxfVar) {
        this.zzb = zzgxfVar;
        return this;
    }

    public final zzgpz zzc(zzgql zzgqlVar) {
        this.zza = zzgqlVar;
        return this;
    }

    public final zzgqb zzd() throws GeneralSecurityException {
        zzgxf zzgxfVar;
        zzgxe zza;
        zzgql zzgqlVar = this.zza;
        if (zzgqlVar != null && (zzgxfVar = this.zzb) != null) {
            if (zzgqlVar.zzc() == zzgxfVar.zza()) {
                if (zzgqlVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                if (this.zza.zzg() == zzgqj.zzd) {
                    zza = zzgnz.zza;
                } else if (this.zza.zzg() != zzgqj.zzc && this.zza.zzg() != zzgqj.zzb) {
                    if (this.zza.zzg() == zzgqj.zza) {
                        zza = zzgnz.zzb(this.zzc.intValue());
                    } else {
                        throw new IllegalStateException("Unknown HmacParameters.Variant: ".concat(String.valueOf(this.zza.zzg())));
                    }
                } else {
                    zza = zzgnz.zza(this.zzc.intValue());
                }
                return new zzgqb(this.zza, this.zzb, zza, this.zzc, null);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgpz(zzgqa zzgqaVar) {
    }
}
