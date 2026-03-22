package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzggs {
    private zzghb zza = null;
    private zzgxf zzb = null;
    private Integer zzc = null;

    private zzggs() {
    }

    public final zzggs zza(Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzggs zzb(zzgxf zzgxfVar) {
        this.zzb = zzgxfVar;
        return this;
    }

    public final zzggs zzc(zzghb zzghbVar) {
        this.zza = zzghbVar;
        return this;
    }

    public final zzggu zzd() throws GeneralSecurityException {
        zzgxf zzgxfVar;
        zzgxe zzb;
        zzghb zzghbVar = this.zza;
        if (zzghbVar != null && (zzgxfVar = this.zzb) != null) {
            if (zzghbVar.zzc() == zzgxfVar.zza()) {
                if (zzghbVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                if (this.zza.zze() == zzggz.zzc) {
                    zzb = zzgnz.zza;
                } else if (this.zza.zze() == zzggz.zzb) {
                    zzb = zzgnz.zza(this.zzc.intValue());
                } else if (this.zza.zze() == zzggz.zza) {
                    zzb = zzgnz.zzb(this.zzc.intValue());
                } else {
                    throw new IllegalStateException("Unknown AesEaxParameters.Variant: ".concat(String.valueOf(this.zza.zze())));
                }
                return new zzggu(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzggs(zzggt zzggtVar) {
    }
}
