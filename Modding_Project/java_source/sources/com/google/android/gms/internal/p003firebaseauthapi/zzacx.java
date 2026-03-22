package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.g;
import com.google.firebase.auth.internal.e;
import v7.w0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzacx  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzacx extends zzaff<g, w0> {
    private final String zzv;

    public zzacx(String str) {
        super(1);
        Preconditions.checkNotEmpty(str, "refresh token cannot be null");
        this.zzv = str;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "getAccessToken";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
        if (TextUtils.isEmpty(this.zzj.zzd())) {
            this.zzj.zzc(this.zzv);
        }
        ((w0) this.zze).a(this.zzj, this.zzd);
        zzb(e.a(this.zzj.zzc()));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zzb(this.zzv, this.zzb);
    }
}
