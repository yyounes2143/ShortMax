package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzggn {
    private Integer zza = null;
    private Integer zzb = null;
    private Integer zzc = null;
    private Integer zzd = null;
    private zzggo zze = null;
    private zzggp zzf = zzggp.zzc;

    private zzggn() {
    }

    public final zzggn zza(int i10) throws GeneralSecurityException {
        if (i10 != 16 && i10 != 24 && i10 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
        }
        this.zza = Integer.valueOf(i10);
        return this;
    }

    public final zzggn zzb(zzggo zzggoVar) {
        this.zze = zzggoVar;
        return this;
    }

    public final zzggn zzc(int i10) throws GeneralSecurityException {
        if (i10 >= 16) {
            this.zzb = Integer.valueOf(i10);
            return this;
        }
        throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; HMAC key must be at least 16 bytes", Integer.valueOf(i10)));
    }

    public final zzggn zzd(int i10) throws GeneralSecurityException {
        if (i10 >= 12 && i10 <= 16) {
            this.zzc = Integer.valueOf(i10);
            return this;
        }
        throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes", Integer.valueOf(i10)));
    }

    public final zzggn zze(int i10) throws GeneralSecurityException {
        if (i10 >= 10) {
            this.zzd = Integer.valueOf(i10);
            return this;
        }
        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(i10)));
    }

    public final zzggn zzf(zzggp zzggpVar) {
        this.zzf = zzggpVar;
        return this;
    }

    public final zzggr zzg() throws GeneralSecurityException {
        if (this.zza != null) {
            if (this.zzb != null) {
                if (this.zzc != null) {
                    Integer num = this.zzd;
                    if (num != null) {
                        if (this.zze != null) {
                            if (this.zzf != null) {
                                int intValue = num.intValue();
                                zzggo zzggoVar = this.zze;
                                if (zzggoVar == zzggo.zza) {
                                    if (intValue > 20) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num));
                                    }
                                } else if (zzggoVar == zzggo.zzb) {
                                    if (intValue > 28) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num));
                                    }
                                } else if (zzggoVar == zzggo.zzc) {
                                    if (intValue > 32) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num));
                                    }
                                } else if (zzggoVar == zzggo.zzd) {
                                    if (intValue > 48) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num));
                                    }
                                } else if (zzggoVar == zzggo.zze) {
                                    if (intValue > 64) {
                                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num));
                                    }
                                } else {
                                    throw new GeneralSecurityException("unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512");
                                }
                                return new zzggr(this.zza.intValue(), this.zzb.intValue(), this.zzc.intValue(), this.zzd.intValue(), this.zzf, this.zze, null);
                            }
                            throw new GeneralSecurityException("variant is not set");
                        }
                        throw new GeneralSecurityException("hash type is not set");
                    }
                    throw new GeneralSecurityException("tag size is not set");
                }
                throw new GeneralSecurityException("iv size is not set");
            }
            throw new GeneralSecurityException("HMAC key size is not set");
        }
        throw new GeneralSecurityException("AES key size is not set");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzggn(zzggq zzggqVar) {
    }
}
