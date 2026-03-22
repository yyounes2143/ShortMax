package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.Objects;
import v7.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaat  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaat implements zzafv<zzaip> {
    private final /* synthetic */ zzael zza;
    private final /* synthetic */ zzaar zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaat(zzaar zzaarVar, zzael zzaelVar) {
        this.zza = zzaelVar;
        Objects.requireNonNull(zzaarVar);
        this.zzb = zzaarVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzaip zzaipVar) {
        zzaip zzaipVar2 = zzaipVar;
        this.zzb.zza(new zzahv(zzaipVar2.zzc(), zzaipVar2.zzb(), Long.valueOf(zzaipVar2.zza()), "Bearer"), null, null, Boolean.TRUE, null, this.zza, this);
    }
}
