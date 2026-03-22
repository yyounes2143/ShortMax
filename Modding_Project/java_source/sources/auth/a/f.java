package auth.a;

import android.app.Activity;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.h;
import com.hades.aar.auth.base.AuthType;
import com.hades.aar.auth.base.AuthUser;
import ka.j;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class f extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ja.f f2129d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Activity f2130e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ j f2131f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ja.f fVar, Activity activity, j jVar) {
        super(1);
        this.f2129d = fVar;
        this.f2130e = activity;
        this.f2131f = jVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (ja.f.u(this.f2129d)) {
            AuthUser authUser = new AuthUser();
            String displayName = googleSignInAccount.getDisplayName();
            if (displayName != null && displayName.length() != 0) {
                authUser.f(googleSignInAccount.getDisplayName());
            }
            if (googleSignInAccount.getPhotoUrl() != null) {
                authUser.b(String.valueOf(googleSignInAccount.getPhotoUrl()));
            }
            ja.f fVar = this.f2129d;
            Activity activity = this.f2130e;
            AuthType authType = AuthType.GOOGLE;
            AuthCredential a10 = h.a(googleSignInAccount.getIdToken(), null);
            Intrinsics.checkNotNullExpressionValue(a10, "getCredential(it.idToken, null)");
            fVar.b(activity, authType, a10, authUser, googleSignInAccount.getIdToken(), this.f2131f);
        }
        return Unit.f60915a;
    }
}
