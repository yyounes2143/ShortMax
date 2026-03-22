package com.google.firebase.auth;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.PhoneAuthProvider;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class l0 extends PhoneAuthProvider.a {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ PhoneAuthProvider.a f20565a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20566b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(FirebaseAuth firebaseAuth, PhoneAuthProvider.a aVar) {
        this.f20565a = aVar;
        Objects.requireNonNull(firebaseAuth);
        this.f20566b = firebaseAuth;
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onCodeSent(String str, PhoneAuthProvider.ForceResendingToken forceResendingToken) {
        v7.e eVar;
        PhoneAuthProvider.a aVar = this.f20565a;
        eVar = this.f20566b.f20414g;
        aVar.onVerificationCompleted(PhoneAuthProvider.a(str, (String) Preconditions.checkNotNull(eVar.b())));
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) {
        this.f20565a.onVerificationCompleted(phoneAuthCredential);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onVerificationFailed(FirebaseException firebaseException) {
        this.f20565a.onVerificationFailed(firebaseException);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onCodeAutoRetrievalTimeOut(String str) {
    }
}
