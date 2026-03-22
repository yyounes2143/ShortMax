package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.internal.zzaf;
import com.google.firebase.auth.internal.zzz;
import v7.w0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaeb  reason: invalid package */
/* loaded from: classes4.dex */
final class zzaeb extends zzaff<AuthResult, w0> {
    public zzaeb() {
        super(2);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "unlinkEmailCredential";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
        zzaf zza = zzacq.zza(this.zzc, this.zzk);
        ((w0) this.zze).a(this.zzj, zza);
        zzb(new zzz(zza));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zze(this.zzd.zze(), this.zzb);
    }
}
