package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfc  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzfc extends zzcy {
    private final zzc zza;
    private final String zzb;
    private final zza zzc;
    private final zzcy zzd;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfc$zza */
    /* loaded from: classes4.dex */
    public static final class zza {
        public static final zza zza = new zza("ASSUME_AES_GCM");
        public static final zza zzb = new zza("ASSUME_XCHACHA20POLY1305");
        public static final zza zzc = new zza("ASSUME_CHACHA20POLY1305");
        public static final zza zzd = new zza("ASSUME_AES_CTR_HMAC");
        public static final zza zze = new zza("ASSUME_AES_EAX");
        public static final zza zzf = new zza("ASSUME_AES_GCM_SIV");
        private final String zzg;

        private zza(String str) {
            this.zzg = str;
        }

        public final String toString() {
            return this.zzg;
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfc$zzb */
    /* loaded from: classes4.dex */
    public static class zzb {
        private zzc zza;
        private String zzb;
        private zza zzc;
        private zzcy zzd;

        private zzb() {
        }

        public final zzb zza(zzcy zzcyVar) {
            this.zzd = zzcyVar;
            return this;
        }

        public final zzb zza(zza zzaVar) {
            this.zzc = zzaVar;
            return this;
        }

        public final zzb zza(String str) {
            this.zzb = str;
            return this;
        }

        public final zzb zza(zzc zzcVar) {
            this.zza = zzcVar;
            return this;
        }

        public final zzfc zza() throws GeneralSecurityException {
            if (this.zza == null) {
                this.zza = zzc.zzb;
            }
            if (this.zzb != null) {
                if (this.zzc != null) {
                    zzcy zzcyVar = this.zzd;
                    if (zzcyVar != null) {
                        if (!zzcyVar.zza()) {
                            zza zzaVar = this.zzc;
                            zzcy zzcyVar2 = this.zzd;
                            if ((zzaVar.equals(zza.zza) && (zzcyVar2 instanceof zzdx)) || ((zzaVar.equals(zza.zzc) && (zzcyVar2 instanceof zzem)) || ((zzaVar.equals(zza.zzb) && (zzcyVar2 instanceof zzge)) || ((zzaVar.equals(zza.zzd) && (zzcyVar2 instanceof zzdi)) || ((zzaVar.equals(zza.zze) && (zzcyVar2 instanceof zzdq)) || (zzaVar.equals(zza.zzf) && (zzcyVar2 instanceof zzeg))))))) {
                                return new zzfc(this.zza, this.zzb, this.zzc, this.zzd);
                            }
                            String zzaVar2 = this.zzc.toString();
                            String valueOf = String.valueOf(this.zzd);
                            throw new GeneralSecurityException("Cannot use parsing strategy " + zzaVar2 + " when new keys are picked according to " + valueOf + ".");
                        }
                        throw new GeneralSecurityException("dekParametersForNewKeys must not have ID Requirements");
                    }
                    throw new GeneralSecurityException("dekParametersForNewKeys must be set");
                }
                throw new GeneralSecurityException("dekParsingStrategy must be set");
            }
            throw new GeneralSecurityException("kekUri must be set");
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfc$zzc */
    /* loaded from: classes4.dex */
    public static final class zzc {
        public static final zzc zza = new zzc("TINK");
        public static final zzc zzb = new zzc("NO_PREFIX");
        private final String zzc;

        private zzc(String str) {
            this.zzc = str;
        }

        public final String toString() {
            return this.zzc;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfc)) {
            return false;
        }
        zzfc zzfcVar = (zzfc) obj;
        if (!zzfcVar.zzc.equals(this.zzc) || !zzfcVar.zzd.equals(this.zzd) || !zzfcVar.zzb.equals(this.zzb) || !zzfcVar.zza.equals(this.zza)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzfc.class, this.zzb, this.zzc, this.zzd, this.zza);
    }

    public final String toString() {
        String str = this.zzb;
        String valueOf = String.valueOf(this.zzc);
        String valueOf2 = String.valueOf(this.zzd);
        String valueOf3 = String.valueOf(this.zza);
        return "LegacyKmsEnvelopeAead Parameters (kekUri: " + str + ", dekParsingStrategy: " + valueOf + ", dekParametersForNewKeys: " + valueOf2 + ", variant: " + valueOf3 + ")";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        if (this.zza != zzc.zzb) {
            return true;
        }
        return false;
    }

    public final zzcy zzb() {
        return this.zzd;
    }

    public final zzc zzc() {
        return this.zza;
    }

    public final String zzd() {
        return this.zzb;
    }

    private zzfc(zzc zzcVar, String str, zza zzaVar, zzcy zzcyVar) {
        this.zza = zzcVar;
        this.zzb = str;
        this.zzc = zzaVar;
        this.zzd = zzcyVar;
    }
}
