package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzkg  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzkg extends zzlg {
    private final zzf zza;
    private final zzc zzb;
    private final zzb zzc;
    private final zze zzd;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzkg$zza */
    /* loaded from: classes4.dex */
    private static class zza {
        private final String zza;
        private final int zzb;

        public String toString() {
            return String.format("%s(0x%04x)", this.zza, Integer.valueOf(this.zzb));
        }

        private zza(String str, int i10) {
            this.zza = str;
            this.zzb = i10;
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzkg$zzb */
    /* loaded from: classes4.dex */
    public static final class zzb extends zza {
        public static final zzb zza = new zzb("AES_128_GCM", 1);
        public static final zzb zzb = new zzb("AES_256_GCM", 2);
        public static final zzb zzc = new zzb("CHACHA20_POLY1305", 3);

        private zzb(String str, int i10) {
            super(str, i10);
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzkg.zza
        public final /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzkg$zzc */
    /* loaded from: classes4.dex */
    public static final class zzc extends zza {
        public static final zzc zza = new zzc("HKDF_SHA256", 1);
        public static final zzc zzb = new zzc("HKDF_SHA384", 2);
        public static final zzc zzc = new zzc("HKDF_SHA512", 3);

        private zzc(String str, int i10) {
            super(str, i10);
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzkg.zza
        public final /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzkg$zzd */
    /* loaded from: classes4.dex */
    public static final class zzd {
        private zzf zza;
        private zzc zzb;
        private zzb zzc;
        private zze zzd;

        public final zzd zza(zzb zzbVar) {
            this.zzc = zzbVar;
            return this;
        }

        private zzd() {
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
            this.zzd = zze.zzc;
        }

        public final zzd zza(zzc zzcVar) {
            this.zzb = zzcVar;
            return this;
        }

        public final zzd zza(zzf zzfVar) {
            this.zza = zzfVar;
            return this;
        }

        public final zzd zza(zze zzeVar) {
            this.zzd = zzeVar;
            return this;
        }

        public final zzkg zza() throws GeneralSecurityException {
            zzf zzfVar = this.zza;
            if (zzfVar != null) {
                zzc zzcVar = this.zzb;
                if (zzcVar != null) {
                    zzb zzbVar = this.zzc;
                    if (zzbVar != null) {
                        zze zzeVar = this.zzd;
                        if (zzeVar != null) {
                            return new zzkg(zzfVar, zzcVar, zzbVar, zzeVar);
                        }
                        throw new GeneralSecurityException("HPKE variant is not set");
                    }
                    throw new GeneralSecurityException("HPKE AEAD parameter is not set");
                }
                throw new GeneralSecurityException("HPKE KDF parameter is not set");
            }
            throw new GeneralSecurityException("HPKE KEM parameter is not set");
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzkg$zze */
    /* loaded from: classes4.dex */
    public static final class zze {
        public static final zze zza = new zze("TINK");
        public static final zze zzb = new zze("CRUNCHY");
        public static final zze zzc = new zze("NO_PREFIX");
        private final String zzd;

        private zze(String str) {
            this.zzd = str;
        }

        public final String toString() {
            return this.zzd;
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzkg$zzf */
    /* loaded from: classes4.dex */
    public static final class zzf extends zza {
        public static final zzf zza = new zzf("DHKEM_P256_HKDF_SHA256", 16);
        public static final zzf zzb = new zzf("DHKEM_P384_HKDF_SHA384", 17);
        public static final zzf zzc = new zzf("DHKEM_P521_HKDF_SHA512", 18);
        public static final zzf zzd = new zzf("DHKEM_X25519_HKDF_SHA256", 32);

        private zzf(String str, int i10) {
            super(str, i10);
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzkg.zza
        public final /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }
    }

    public static zzd zzc() {
        return new zzd();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzkg)) {
            return false;
        }
        zzkg zzkgVar = (zzkg) obj;
        if (this.zza != zzkgVar.zza || this.zzb != zzkgVar.zzb || this.zzc != zzkgVar.zzc || this.zzd != zzkgVar.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzkg.class, this.zza, this.zzb, this.zzc, this.zzd);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        String valueOf2 = String.valueOf(this.zza);
        String valueOf3 = String.valueOf(this.zzb);
        String valueOf4 = String.valueOf(this.zzc);
        return "HPKE Parameters (Variant: " + valueOf + ", KemId: " + valueOf2 + ", KdfId: " + valueOf3 + ", AeadId: " + valueOf4 + ")";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        if (this.zzd != zze.zzc) {
            return true;
        }
        return false;
    }

    public final zzb zzb() {
        return this.zzc;
    }

    public final zzc zzd() {
        return this.zzb;
    }

    public final zzf zze() {
        return this.zza;
    }

    public final zze zzf() {
        return this.zzd;
    }

    private zzkg(zzf zzfVar, zzc zzcVar, zzb zzbVar, zze zzeVar) {
        this.zza = zzfVar;
        this.zzb = zzcVar;
        this.zzc = zzbVar;
        this.zzd = zzeVar;
    }
}
