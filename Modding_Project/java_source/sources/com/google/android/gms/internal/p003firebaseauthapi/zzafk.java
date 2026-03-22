package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.common.api.Status;
import com.google.firebase.auth.PhoneAuthProvider;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafk  reason: invalid package */
/* loaded from: classes4.dex */
final class zzafk implements zzafm {
    private final /* synthetic */ Status zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafk(zzafh zzafhVar, Status status) {
        this.zza = status;
        Objects.requireNonNull(zzafhVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafm
    public final void zza(PhoneAuthProvider.a aVar, Object... objArr) {
        aVar.onVerificationFailed(zzaen.zza(this.zza));
    }
}
