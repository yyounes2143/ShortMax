package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.Objects;
import v7.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaby  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaby implements zzafv<zzaha> {
    private final /* synthetic */ zzael zza;
    private final /* synthetic */ zzaar zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaby(zzaar zzaarVar, zzael zzaelVar) {
        this.zza = zzaelVar;
        Objects.requireNonNull(zzaarVar);
        this.zzb = zzaarVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzaha zzahaVar) {
        zzaha zzahaVar2 = zzahaVar;
        this.zzb.zza(new zzahv(zzahaVar2.zzb(), zzahaVar2.zza(), Long.valueOf(zzahx.zza(zzahaVar2.zza())), "Bearer"), null, null, Boolean.FALSE, null, this.zza, this);
    }
}
