package ja;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInStatusCodes;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.hades.aar.auth.base.AuthType;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class f extends ka.i {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final v.e f60362f = new v.e();

    /* renamed from: d  reason: collision with root package name */
    public final String f60363d;

    /* renamed from: e  reason: collision with root package name */
    public final int f60364e;

    public f(@NotNull String clientId, int i10) {
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        this.f60363d = clientId;
        this.f60364e = i10;
    }

    public static final void s(f fVar, ka.j jVar) {
        ka.i.o(fVar, AuthType.GOOGLE, false, 0, "Request cancelled", false, jVar, 20, null);
    }

    public static final void t(f fVar, ka.j jVar, Exception e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        if (e10 instanceof ApiException) {
            ApiException apiException = (ApiException) e10;
            if (apiException.getStatusCode() == 12501) {
                AuthType authType = AuthType.GOOGLE;
                fVar.getClass();
                Intrinsics.checkNotNullParameter(authType, "authType");
                if (fVar.f60701a) {
                    fVar.f60701a = false;
                    ka.b bVar = fVar.f60702b;
                    if (bVar != null) {
                        bVar.a();
                    }
                    if (jVar != null) {
                        jVar.a(fVar.tag(), "auth cancelled");
                        jVar.d(authType);
                        return;
                    }
                    return;
                }
                return;
            }
            ka.i.o(fVar, AuthType.GOOGLE, false, apiException.getStatusCode(), GoogleSignInStatusCodes.getStatusCodeString(apiException.getStatusCode()), false, jVar, 16, null);
            return;
        }
        ka.i.o(fVar, AuthType.GOOGLE, false, 0, e10.getMessage(), false, jVar, 20, null);
    }

    public static final boolean u(f fVar) {
        return fVar.f60701a;
    }

    public static final void w(Function1 function1, Object obj) {
        function1.invoke(obj);
    }

    @Override // ka.i
    public void k(@NotNull Activity activity, boolean z10, @Nullable ka.j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        super.k(activity, z10, jVar);
        GoogleSignInOptions build = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestProfile().requestIdToken(this.f60363d).requestServerAuthCode(this.f60363d).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(GoogleSignInOpti…tId)\n            .build()");
        Intent signInIntent = GoogleSignIn.getClient(activity, build).getSignInIntent();
        Intrinsics.checkNotNullExpressionValue(signInIntent, "getClient(activity, signInOptions).signInIntent");
        activity.startActivityForResult(signInIntent, this.f60364e);
    }

    @Override // ka.a
    @NotNull
    public String tag() {
        return "GoogleAuth";
    }

    public boolean x(@NotNull Activity activity, int i10, int i11, @Nullable Intent intent, @Nullable final ka.j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (!this.f60701a || i10 != this.f60364e) {
            return false;
        }
        Task<GoogleSignInAccount> signedInAccountFromIntent = GoogleSignIn.getSignedInAccountFromIntent(intent);
        final auth.a.f fVar = new auth.a.f(this, activity, jVar);
        signedInAccountFromIntent.addOnSuccessListener(new OnSuccessListener() { // from class: ja.c
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                f.w(Function1.this, obj);
            }
        }).addOnCanceledListener(new OnCanceledListener() { // from class: ja.d
            @Override // com.google.android.gms.tasks.OnCanceledListener
            public final void onCanceled() {
                f.s(f.this, jVar);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: ja.e
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                f.t(f.this, jVar, exc);
            }
        });
        return true;
    }
}
