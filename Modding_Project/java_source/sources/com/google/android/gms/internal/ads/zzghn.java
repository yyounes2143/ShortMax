package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzghn {
    private zzghx zza = null;
    private zzgxf zzb = null;
    private Integer zzc = null;

    private zzghn() {
    }

    public final zzghn zza(Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzghn zzb(zzgxf zzgxfVar) {
        this.zzb = zzgxfVar;
        return this;
    }

    public final zzghn zzc(zzghx zzghxVar) {
        this.zza = zzghxVar;
        return this;
    }

    public final zzghp zzd() throws GeneralSecurityException {
        zzgxf zzgxfVar;
        zzgxe zzb;
        zzghx zzghxVar = this.zza;
        if (zzghxVar != null && (zzgxfVar = this.zzb) != null) {
            if (zzghxVar.zzb() == zzgxfVar.zza()) {
                if (zzghxVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                if (this.zza.zzd() == zzghv.zzc) {
                    zzb = zzgnz.zza;
                } else if (this.zza.zzd() == zzghv.zzb) {
                    zzb = zzgnz.zza(this.zzc.intValue());
                } else if (this.zza.zzd() == zzghv.zza) {
                    zzb = zzgnz.zzb(this.zzc.intValue());
                } else {
                    throw new IllegalStateException("Unknown AesGcmSivParameters.Variant: ".concat(String.valueOf(this.zza.zzd())));
                }
                return new zzghp(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzghn(zzgho zzghoVar) {
    }
}
