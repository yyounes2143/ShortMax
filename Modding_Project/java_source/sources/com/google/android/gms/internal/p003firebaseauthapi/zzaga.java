package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.NonNull;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaga  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaga extends PhoneAuthProvider.a {
    private final /* synthetic */ PhoneAuthProvider.a zza;
    private final /* synthetic */ String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaga(PhoneAuthProvider.a aVar, String str) {
        this.zza = aVar;
        this.zzb = str;
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onCodeAutoRetrievalTimeOut(@NonNull String str) {
        zzagb.zza.remove(this.zzb);
        this.zza.onCodeAutoRetrievalTimeOut(str);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onCodeSent(@NonNull String str, @NonNull PhoneAuthProvider.ForceResendingToken forceResendingToken) {
        this.zza.onCodeSent(str, forceResendingToken);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onVerificationCompleted(@NonNull PhoneAuthCredential phoneAuthCredential) {
        zzagb.zza.remove(this.zzb);
        this.zza.onVerificationCompleted(phoneAuthCredential);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onVerificationFailed(@NonNull FirebaseException firebaseException) {
        zzagb.zza.remove(this.zzb);
        this.zza.onVerificationFailed(firebaseException);
    }
}
