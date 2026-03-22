package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzdx  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzdx extends zzcy {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final zza zzd;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzdx$zza */
    /* loaded from: classes4.dex */
    public static final class zza {
        public static final zza zza = new zza("TINK");
        public static final zza zzb = new zza("CRUNCHY");
        public static final zza zzc = new zza("NO_PREFIX");
        private final String zzd;

        private zza(String str) {
            this.zzd = str;
        }

        public final String toString() {
            return this.zzd;
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzdx$zzb */
    /* loaded from: classes4.dex */
    public static final class zzb {
        private Integer zza;
        private Integer zzb;
        private Integer zzc;
        private zza zzd;

        public final zzb zza(int i10) throws GeneralSecurityException {
            this.zzb = 12;
            return this;
        }

        public final zzb zzb(int i10) throws GeneralSecurityException {
            if (i10 != 16 && i10 != 24 && i10 != 32) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
            }
            this.zza = Integer.valueOf(i10);
            return this;
        }

        public final zzb zzc(int i10) throws GeneralSecurityException {
            this.zzc = 16;
            return this;
        }

        private zzb() {
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
            this.zzd = zza.zzc;
        }

        public final zzb zza(zza zzaVar) {
            this.zzd = zzaVar;
            return this;
        }

        public final zzdx zza() throws GeneralSecurityException {
            Integer num = this.zza;
            if (num != null) {
                if (this.zzd != null) {
                    if (this.zzb != null) {
                        if (this.zzc != null) {
                            return new zzdx(num.intValue(), this.zzb.intValue(), this.zzc.intValue(), this.zzd);
                        }
                        throw new GeneralSecurityException("Tag size is not set");
                    }
                    throw new GeneralSecurityException("IV size is not set");
                }
                throw new GeneralSecurityException("Variant is not set");
            }
            throw new GeneralSecurityException("Key size is not set");
        }
    }

    public static zzb zze() {
        return new zzb();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzdx)) {
            return false;
        }
        zzdx zzdxVar = (zzdx) obj;
        if (zzdxVar.zza != this.zza || zzdxVar.zzb != this.zzb || zzdxVar.zzc != this.zzc || zzdxVar.zzd != this.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzdx.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), this.zzd);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        int i10 = this.zzb;
        int i11 = this.zzc;
        int i12 = this.zza;
        return "AesGcm Parameters (variant: " + valueOf + ", " + i10 + "-byte IV, " + i11 + "-byte tag, and " + i12 + "-byte key)";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        if (this.zzd != zza.zzc) {
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

    public final zza zzf() {
        return this.zzd;
    }

    private zzdx(int i10, int i11, int i12, zza zzaVar) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = i12;
        this.zzd = zzaVar;
    }
}
