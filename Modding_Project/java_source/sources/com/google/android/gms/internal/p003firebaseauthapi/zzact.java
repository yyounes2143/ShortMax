package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.TaskCompletionSource;
import v7.p;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzact  reason: invalid package */
/* loaded from: classes4.dex */
final class zzact extends zzaff<Void, p> {
    public zzact() {
        super(5);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "delete";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
        ((p) this.zze).zza();
        zzb(null);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zza(this.zzd.zze(), this.zzb);
    }
}
