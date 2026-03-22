package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.Objects;
import v7.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzabu  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzabu implements zzafv<zzajd> {
    private final /* synthetic */ zzael zza;
    private final /* synthetic */ zzaar zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabu(zzaar zzaarVar, zzael zzaelVar) {
        this.zza = zzaelVar;
        Objects.requireNonNull(zzaarVar);
        this.zzb = zzaarVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzajd zzajdVar) {
        zzajd zzajdVar2 = zzajdVar;
        if (!zzajdVar2.zzl()) {
            zzaar.zza(this.zzb, zzajdVar2, this.zza, this);
        } else {
            this.zza.zza(new zzaas(zzajdVar2.zzf(), zzajdVar2.zzk(), zzajdVar2.zzb()));
        }
    }
}
