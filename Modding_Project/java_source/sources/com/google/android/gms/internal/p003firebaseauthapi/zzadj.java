package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.internal.zzaf;
import com.google.firebase.auth.internal.zzz;
import v7.w0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzadj extends zzaff<AuthResult, w0> {
    @NonNull
    private final String zzv;
    @NonNull
    private final String zzw;
    @Nullable
    private final String zzx;
    @Nullable
    private final String zzy;

    public zzadj(String str, String str2, @Nullable String str3, @Nullable String str4) {
        super(2);
        Preconditions.checkNotEmpty(str, "email cannot be null or empty");
        Preconditions.checkNotEmpty(str2, "password cannot be null or empty");
        this.zzv = str;
        this.zzw = str2;
        this.zzx = str3;
        this.zzy = str4;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "reauthenticateWithEmailPasswordWithData";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
        zzaf zza = zzacq.zza(this.zzc, this.zzk);
        if (this.zzd.x().equalsIgnoreCase(zza.x())) {
            ((w0) this.zze).a(this.zzj, zza);
            zzb(new zzz(zza));
            return;
        }
        zza(new Status(17024));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zzb(this.zzv, this.zzw, this.zzx, this.zzy, this.zzb);
    }
}
