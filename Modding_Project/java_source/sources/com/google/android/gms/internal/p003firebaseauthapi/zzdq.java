package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzdq  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzdq extends zzcy {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final zzb zzd;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzdq$zza */
    /* loaded from: classes4.dex */
    public static final class zza {
        private Integer zza;
        private Integer zzb;
        private Integer zzc;
        private zzb zzd;

        public final zza zza(int i10) throws GeneralSecurityException {
            if (i10 != 12 && i10 != 16) {
                throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes", Integer.valueOf(i10)));
            }
            this.zzb = Integer.valueOf(i10);
            return this;
        }

        public final zza zzb(int i10) throws GeneralSecurityException {
            if (i10 != 16 && i10 != 24 && i10 != 32) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
            }
            this.zza = Integer.valueOf(i10);
            return this;
        }

        public final zza zzc(int i10) throws GeneralSecurityException {
            this.zzc = 16;
            return this;
        }

        private zza() {
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
            this.zzd = zzb.zzc;
        }

        public final zza zza(zzb zzbVar) {
            this.zzd = zzbVar;
            return this;
        }

        public final zzdq zza() throws GeneralSecurityException {
            Integer num = this.zza;
            if (num != null) {
                if (this.zzb != null) {
                    if (this.zzd != null) {
                        if (this.zzc != null) {
                            return new zzdq(num.intValue(), this.zzb.intValue(), this.zzc.intValue(), this.zzd);
                        }
                        throw new GeneralSecurityException("Tag size is not set");
                    }
                    throw new GeneralSecurityException("Variant is not set");
                }
                throw new GeneralSecurityException("IV size is not set");
            }
            throw new GeneralSecurityException("Key size is not set");
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzdq$zzb */
    /* loaded from: classes4.dex */
    public static final class zzb {
        public static final zzb zza = new zzb("TINK");
        public static final zzb zzb = new zzb("CRUNCHY");
        public static final zzb zzc = new zzb("NO_PREFIX");
        private final String zzd;

        private zzb(String str) {
            this.zzd = str;
        }

        public final String toString() {
            return this.zzd;
        }
    }

    public static zza zze() {
        return new zza();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzdq)) {
            return false;
        }
        zzdq zzdqVar = (zzdq) obj;
        if (zzdqVar.zza != this.zza || zzdqVar.zzb != this.zzb || zzdqVar.zzc != this.zzc || zzdqVar.zzd != this.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzdq.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), this.zzd);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        int i10 = this.zzb;
        int i11 = this.zzc;
        int i12 = this.zza;
        return "AesEax Parameters (variant: " + valueOf + ", " + i10 + "-byte IV, " + i11 + "-byte tag, and " + i12 + "-byte key)";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        if (this.zzd != zzb.zzc) {
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

    public final int zzd() {
        return this.zzc;
    }

    public final zzb zzf() {
        return this.zzd;
    }

    private zzdq(int i10, int i11, int i12, zzb zzbVar) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = i12;
        this.zzd = zzbVar;
    }
}
