package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import v7.w0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzacr  reason: invalid package */
/* loaded from: classes4.dex */
final class zzacr extends zzaff<Void, w0> {
    private final zzaic zzv;

    public zzacr(String str, String str2, @Nullable String str3) {
        super(4);
        Preconditions.checkNotEmpty(str, "code cannot be null or empty");
        Preconditions.checkNotEmpty(str2, "new password cannot be null or empty");
        this.zzv = new zzaic(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "confirmPasswordReset";
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
