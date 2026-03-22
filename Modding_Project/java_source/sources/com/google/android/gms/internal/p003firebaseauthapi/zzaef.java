package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.PhoneAuthCredential;
import v7.w0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaef  reason: invalid package */
/* loaded from: classes4.dex */
final class zzaef extends zzaff<Void, w0> {
    private final PhoneAuthCredential zzv;

    public zzaef(PhoneAuthCredential phoneAuthCredential) {
        super(2);
        this.zzv = (PhoneAuthCredential) Preconditions.checkNotNull(phoneAuthCredential);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "updatePhoneNumber";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
        ((w0) this.zze).a(this.zzj, zzacq.zza(this.zzc, this.zzk));
        zzb(null);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zza(new zzahz(this.zzd.zze(), zzafw.zza(this.zzv)), this.zzb);
    }
}
