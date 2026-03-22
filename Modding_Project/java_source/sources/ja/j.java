package ja;

import android.app.Activity;
import android.util.Log;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.k;
import com.hades.aar.auth.base.AuthType;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nPhoneAuth.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneAuth.kt\ncom/hades/aar/auth/PhoneAuth\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"})
/* loaded from: classes5.dex */
public final class j extends ka.i {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final v.g f60373f = new v.g();

    /* renamed from: d  reason: collision with root package name */
    public String f60374d;

    /* renamed from: e  reason: collision with root package name */
    public PhoneAuthProvider.ForceResendingToken f60375e;

    public static final int s(j jVar, String str) {
        return Log.e(jVar.tag(), str);
    }

    public static final boolean t(j jVar) {
        return jVar.f60701a;
    }

    public static final int v(j jVar, String str) {
        return Log.i(jVar.tag(), str);
    }

    @Override // ka.i
    public void j(@NotNull Activity activity, @NotNull String otp, @Nullable ka.j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(otp, "otp");
        if (!this.f60701a) {
            return;
        }
        Log.i(tag(), "auth start");
        String str = this.f60374d;
        if (str != null && str.length() != 0) {
            super.j(activity, otp, jVar);
            try {
                PhoneAuthCredential a10 = PhoneAuthProvider.a(str, otp);
                Intrinsics.checkNotNullExpressionValue(a10, "getCredential(verificationId, otp)");
                Log.i(tag(), "auth CredentialAuth.auth start");
                a aVar = new a();
                aVar.p(this.f60702b);
                aVar.i(activity, a10, jVar);
                return;
            } catch (Exception e10) {
                Log.e(tag(), "auth failed -> " + e10.getMessage());
                AuthType authType = AuthType.PHONE_VERIFY;
                y(authType, "verify failed : " + e10.getMessage(), jVar);
                return;
            }
        }
        Log.e(tag(), "auth failed -> mVerificationId is empty");
        y(AuthType.PHONE_VERIFY, "verify failed : mVerificationId is empty", jVar);
    }

    @Override // ka.i
    public void q() {
        super.q();
        this.f60374d = null;
        this.f60375e = null;
    }

    @Override // ka.i
    public void r(@NotNull Activity activity, @NotNull String areaCode, @NotNull String phoneNumber, @Nullable ka.j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        Log.i(tag(), "send -> areaCode(" + areaCode + ") phoneNumber(" + phoneNumber + ')');
        super.r(activity, areaCode, phoneNumber, jVar);
        k.a b10 = com.google.firebase.auth.k.a().b(activity);
        k.a c10 = b10.e("+" + areaCode + phoneNumber).f(60L, TimeUnit.SECONDS).c(new v.h(this, activity, jVar));
        Intrinsics.checkNotNullExpressionValue(c10, "override fun send(\n     …er(builder.build())\n    }");
        PhoneAuthProvider.ForceResendingToken forceResendingToken = this.f60375e;
        if (forceResendingToken != null) {
            c10.d(forceResendingToken);
        }
        PhoneAuthProvider.b(c10.a());
    }

    @Override // ka.a
    @NotNull
    public String tag() {
        return "PhoneAuth";
    }

    public final void y(@NotNull AuthType authType, @Nullable String str, @Nullable ka.j jVar) {
        Intrinsics.checkNotNullParameter(authType, "authType");
        if (str == null) {
            str = "";
        }
        Intrinsics.checkNotNullParameter(authType, "authType");
        if (this.f60701a) {
            ka.b bVar = this.f60702b;
            if (bVar != null) {
                bVar.a();
            }
            if (jVar != null) {
                String tag = tag();
                jVar.a(tag, "auth failed -> authType(" + authType + ") firebaseError(false) errMsg(" + str + ')');
                jVar.b(authType, false, -1, str);
            }
        }
    }
}
