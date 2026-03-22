package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;
import v7.l;
import v7.w0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzacw  reason: invalid package */
/* loaded from: classes4.dex */
final class zzacw extends zzaff<Object, w0> {
    private final String zzv;
    @Nullable
    private final String zzw;

    public zzacw(String str, @Nullable String str2) {
        super(3);
        Preconditions.checkNotEmpty(str, "email cannot be null or empty");
        this.zzv = str;
        this.zzw = str2;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "fetchSignInMethodsForEmail";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
        List list;
        if (this.zzl.zza() == null) {
            list = zzah.zzg();
        } else {
            list = (List) Preconditions.checkNotNull(this.zzl.zza());
        }
        zzb(new l(list));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zze(this.zzv, this.zzw, this.zzb);
    }
}
