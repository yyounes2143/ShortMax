package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.Objects;
import v7.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzabd  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzabd implements zzafv<zzajf> {
    private final /* synthetic */ zzael zza;
    private final /* synthetic */ zzaar zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabd(zzaar zzaarVar, zzael zzaelVar) {
        this.zza = zzaelVar;
        Objects.requireNonNull(zzaarVar);
        this.zzb = zzaarVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzajf zzajfVar) {
        zzajf zzajfVar2 = zzajfVar;
        this.zzb.zza(new zzahv(zzajfVar2.zzc(), zzajfVar2.zzb(), Long.valueOf(zzajfVar2.zza()), "Bearer"), null, null, Boolean.valueOf(zzajfVar2.zzd()), null, this.zza, this);
    }
}
