package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.Objects;
import v7.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzacm  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzacm implements zzafv<zzahv> {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzael zzb;
    private final /* synthetic */ zzaar zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacm(zzaar zzaarVar, String str, zzael zzaelVar) {
        this.zza = str;
        this.zzb = zzaelVar;
        Objects.requireNonNull(zzaarVar);
        this.zzc = zzaarVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zzb.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzahv zzahvVar) {
        zzahv zzahvVar2 = zzahvVar;
        String zzc = zzahvVar2.zzc();
        zzail zzailVar = new zzail();
        zzailVar.zzd(zzc).zzf(this.zza);
        zzaar.zza(this.zzc, this.zzb, zzahvVar2, zzailVar, this);
    }
}
