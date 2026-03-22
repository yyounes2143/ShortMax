package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzjf  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzjf extends zzjj {
    private final int zza;
    private final zza zzb;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzjf$zza */
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
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzjf$zzb */
    /* loaded from: classes4.dex */
    public static final class zzb {
        private Integer zza;
        private zza zzb;

        public final zzb zza(int i10) throws GeneralSecurityException {
            if (i10 != 32 && i10 != 48 && i10 != 64) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 32-byte, 48-byte and 64-byte AES-SIV keys are supported", Integer.valueOf(i10)));
            }
            this.zza = Integer.valueOf(i10);
            return this;
        }

        private zzb() {
            this.zza = null;
            this.zzb = zza.zzc;
        }

        public final zzb zza(zza zzaVar) {
            this.zzb = zzaVar;
            return this;
        }

        public final zzjf zza() throws GeneralSecurityException {
            Integer num = this.zza;
            if (num != null) {
                if (this.zzb != null) {
                    return new zzjf(num.intValue(), this.zzb);
                }
                throw new GeneralSecurityException("Variant is not set");
            }
            throw new GeneralSecurityException("Key size is not set");
        }
    }

    public static zzb zzc() {
        return new zzb();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjf)) {
            return false;
        }
        zzjf zzjfVar = (zzjf) obj;
        if (zzjfVar.zza != this.zza || zzjfVar.zzb != this.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzjf.class, Integer.valueOf(this.zza), this.zzb);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        int i10 = this.zza;
        return "AesSiv Parameters (variant: " + valueOf + ", " + i10 + "-byte key)";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        if (this.zzb != zza.zzc) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zza;
    }

    public final zza zzd() {
        return this.zzb;
    }

    private zzjf(int i10, zza zzaVar) {
        this.zza = i10;
        this.zzb = zzaVar;
    }
}
