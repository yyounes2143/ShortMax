package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzfz extends zzcy {
    private final zza zza;
    private final int zzb;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfz$zza */
    /* loaded from: classes4.dex */
    public static final class zza {
        public static final zza zza = new zza("TINK");
        public static final zza zzb = new zza("NO_PREFIX");
        private final String zzc;

        private zza(String str) {
            this.zzc = str;
        }

        public final String toString() {
            return this.zzc;
        }
    }

    private zzfz(zza zzaVar, int i10) {
        this.zza = zzaVar;
        this.zzb = i10;
    }

    public static zzfz zza(zza zzaVar, int i10) throws GeneralSecurityException {
        if (i10 >= 8 && i10 <= 12) {
            return new zzfz(zzaVar, i10);
        }
        throw new GeneralSecurityException("Salt size must be between 8 and 12 bytes");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfz)) {
            return false;
        }
        zzfz zzfzVar = (zzfz) obj;
        if (zzfzVar.zza != this.zza || zzfzVar.zzb != this.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzfz.class, this.zza, Integer.valueOf(this.zzb));
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        int i10 = this.zzb;
        return "X-AES-GCM Parameters (variant: " + valueOf + "salt_size_bytes: " + i10 + ")";
    }

    public final int zzb() {
        return this.zzb;
    }

    public final zza zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        return this.zza != zza.zzb;
    }
}
