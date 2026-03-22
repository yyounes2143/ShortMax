package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzrh  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzrh extends zzrn {
    private final int zza;
    private final int zzb;
    private final zzc zzc;
    private final zza zzd;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzrh$zza */
    /* loaded from: classes4.dex */
    public static final class zza {
        public static final zza zza = new zza("SHA1");
        public static final zza zzb = new zza("SHA224");
        public static final zza zzc = new zza("SHA256");
        public static final zza zzd = new zza("SHA384");
        public static final zza zze = new zza("SHA512");
        private final String zzf;

        private zza(String str) {
            this.zzf = str;
        }

        public final String toString() {
            return this.zzf;
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzrh$zzb */
    /* loaded from: classes4.dex */
    public static final class zzb {
        private Integer zza;
        private Integer zzb;
        private zza zzc;
        private zzc zzd;

        public final zzb zza(zza zzaVar) {
            this.zzc = zzaVar;
            return this;
        }

        public final zzb zzb(int i10) throws GeneralSecurityException {
            this.zzb = Integer.valueOf(i10);
            return this;
        }

        private zzb() {
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
            this.zzd = zzc.zzd;
        }

        public final zzb zza(int i10) throws GeneralSecurityException {
            this.zza = Integer.valueOf(i10);
            return this;
        }

        public final zzb zza(zzc zzcVar) {
            this.zzd = zzcVar;
            return this;
        }

        public final zzrh zza() throws GeneralSecurityException {
            Integer num = this.zza;
            if (num != null) {
                if (this.zzb != null) {
                    if (this.zzc != null) {
                        if (this.zzd != null) {
                            if (num.intValue() >= 16) {
                                Integer num2 = this.zzb;
                                int intValue = num2.intValue();
                                zza zzaVar = this.zzc;
                                if (intValue >= 10) {
                                    if (zzaVar == zza.zza) {
                                        if (intValue > 20) {
                                            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num2));
                                        }
                                    } else if (zzaVar == zza.zzb) {
                                        if (intValue > 28) {
                                            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num2));
                                        }
                                    } else if (zzaVar == zza.zzc) {
                                        if (intValue > 32) {
                                            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num2));
                                        }
                                    } else if (zzaVar == zza.zzd) {
                                        if (intValue > 48) {
                                            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num2));
                                        }
                                    } else if (zzaVar != zza.zze) {
                                        throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
                                    } else {
                                        if (intValue > 64) {
                                            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num2));
                                        }
                                    }
                                    return new zzrh(this.zza.intValue(), this.zzb.intValue(), this.zzd, this.zzc);
                                }
                                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", num2));
                            }
                            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.zza));
                        }
                        throw new GeneralSecurityException("variant is not set");
                    }
                    throw new GeneralSecurityException("hash type is not set");
                }
                throw new GeneralSecurityException("tag size is not set");
            }
            throw new GeneralSecurityException("key size is not set");
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzrh$zzc */
    /* loaded from: classes4.dex */
    public static final class zzc {
        public static final zzc zza = new zzc("TINK");
        public static final zzc zzb = new zzc("CRUNCHY");
        public static final zzc zzc = new zzc("LEGACY");
        public static final zzc zzd = new zzc("NO_PREFIX");
        private final String zze;

        private zzc(String str) {
            this.zze = str;
        }

        public final String toString() {
            return this.zze;
        }
    }

    public static zzb zzd() {
        return new zzb();
    }

    private final int zzg() {
        int i10;
        zzc zzcVar = this.zzc;
        if (zzcVar == zzc.zzd) {
            return this.zzb;
        }
        if (zzcVar == zzc.zza) {
            i10 = this.zzb;
        } else if (zzcVar == zzc.zzb) {
            i10 = this.zzb;
        } else if (zzcVar == zzc.zzc) {
            i10 = this.zzb;
        } else {
            throw new IllegalStateException("Unknown variant");
        }
        return i10 + 5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzrh)) {
            return false;
        }
        zzrh zzrhVar = (zzrh) obj;
        if (zzrhVar.zza != this.zza || zzrhVar.zzg() != zzg() || zzrhVar.zzc != this.zzc || zzrhVar.zzd != this.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzrh.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        String valueOf2 = String.valueOf(this.zzd);
        int i10 = this.zzb;
        int i11 = this.zza;
        return "HMAC Parameters (variant: " + valueOf + ", hashType: " + valueOf2 + ", " + i10 + "-byte tags, and " + i11 + "-byte key)";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        if (this.zzc != zzc.zzd) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zza;
    }

    public final zza zze() {
        return this.zzd;
    }

    public final zzc zzf() {
        return this.zzc;
    }

    private zzrh(int i10, int i11, zzc zzcVar, zza zzaVar) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = zzcVar;
        this.zzd = zzaVar;
    }
}
