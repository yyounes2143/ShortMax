package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.internal.u0;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.services.core.di.ServiceProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebLoginMethodHandler.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nWebLoginMethodHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebLoginMethodHandler.kt\ncom/facebook/login/WebLoginMethodHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n1#2:215\n*E\n"})
/* loaded from: classes3.dex */
public abstract class WebLoginMethodHandler extends LoginMethodHandler {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f16523e = new a(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f16524d;

    /* compiled from: WebLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
    }

    private final String A() {
        Context j10 = d().j();
        if (j10 == null) {
            j10 = com.facebook.v.l();
        }
        return j10.getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }

    private final void C(String str) {
        Context j10 = d().j();
        if (j10 == null) {
            j10 = com.facebook.v.l();
        }
        j10.getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str).apply();
    }

    @VisibleForTesting(otherwise = 4)
    public void B(@NotNull LoginClient.Request request, @Nullable Bundle bundle, @Nullable FacebookException facebookException) {
        String str;
        String str2;
        LoginClient.Result c10;
        Intrinsics.checkNotNullParameter(request, "request");
        LoginClient d10 = d();
        this.f16524d = null;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.f16524d = bundle.getString("e2e");
            }
            try {
                LoginMethodHandler.a aVar = LoginMethodHandler.f16519c;
                AccessToken b10 = aVar.b(request.o(), bundle, z(), request.a());
                c10 = LoginClient.Result.f16480i.b(d10.p(), b10, aVar.d(bundle, request.n()));
                if (d10.j() != null) {
                    try {
                        CookieSyncManager.createInstance(d10.j()).sync();
                    } catch (Exception unused) {
                    }
                    if (b10 != null) {
                        C(b10.m());
                    }
                }
            } catch (FacebookException e10) {
                c10 = LoginClient.Result.b.d(LoginClient.Result.f16480i, d10.p(), null, e10.getMessage(), null, 8, null);
            }
        } else if (facebookException instanceof FacebookOperationCanceledException) {
            c10 = LoginClient.Result.f16480i.a(d10.p(), "User canceled log in.");
        } else {
            this.f16524d = null;
            if (facebookException != null) {
                str = facebookException.getMessage();
            } else {
                str = null;
            }
            if (facebookException instanceof FacebookServiceException) {
                FacebookRequestError e11 = ((FacebookServiceException) facebookException).e();
                str2 = String.valueOf(e11.b());
                str = e11.toString();
            } else {
                str2 = null;
            }
            c10 = LoginClient.Result.f16480i.c(d10.p(), null, str, str2);
        }
        if (!u0.d0(this.f16524d)) {
            h(this.f16524d);
        }
        d10.g(c10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Bundle w(@NotNull Bundle parameters, @NotNull LoginClient.Request request) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(request, "request");
        parameters.putString(CommonConstant.ReqAccessTokenParam.REDIRECT_URI, g());
        if (request.y()) {
            parameters.putString("app_id", request.a());
        } else {
            parameters.putString(CommonConstant.ReqAccessTokenParam.CLIENT_ID, request.a());
        }
        parameters.putString("e2e", LoginClient.f16448m.a());
        if (request.y()) {
            parameters.putString(CommonConstant.ReqAccessTokenParam.RESPONSE_TYPE, "token,signed_request,graph_domain,granted_scopes");
        } else {
            if (request.o().contains("openid")) {
                parameters.putString("nonce", request.n());
            }
            parameters.putString(CommonConstant.ReqAccessTokenParam.RESPONSE_TYPE, "id_token,token,signed_request,graph_domain");
        }
        parameters.putString("code_challenge", request.d());
        CodeChallengeMethod e10 = request.e();
        if (e10 != null) {
            str = e10.name();
        } else {
            str = null;
        }
        parameters.putString("code_challenge_method", str);
        parameters.putString("return_scopes", "true");
        parameters.putString("auth_type", request.c());
        parameters.putString("login_behavior", request.k().name());
        parameters.putString(ServiceProvider.NAMED_SDK, "android-" + com.facebook.v.C());
        if (y() != null) {
            parameters.putString("sso", y());
        }
        boolean z10 = com.facebook.v.f16904q;
        String str3 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        if (z10) {
            str2 = "1";
        } else {
            str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        parameters.putString("cct_prefetching", str2);
        if (request.x()) {
            parameters.putString("fx_app", request.l().toString());
        }
        if (request.I()) {
            parameters.putString("skip_dedupe", "true");
        }
        if (request.m() != null) {
            parameters.putString("messenger_page_id", request.m());
            if (request.p()) {
                str3 = "1";
            }
            parameters.putString("reset_messenger_state", str3);
        }
        return parameters;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Bundle x(@NotNull LoginClient.Request request) {
        String str;
        Intrinsics.checkNotNullParameter(request, "request");
        Bundle bundle = new Bundle();
        if (!u0.e0(request.o())) {
            String join = TextUtils.join(",", request.o());
            bundle.putString(CommonConstant.ReqAccessTokenParam.SCOPE_LABEL, join);
            a(CommonConstant.ReqAccessTokenParam.SCOPE_LABEL, join);
        }
        DefaultAudience g10 = request.g();
        if (g10 == null) {
            g10 = DefaultAudience.NONE;
        }
        bundle.putString("default_audience", g10.getNativeProtocolAudience());
        bundle.putString("state", c(request.b()));
        AccessToken e10 = AccessToken.f14731l.e();
        if (e10 != null) {
            str = e10.m();
        } else {
            str = null;
        }
        String str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        if (str != null && Intrinsics.areEqual(str, A())) {
            bundle.putString("access_token", str);
            a("access_token", "1");
        } else {
            FragmentActivity j10 = d().j();
            if (j10 != null) {
                u0.i(j10);
            }
            a("access_token", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        bundle.putString("cbt", String.valueOf(System.currentTimeMillis()));
        if (com.facebook.v.p()) {
            str2 = "1";
        }
        bundle.putString("ies", str2);
        return bundle;
    }

    @Nullable
    protected String y() {
        return null;
    }

    @NotNull
    public abstract AccessTokenSource z();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
    }
}
