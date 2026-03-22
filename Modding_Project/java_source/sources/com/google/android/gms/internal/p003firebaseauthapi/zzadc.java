package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.EmailAuthCredential;
import com.google.firebase.auth.internal.zzaf;
import com.google.firebase.auth.internal.zzz;
import v7.w0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadc  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzadc extends zzaff<AuthResult, w0> {
    private final EmailAuthCredential zzv;
    @Nullable
    private final String zzw;

    public zzadc(EmailAuthCredential emailAuthCredential, @Nullable String str) {
        super(2);
        this.zzv = (EmailAuthCredential) Preconditions.checkNotNull(emailAuthCredential, "credential cannot be null");
        Preconditions.checkNotEmpty(emailAuthCredential.zzc(), "email cannot be null");
        Preconditions.checkNotEmpty(emailAuthCredential.zzd(), "password cannot be null");
        this.zzw = str;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "linkEmailAuthCredential";
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
        zzaeoVar.zza(this.zzv.zzc(), Preconditions.checkNotEmpty(this.zzv.zzd()), this.zzd.zze(), this.zzd.w(), this.zzw, this.zzb);
    }
}
