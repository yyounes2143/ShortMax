package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaax  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaax implements zzafv<zzahl> {
    private final /* synthetic */ zzafs zza;
    private final /* synthetic */ zzael zzb;
    private final /* synthetic */ zzahv zzc;
    private final /* synthetic */ zzail zzd;
    private final /* synthetic */ zzaar zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaax(zzaar zzaarVar, zzafs zzafsVar, zzael zzaelVar, zzahv zzahvVar, zzail zzailVar) {
        this.zza = zzafsVar;
        this.zzb = zzaelVar;
        this.zzc = zzahvVar;
        this.zzd = zzailVar;
        Objects.requireNonNull(zzaarVar);
        this.zze = zzaarVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzahl zzahlVar) {
        List<zzahk> zza = zzahlVar.zza();
        if (zza != null && !zza.isEmpty()) {
            zzaar.zza(this.zze, this.zzb, this.zzc, zza.get(0), this.zzd, this.zza);
        } else {
            this.zza.zza("No users");
        }
    }
}
