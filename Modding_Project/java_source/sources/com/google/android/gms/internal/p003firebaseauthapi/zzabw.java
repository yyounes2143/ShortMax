package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.Objects;
import v7.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzabw  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzabw implements zzafv<zzahv> {
    final /* synthetic */ zzaar zza;
    private final /* synthetic */ zzagz zzb;
    private final /* synthetic */ zzael zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabw(zzaar zzaarVar, zzagz zzagzVar, zzael zzaelVar) {
        this.zzb = zzagzVar;
        this.zzc = zzaelVar;
        Objects.requireNonNull(zzaarVar);
        this.zza = zzaarVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zzc.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzahv zzahvVar) {
        zzaft zzaftVar;
        this.zzb.zza(zzahvVar.zzc());
        zzaftVar = this.zza.zza;
        zzaftVar.zza(this.zzb, new zzabv(this, this.zzc));
    }
}
