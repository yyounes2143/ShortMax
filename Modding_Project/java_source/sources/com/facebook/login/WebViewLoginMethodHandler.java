package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.WebDialog;
import com.facebook.internal.u0;
import com.facebook.login.LoginClient;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebViewLoginMethodHandler.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WebViewLoginMethodHandler extends WebLoginMethodHandler {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private WebDialog f16526f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f16527g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final String f16528h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final AccessTokenSource f16529i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final c f16525j = new c(null);
    @NotNull
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new b();

    /* compiled from: WebViewLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public final class a extends WebDialog.a {
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private String f16530h;
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private LoginBehavior f16531i;
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private LoginTargetApp f16532j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f16533k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f16534l;

        /* renamed from: m  reason: collision with root package name */
        public String f16535m;

        /* renamed from: n  reason: collision with root package name */
        public String f16536n;

        /* renamed from: o  reason: collision with root package name */
        final /* synthetic */ WebViewLoginMethodHandler f16537o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull WebViewLoginMethodHandler webViewLoginMethodHandler, @NotNull Context context, @NotNull String applicationId, Bundle parameters) {
            super(context, applicationId, "oauth", parameters);
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            this.f16537o = webViewLoginMethodHandler;
            this.f16530h = "fbconnect://success";
            this.f16531i = LoginBehavior.NATIVE_WITH_FALLBACK;
            this.f16532j = LoginTargetApp.FACEBOOK;
        }

        @Override // com.facebook.internal.WebDialog.a
        @NotNull
        public WebDialog a() {
            String str;
            Bundle f10 = f();
            Intrinsics.checkNotNull(f10, "null cannot be cast to non-null type android.os.Bundle");
            f10.putString(CommonConstant.ReqAccessTokenParam.REDIRECT_URI, this.f16530h);
            f10.putString(CommonConstant.ReqAccessTokenParam.CLIENT_ID, c());
            f10.putString("e2e", j());
            if (this.f16532j == LoginTargetApp.INSTAGRAM) {
                str = "token,signed_request,graph_domain,granted_scopes";
            } else {
                str = "token,signed_request,graph_domain";
            }
            f10.putString(CommonConstant.ReqAccessTokenParam.RESPONSE_TYPE, str);
            f10.putString("return_scopes", "true");
            f10.putString("auth_type", i());
            f10.putString("login_behavior", this.f16531i.name());
            if (this.f16533k) {
                f10.putString("fx_app", this.f16532j.toString());
            }
            if (this.f16534l) {
                f10.putString("skip_dedupe", "true");
            }
            WebDialog.b bVar = WebDialog.f16109m;
            Context d10 = d();
            Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type android.content.Context");
            return bVar.d(d10, "oauth", f10, g(), this.f16532j, e());
        }

        @NotNull
        public final String i() {
            String str = this.f16536n;
            if (str != null) {
                return str;
            }
            Intrinsics.throwUninitializedPropertyAccessException("authType");
            return null;
        }

        @NotNull
        public final String j() {
            String str = this.f16535m;
            if (str != null) {
                return str;
            }
            Intrinsics.throwUninitializedPropertyAccessException("e2e");
            return null;
        }

        @NotNull
        public final a k(@NotNull String authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            l(authType);
            return this;
        }

        public final void l(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f16536n = str;
        }

        @NotNull
        public final a m(@NotNull String e2e) {
            Intrinsics.checkNotNullParameter(e2e, "e2e");
            n(e2e);
            return this;
        }

        public final void n(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f16535m = str;
        }

        @NotNull
        public final a o(boolean z10) {
            this.f16533k = z10;
            return this;
        }

        @NotNull
        public final a p(boolean z10) {
            String str;
            if (z10) {
                str = "fbconnect://chrome_os_success";
            } else {
                str = "fbconnect://success";
            }
            this.f16530h = str;
            return this;
        }

        @NotNull
        public final a q(@NotNull LoginBehavior loginBehavior) {
            Intrinsics.checkNotNullParameter(loginBehavior, "loginBehavior");
            this.f16531i = loginBehavior;
            return this;
        }

        @NotNull
        public final a r(@NotNull LoginTargetApp targetApp) {
            Intrinsics.checkNotNullParameter(targetApp, "targetApp");
            this.f16532j = targetApp;
            return this;
        }

        @NotNull
        public final a s(boolean z10) {
            this.f16534l = z10;
            return this;
        }
    }

    /* compiled from: WebViewLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Parcelable.Creator<WebViewLoginMethodHandler> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public WebViewLoginMethodHandler createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new WebViewLoginMethodHandler(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public WebViewLoginMethodHandler[] newArray(int i10) {
            return new WebViewLoginMethodHandler[i10];
        }
    }

    /* compiled from: WebViewLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    /* compiled from: WebViewLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class d implements WebDialog.d {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LoginClient.Request f16539b;

        d(LoginClient.Request request) {
            this.f16539b = request;
        }

        @Override // com.facebook.internal.WebDialog.d
        public void a(@Nullable Bundle bundle, @Nullable FacebookException facebookException) {
            WebViewLoginMethodHandler.this.D(this.f16539b, bundle, facebookException);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.f16528h = "web_view";
        this.f16529i = AccessTokenSource.WEB_VIEW;
    }

    public final void D(@NotNull LoginClient.Request request, @Nullable Bundle bundle, @Nullable FacebookException facebookException) {
        Intrinsics.checkNotNullParameter(request, "request");
        super.B(request, bundle, facebookException);
    }

    @Override // com.facebook.login.LoginMethodHandler
    public void b() {
        WebDialog webDialog = this.f16526f;
        if (webDialog != null) {
            if (webDialog != null) {
                webDialog.cancel();
            }
            this.f16526f = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String f() {
        return this.f16528h;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean j() {
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int p(@NotNull LoginClient.Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Bundle x10 = x(request);
        d dVar = new d(request);
        String a10 = LoginClient.f16448m.a();
        this.f16527g = a10;
        a("e2e", a10);
        FragmentActivity j10 = d().j();
        if (j10 == null) {
            return 0;
        }
        boolean X = u0.X(j10);
        a aVar = new a(this, j10, request.a(), x10);
        String str = this.f16527g;
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type kotlin.String");
        this.f16526f = aVar.m(str).p(X).k(request.c()).q(request.k()).r(request.l()).o(request.x()).s(request.I()).h(dVar).a();
        FacebookDialogFragment facebookDialogFragment = new FacebookDialogFragment();
        facebookDialogFragment.setRetainInstance(true);
        facebookDialogFragment.l(this.f16526f);
        facebookDialogFragment.show(j10.getSupportFragmentManager(), "FacebookDialogFragment");
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        super.writeToParcel(dest, i10);
        dest.writeString(this.f16527g);
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    @NotNull
    public AccessTokenSource z() {
        return this.f16529i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.f16528h = "web_view";
        this.f16529i = AccessTokenSource.WEB_VIEW;
        this.f16527g = source.readString();
    }
}
