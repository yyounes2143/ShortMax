package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.PhoneMultiFactorInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@VisibleForTesting
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzadz extends zzaff<Void, PhoneAuthProvider.a> {
    private final zzaaq zzv;

    public zzadz(PhoneMultiFactorInfo phoneMultiFactorInfo, String str, @Nullable String str2, long j10, boolean z10, boolean z11, @Nullable String str3, @Nullable String str4, @Nullable String str5, boolean z12) {
        super(8);
        Preconditions.checkNotNull(phoneMultiFactorInfo);
        Preconditions.checkNotEmpty(str);
        this.zzv = new zzaaq(phoneMultiFactorInfo, str, str2, j10, z10, z11, str3, str4, str5, z12);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final String zza() {
        return "startMfaSignInWithPhoneNumber";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafq
    public final void zza(TaskCompletionSource taskCompletionSource, zzaeo zzaeoVar) {
        this.zzg = new zzafp(this, taskCompletionSource);
        zzaeoVar.zza(this.zzv, this.zzb);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaff
    public final void zzb() {
    }
}
