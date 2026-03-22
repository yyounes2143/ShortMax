package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.firebase.auth.PhoneAuthProvider;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafl  reason: invalid package */
/* loaded from: classes4.dex */
final class zzafl implements zzafm {
    private final /* synthetic */ String zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafl(zzafh zzafhVar, String str) {
        this.zza = str;
        Objects.requireNonNull(zzafhVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafm
    public final void zza(PhoneAuthProvider.a aVar, Object... objArr) {
        aVar.onCodeAutoRetrievalTimeOut(this.zza);
    }
}
