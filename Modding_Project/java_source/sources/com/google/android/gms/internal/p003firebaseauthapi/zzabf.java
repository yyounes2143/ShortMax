package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.Objects;
import v7.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzabf  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzabf implements zzafv<zzaii> {
    private final /* synthetic */ zzael zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabf(zzaar zzaarVar, zzael zzaelVar) {
        this.zza = zzaelVar;
        Objects.requireNonNull(zzaarVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzaii zzaiiVar) {
        this.zza.zzb(zzaiiVar.zza());
    }
}
