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
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadp  reason: invalid package */
/* loaded from: classes4.dex */
final class zzadp extends zzaff<Void, w0> {
    @NonNull
    private final zzahm zzv;
    private final String zzw;

    public zzadp(String str, ActionCodeSettings actionCodeSettings, @Nullable String str2, @Nullable String str3, String str4) {
        super(4);
        Preconditions.checkNotEmpty(str, "email cannot be null or empty");
        zzahm zzahmVar = new zzahm(actionCodeSettings.zza());
        this.zzv = zzahmVar;
        zzahmVar.zzb(str);
        zzahmVar.zza(actionCodeSettings);
        zzahmVar.zzc(str2);
        zzahmVar.zza(str3);
        this.zzw = str4;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return this.zzw;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
        zzb(null);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zzb(this.zzv, this.zzb);
    }
}
