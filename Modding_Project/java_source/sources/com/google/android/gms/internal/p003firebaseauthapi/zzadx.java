package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzam;
import v7.w0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadx  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzadx extends zzaff<Void, w0> {
    private final boolean zzaa;
    @Nullable
    private final String zzab;
    @Nullable
    private final String zzac;
    @Nullable
    private final String zzad;
    private final boolean zzae;
    private final String zzv;
    private final String zzw;
    @Nullable
    private final String zzx;
    private final long zzy;
    private final boolean zzz;

    public zzadx(zzam zzamVar, String str, @Nullable String str2, long j10, boolean z10, boolean z11, @Nullable String str3, @Nullable String str4, @Nullable String str5, boolean z12) {
        super(8);
        Preconditions.checkNotNull(zzamVar);
        Preconditions.checkNotEmpty(str);
        this.zzv = Preconditions.checkNotEmpty(zzamVar.zzb());
        this.zzw = str;
        this.zzx = str2;
        this.zzy = j10;
        this.zzz = z10;
        this.zzaa = z11;
        this.zzab = str3;
        this.zzac = str4;
        this.zzad = str5;
        this.zzae = z12;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "startMfaEnrollment";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zza(this.zzv, this.zzw, this.zzx, this.zzy, this.zzz, this.zzaa, this.zzab, this.zzac, this.zzad, this.zzae, this.zzb);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
    }
}
