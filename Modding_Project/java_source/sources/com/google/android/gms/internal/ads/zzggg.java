package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzggg {
    private zzggr zza = null;
    private zzgxf zzb = null;
    private zzgxf zzc = null;
    private Integer zzd = null;

    private zzggg() {
    }

    public final zzggg zza(zzgxf zzgxfVar) {
        this.zzb = zzgxfVar;
        return this;
    }

    public final zzggg zzb(zzgxf zzgxfVar) {
        this.zzc = zzgxfVar;
        return this;
    }

    public final zzggg zzc(Integer num) {
        this.zzd = num;
        return this;
    }

    public final zzggg zzd(zzggr zzggrVar) {
        this.zza = zzggrVar;
        return this;
    }

    public final zzggi zze() throws GeneralSecurityException {
        zzgxe zzb;
        zzggr zzggrVar = this.zza;
        if (zzggrVar != null) {
            zzgxf zzgxfVar = this.zzb;
            if (zzgxfVar != null && this.zzc != null) {
                if (zzggrVar.zzb() == zzgxfVar.zza()) {
                    if (zzggrVar.zzc() == this.zzc.zza()) {
                        if (this.zza.zza() && this.zzd == null) {
                            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                        }
                        if (!this.zza.zza() && this.zzd != null) {
                            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                        }
                        if (this.zza.zzh() == zzggp.zzc) {
                            zzb = zzgnz.zza;
                        } else if (this.zza.zzh() == zzggp.zzb) {
                            zzb = zzgnz.zza(this.zzd.intValue());
                        } else if (this.zza.zzh() == zzggp.zza) {
                            zzb = zzgnz.zzb(this.zzd.intValue());
                        } else {
                            throw new IllegalStateException("Unknown AesCtrHmacAeadParameters.Variant: ".concat(String.valueOf(this.zza.zzh())));
                        }
                        return new zzggi(this.zza, this.zzb, this.zzc, zzb, this.zzd, null);
                    }
                    throw new GeneralSecurityException("HMAC key size mismatch");
                }
                throw new GeneralSecurityException("AES key size mismatch");
            }
            throw new GeneralSecurityException("Cannot build without key material");
        }
        throw new GeneralSecurityException("Cannot build without parameters");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzggg(zzggh zzgghVar) {
    }
}
