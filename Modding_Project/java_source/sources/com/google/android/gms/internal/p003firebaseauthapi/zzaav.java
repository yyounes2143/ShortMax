package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.EmailAuthCredential;
import java.util.Objects;
import v7.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaav  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaav implements zzafv<zzahv> {
    private final /* synthetic */ EmailAuthCredential zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzael zzc;
    private final /* synthetic */ zzaar zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaav(zzaar zzaarVar, EmailAuthCredential emailAuthCredential, String str, zzael zzaelVar) {
        this.zza = emailAuthCredential;
        this.zzb = str;
        this.zzc = zzaelVar;
        Objects.requireNonNull(zzaarVar);
        this.zzd = zzaarVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zzc.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzahv zzahvVar) {
        this.zzd.zza(new zzagx(this.zza, zzahvVar.zzc(), this.zzb), this.zzc);
    }
}
