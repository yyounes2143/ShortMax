package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafi  reason: invalid package */
/* loaded from: classes4.dex */
final class zzafi implements zzafm {
    private final /* synthetic */ PhoneAuthCredential zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafi(zzafh zzafhVar, PhoneAuthCredential phoneAuthCredential) {
        this.zza = phoneAuthCredential;
        Objects.requireNonNull(zzafhVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafm
    public final void zza(PhoneAuthProvider.a aVar, Object... objArr) {
        aVar.onVerificationCompleted(this.zza);
    }
}
