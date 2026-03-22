package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.ActionCodeSettings;
import v7.w0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadq  reason: invalid package */
/* loaded from: classes4.dex */
final class zzadq extends zzaff<Void, w0> {
    @NonNull
    private final zzahm zzv;

    public zzadq(String str, @Nullable ActionCodeSettings actionCodeSettings) {
        super(6);
        Preconditions.checkNotEmpty(str, "token cannot be null or empty");
        zzahm zzahmVar = new zzahm(4);
        this.zzv = zzahmVar;
        zzahmVar.zzd(str);
        if (actionCodeSettings != null) {
            zzahmVar.zza(actionCodeSettings);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "sendEmailVerification";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
        zzb(null);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zza(this.zzv, this.zzb);
    }
}
