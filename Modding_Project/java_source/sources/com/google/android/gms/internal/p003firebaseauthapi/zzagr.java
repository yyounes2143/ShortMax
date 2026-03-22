package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagr  reason: invalid package */
/* loaded from: classes4.dex */
final class zzagr extends zzaih {
    private String zza;
    private String zzb;
    private String zzc;
    private zzahg zzd;
    private String zze;

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaih
    public final zzaih zza(String str) {
        if (str != null) {
            this.zze = str;
            return this;
        }
        throw new NullPointerException("Null idToken");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaih
    public final zzaih zzb(String str) {
        if (str != null) {
            this.zza = str;
            return this;
        }
        throw new NullPointerException("Null providerId");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaih
    public final zzaih zzc(@Nullable String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaih
    public final zzaih zzd(String str) {
        if (str != null) {
            this.zzc = str;
            return this;
        }
        throw new NullPointerException("Null token");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaih
    public final zzaih zza(zzahg zzahgVar) {
        if (zzahgVar != null) {
            this.zzd = zzahgVar;
            return this;
        }
        throw new NullPointerException("Null tokenType");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaih
    public final zzaie zza() {
        String str;
        zzahg zzahgVar;
        String str2;
        String str3 = this.zza;
        if (str3 != null && (str = this.zzc) != null && (zzahgVar = this.zzd) != null && (str2 = this.zze) != null) {
            return new zzago(str3, this.zzb, str, zzahgVar, str2);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zza == null) {
            sb2.append(" providerId");
        }
        if (this.zzc == null) {
            sb2.append(" token");
        }
        if (this.zzd == null) {
            sb2.append(" tokenType");
        }
        if (this.zze == null) {
            sb2.append(" idToken");
        }
        String valueOf = String.valueOf(sb2);
        throw new IllegalStateException("Missing required properties:" + valueOf);
    }
}
