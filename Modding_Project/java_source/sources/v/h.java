package v;

import android.app.Activity;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider;
import com.hades.aar.auth.base.AuthType;
import ja.j;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class h extends PhoneAuthProvider.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ j f68644a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Activity f68645b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ka.j f68646c;

    public h(j jVar, Activity activity, ka.j jVar2) {
        this.f68644a = jVar;
        this.f68645b = activity;
        this.f68646c = jVar2;
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onCodeSent(String verificationId, PhoneAuthProvider.ForceResendingToken forceResendingToken) {
        Intrinsics.checkNotNullParameter(verificationId, "verificationId");
        Intrinsics.checkNotNullParameter(forceResendingToken, "forceResendingToken");
        if (j.t(this.f68644a)) {
            this.f68644a.f60374d = verificationId;
            this.f68644a.f60375e = forceResendingToken;
            j jVar = this.f68644a;
            j.v(jVar, "onCodeSent succeed -> verificationId(" + verificationId + ')');
            this.f68644a.d(this.f68645b, AuthType.PHONE_SEND, null, verificationId, null, false, this.f68646c);
        }
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onVerificationCompleted(PhoneAuthCredential p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        j.v(this.f68644a, "onVerificationCompleted");
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.a
    public final void onVerificationFailed(FirebaseException exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        j jVar = this.f68644a;
        j.s(jVar, "onVerificationFailed -> " + exception.getMessage());
        j jVar2 = this.f68644a;
        AuthType authType = AuthType.PHONE_VERIFY;
        jVar2.y(authType, "verify failed : " + exception.getMessage(), this.f68646c);
    }
}
