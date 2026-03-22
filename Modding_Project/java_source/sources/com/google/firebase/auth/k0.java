package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.p003firebaseauthapi.zzaen;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.PhoneAuthProvider;
import java.util.Objects;
import v7.u0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class k0 extends PhoneAuthProvider.a {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ k f20560a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ u0 f20561b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ PhoneAuthProvider.a f20562c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20563d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(FirebaseAuth firebaseAuth, k kVar, u0 u0Var, PhoneAuthProvider.a aVar) {
        this.f20560a = kVar;
        this.f20561b = u0Var;
        this.f20562c = aVar;
        Objects.requireNonNull(firebaseAuth);
        this.f20563d = firebaseAuth;
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onCodeAutoRetrievalTimeOut(String str) {
        this.f20562c.onCodeAutoRetrievalTimeOut(str);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onCodeSent(String str, PhoneAuthProvider.ForceResendingToken forceResendingToken) {
        this.f20562c.onCodeSent(str, forceResendingToken);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) {
        this.f20562c.onVerificationCompleted(phoneAuthCredential);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onVerificationFailed(FirebaseException firebaseException) {
        if (zzaen.zza(firebaseException)) {
            this.f20560a.c(true);
            String k10 = this.f20560a.k();
            Log.d("FirebaseAuth", "Re-triggering phone verification with Recaptcha flow forced for phone number " + k10);
            FirebaseAuth.B(this.f20560a);
        } else if (!TextUtils.isEmpty(this.f20561b.c())) {
            if (zzaen.zzb(firebaseException) && this.f20563d.E().d("PHONE_PROVIDER") && TextUtils.isEmpty(this.f20561b.b())) {
                this.f20560a.e(true);
                String k11 = this.f20560a.k();
                Log.d("FirebaseAuth", "Re-triggering phone verification with non-reCAPTCHA Enterprise flow for phone number " + k11);
                FirebaseAuth.B(this.f20560a);
                return;
            }
            String k12 = this.f20560a.k();
            String message = firebaseException.getMessage();
            Log.d("FirebaseAuth", "Invoking original failure callbacks after reCAPTCHA Enterprise + phone verification failure for " + k12 + ", error - " + message);
            this.f20562c.onVerificationFailed(firebaseException);
        } else {
            String k13 = this.f20560a.k();
            String message2 = firebaseException.getMessage();
            Log.d("FirebaseAuth", "Invoking original failure callbacks after phone verification failure for " + k13 + ", error - " + message2);
            this.f20562c.onVerificationFailed(firebaseException);
        }
    }
}
