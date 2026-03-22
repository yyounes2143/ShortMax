package ja;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.hades.aar.auth.base.AuthType;
import com.hades.aar.auth.base.AuthUser;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.support.account.AccountAuthManager;
import com.huawei.hms.support.account.request.AccountAuthParams;
import com.huawei.hms.support.account.request.AccountAuthParamsHelper;
import com.huawei.hms.support.account.result.AuthAccount;
import com.huawei.hms.support.account.service.AccountAuthService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class i extends ka.i {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final v.f f60371e = new v.f();

    /* renamed from: d  reason: collision with root package name */
    public AccountAuthService f60372d;

    public static final void t(i iVar, Activity activity, ka.j jVar, AuthAccount authAccount) {
        Intrinsics.checkNotNullExpressionValue(authAccount, "authAccount");
        iVar.s(activity, authAccount, jVar);
    }

    public static final void u(i iVar, ka.j jVar, Activity activity, Exception exc) {
        Intent signInIntent;
        if (exc instanceof ApiException) {
            AccountAuthService accountAuthService = iVar.f60372d;
            if (accountAuthService != null && (signInIntent = accountAuthService.getSignInIntent()) != null) {
                signInIntent.putExtra("intent.extra.isfullscreen", true);
                activity.startActivityForResult(signInIntent, 1011);
                return;
            }
            return;
        }
        ka.i.o(iVar, AuthType.HUAWEI, false, 0, exc.getMessage(), false, jVar, 20, null);
    }

    @Override // ka.i
    public void k(@NotNull final Activity activity, boolean z10, @Nullable final ka.j jVar) {
        ua.f<AuthAccount> fVar;
        Intrinsics.checkNotNullParameter(activity, "activity");
        super.k(activity, z10, jVar);
        AccountAuthService service = AccountAuthManager.getService(activity, new AccountAuthParamsHelper(AccountAuthParams.DEFAULT_AUTH_REQUEST_PARAM).setEmail().setAuthorizationCode().createParams());
        this.f60372d = service;
        if (service != null) {
            fVar = service.silentSignIn();
        } else {
            fVar = null;
        }
        if (fVar != null) {
            fVar.c(new ua.e() { // from class: ja.g
                @Override // ua.e
                public final void onSuccess(Object obj) {
                    i.t(i.this, activity, jVar, (AuthAccount) obj);
                }
            });
        }
        if (fVar != null) {
            fVar.b(new ua.d() { // from class: ja.h
                @Override // ua.d
                public final void onFailure(Exception exc) {
                    i.u(i.this, jVar, activity, exc);
                }
            });
        }
    }

    @Override // ka.i
    public void q() {
        super.q();
        this.f60372d = null;
    }

    public final void s(Activity activity, AuthAccount authAccount, ka.j jVar) {
        Log.i("HuaWeiAuth", "code:" + authAccount.getAuthorizationCode());
        AuthUser authUser = new AuthUser();
        String displayName = authAccount.getDisplayName();
        if (displayName != null && displayName.length() != 0) {
            authUser.f(authAccount.getDisplayName());
        }
        String avatarUriString = authAccount.getAvatarUriString();
        if (avatarUriString != null && avatarUriString.length() != 0) {
            authUser.b(authAccount.getAvatarUriString());
        }
        d(activity, AuthType.HUAWEI, authAccount.getAuthorizationCode(), "", authUser, false, jVar);
    }

    @Override // ka.a
    @NotNull
    public String tag() {
        return "HuaWeiAuth";
    }

    public boolean v(@NotNull Activity activity, int i10, int i11, @Nullable Intent intent, @Nullable ka.j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (!this.f60701a || i10 != 1011) {
            return false;
        }
        Log.i("HuaWeiAuth", "onActivitResult of sigInInIntent, request code: 1011");
        ua.f<AuthAccount> parseAuthResultFromIntent = AccountAuthManager.parseAuthResultFromIntent(intent);
        if (parseAuthResultFromIntent.g()) {
            AuthAccount authAccount = parseAuthResultFromIntent.e();
            Intrinsics.checkNotNullExpressionValue(authAccount, "authAccount");
            s(activity, authAccount, jVar);
            Log.i("HuaWeiAuth", "onActivitResult of sigInInIntent, request code: 1011");
            return true;
        } else if (parseAuthResultFromIntent.f()) {
            Log.e("HuaWeiAuth", "sign in cancel");
            ka.i.o(this, AuthType.HUAWEI, false, 0, "Request cancelled", false, jVar, 20, null);
            return true;
        } else {
            StringBuilder sb2 = new StringBuilder("sign in failed : ");
            Exception d10 = parseAuthResultFromIntent.d();
            Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type com.huawei.hms.common.ApiException");
            sb2.append(((ApiException) d10).getStatusCode());
            Log.e("HuaWeiAuth", sb2.toString());
            AuthType authType = AuthType.HUAWEI;
            Exception d11 = parseAuthResultFromIntent.d();
            Intrinsics.checkNotNull(d11, "null cannot be cast to non-null type com.huawei.hms.common.ApiException");
            int statusCode = ((ApiException) d11).getStatusCode();
            Exception d12 = parseAuthResultFromIntent.d();
            Intrinsics.checkNotNull(d12, "null cannot be cast to non-null type com.huawei.hms.common.ApiException");
            ka.i.o(this, authType, false, statusCode, ((ApiException) d12).getStatusMessage(), false, jVar, 16, null);
            return true;
        }
    }
}
