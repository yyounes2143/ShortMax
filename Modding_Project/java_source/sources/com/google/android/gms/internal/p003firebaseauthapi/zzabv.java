package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.Objects;
import v7.j;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzabv  reason: invalid package */
/* loaded from: classes4.dex */
final class zzabv implements zzafv<zzagy> {
    private final /* synthetic */ zzael zza;
    private final /* synthetic */ zzabw zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabv(zzabw zzabwVar, zzael zzaelVar) {
        this.zza = zzaelVar;
        Objects.requireNonNull(zzabwVar);
        this.zzb = zzabwVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzagy zzagyVar) {
        zzagy zzagyVar2 = zzagyVar;
        this.zzb.zza.zza(new zzahv(zzagyVar2.zzb(), zzagyVar2.zza(), Long.valueOf(zzahx.zza(zzagyVar2.zza())), "Bearer"), null, null, Boolean.FALSE, null, this.zza, this);
    }
}
