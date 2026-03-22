package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzev  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzev extends zzcy {
    private final String zza;
    private final zza zzb;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzev$zza */
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

    private zzev(String str, zza zzaVar) {
        this.zza = str;
        this.zzb = zzaVar;
    }

    public static zzev zza(String str, zza zzaVar) {
        return new zzev(str, zzaVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzev)) {
            return false;
        }
        zzev zzevVar = (zzev) obj;
        if (!zzevVar.zza.equals(this.zza) || !zzevVar.zzb.equals(this.zzb)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzev.class, this.zza, this.zzb);
    }

    public final String toString() {
        String str = this.zza;
        String valueOf = String.valueOf(this.zzb);
        return "LegacyKmsAead Parameters (keyUri: " + str + ", variant: " + valueOf + ")";
    }

    public final zza zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        return this.zzb != zza.zzb;
    }
}
