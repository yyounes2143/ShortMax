package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzeg  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzeg extends zzcy {
    private final int zza;
    private final zzb zzb;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzeg$zza */
    /* loaded from: classes4.dex */
    public static final class zza {
        private Integer zza;
        private zzb zzb;

        public final zza zza(int i10) throws GeneralSecurityException {
            if (i10 != 16 && i10 != 32) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i10)));
            }
            this.zza = Integer.valueOf(i10);
            return this;
        }

        private zza() {
            this.zza = null;
            this.zzb = zzb.zzc;
        }

        public final zza zza(zzb zzbVar) {
            this.zzb = zzbVar;
            return this;
        }

        public final zzeg zza() throws GeneralSecurityException {
            Integer num = this.zza;
            if (num != null) {
                if (this.zzb != null) {
                    return new zzeg(num.intValue(), this.zzb);
                }
                throw new GeneralSecurityException("Variant is not set");
            }
            throw new GeneralSecurityException("Key size is not set");
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzeg$zzb */
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

    public static zza zzc() {
        return new zza();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzeg)) {
            return false;
        }
        zzeg zzegVar = (zzeg) obj;
        if (zzegVar.zza != this.zza || zzegVar.zzb != this.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzeg.class, Integer.valueOf(this.zza), this.zzb);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        int i10 = this.zza;
        return "AesGcmSiv Parameters (variant: " + valueOf + ", " + i10 + "-byte key)";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        if (this.zzb != zzb.zzc) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zza;
    }

    public final zzb zzd() {
        return this.zzb;
    }

    private zzeg(int i10, zzb zzbVar) {
        this.zza = i10;
        this.zzb = zzbVar;
    }
}
