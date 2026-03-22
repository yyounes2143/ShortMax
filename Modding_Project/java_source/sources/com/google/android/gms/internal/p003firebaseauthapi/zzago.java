package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzago  reason: invalid package */
/* loaded from: classes4.dex */
final class zzago extends zzaie {
    private final String zza;
    @Nullable
    private final String zzb;
    private final String zzc;
    private final zzahg zzd;
    private final String zze;

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzaie) {
            zzaie zzaieVar = (zzaie) obj;
            if (this.zza.equals(zzaieVar.zzd()) && ((str = this.zzb) != null ? str.equals(zzaieVar.zze()) : zzaieVar.zze() == null) && this.zzc.equals(zzaieVar.zzf()) && this.zzd.equals(zzaieVar.zzb()) && this.zze.equals(zzaieVar.zzc())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.zza.hashCode() ^ 1000003) * 1000003;
        String str = this.zzb;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return ((((((hashCode2 ^ hashCode) * 1000003) ^ this.zzc.hashCode()) * 1000003) ^ this.zzd.hashCode()) * 1000003) ^ this.zze.hashCode();
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        String str3 = this.zzc;
        String valueOf = String.valueOf(this.zzd);
        String str4 = this.zze;
        return "RevokeTokenRequest{providerId=" + str + ", tenantId=" + str2 + ", token=" + str3 + ", tokenType=" + valueOf + ", idToken=" + str4 + "}";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaie
    public final zzahg zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaie
    public final String zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaie
    public final String zzd() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaie
    @Nullable
    public final String zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaie
    public final String zzf() {
        return this.zzc;
    }

    private zzago(String str, @Nullable String str2, String str3, zzahg zzahgVar, String str4) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzahgVar;
        this.zze = str4;
    }
}
