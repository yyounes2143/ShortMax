package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.UserProfileChangeRequest;
import java.util.Objects;
import v7.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzack  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzack implements zzafv<zzahv> {
    private final /* synthetic */ UserProfileChangeRequest zza;
    private final /* synthetic */ zzael zzb;
    private final /* synthetic */ zzaar zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzack(zzaar zzaarVar, UserProfileChangeRequest userProfileChangeRequest, zzael zzaelVar) {
        this.zza = userProfileChangeRequest;
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
        zzail zzailVar = new zzail();
        zzailVar.zzd(zzahvVar2.zzc());
        if (this.zza.zzb() || this.zza.getDisplayName() != null) {
            zzailVar.zzb(this.zza.getDisplayName());
        }
        if (this.zza.zzc() || this.zza.m() != null) {
            zzailVar.zzg(this.zza.zza());
        }
        zzaar.zza(this.zzc, this.zzb, zzahvVar2, zzailVar, this);
    }
}
