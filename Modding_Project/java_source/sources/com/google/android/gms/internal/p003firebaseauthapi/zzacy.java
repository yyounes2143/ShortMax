package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.internal.zzaf;
import com.google.firebase.auth.internal.zzz;
import com.google.firebase.auth.j;
import v7.w0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzacy  reason: invalid package */
/* loaded from: classes4.dex */
final class zzacy extends zzaff<AuthResult, w0> {
    private final j zzv;
    private final String zzw;
    @Nullable
    private final String zzx;

    public zzacy(j jVar, String str, @Nullable String str2) {
        super(2);
        this.zzv = (j) Preconditions.checkNotNull(jVar);
        this.zzw = Preconditions.checkNotEmpty(str);
        this.zzx = str2;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "finalizeMfaSignIn";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
        zzaf zza = zzacq.zza(this.zzc, this.zzk);
        FirebaseUser firebaseUser = this.zzd;
        if (firebaseUser != null && !firebaseUser.x().equalsIgnoreCase(zza.x())) {
            zza(new Status(17024));
            return;
        }
        ((w0) this.zze).a(this.zzj, zza);
        zzb(new zzz(zza));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zza(this.zzw, this.zzv, this.zzx, this.zzb);
    }
}
