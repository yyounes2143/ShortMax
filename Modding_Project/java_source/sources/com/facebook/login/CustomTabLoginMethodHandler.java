package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessTokenSource;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.internal.d0;
import com.facebook.internal.u0;
import com.facebook.login.LoginClient;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CustomTabLoginMethodHandler.kt */
@Metadata
/* loaded from: classes3.dex */
public final class CustomTabLoginMethodHandler extends WebLoginMethodHandler {

    /* renamed from: l  reason: collision with root package name */
    public static boolean f16395l;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f16396f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f16397g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private String f16398h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final String f16399i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final AccessTokenSource f16400j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final b f16394k = new b(null);
    @NotNull
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new a();

    /* compiled from: CustomTabLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<CustomTabLoginMethodHandler> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public CustomTabLoginMethodHandler createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new CustomTabLoginMethodHandler(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public CustomTabLoginMethodHandler[] newArray(int i10) {
            return new CustomTabLoginMethodHandler[i10];
        }
    }

    /* compiled from: CustomTabLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTabLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.f16399i = "custom_tab";
        this.f16400j = AccessTokenSource.CHROME_CUSTOM_TAB;
        this.f16397g = u0.t(20);
        f16395l = false;
        this.f16398h = com.facebook.internal.e.c(G());
    }

    private final String E() {
        String str = this.f16396f;
        if (str != null) {
            return str;
        }
        String a10 = com.facebook.internal.e.a();
        this.f16396f = a10;
        return a10;
    }

    private final String G() {
        return super.g();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void H(java.lang.String r7, final com.facebook.login.LoginClient.Request r8) {
        /*
            r6 = this;
            if (r7 == 0) goto Lce
            java.lang.String r0 = "fbconnect://cct."
            r1 = 0
            r2 = 2
            r3 = 0
            boolean r0 = kotlin.text.StringsKt.V(r7, r0, r1, r2, r3)
            if (r0 != 0) goto L17
            java.lang.String r0 = super.g()
            boolean r0 = kotlin.text.StringsKt.V(r7, r0, r1, r2, r3)
            if (r0 == 0) goto Lce
        L17:
            android.net.Uri r7 = android.net.Uri.parse(r7)
            java.lang.String r0 = r7.getQuery()
            android.os.Bundle r0 = com.facebook.internal.u0.p0(r0)
            java.lang.String r7 = r7.getFragment()
            android.os.Bundle r7 = com.facebook.internal.u0.p0(r7)
            r0.putAll(r7)
            boolean r7 = r6.J(r0)
            if (r7 != 0) goto L3f
            com.facebook.FacebookException r7 = new com.facebook.FacebookException
            java.lang.String r0 = "Invalid state parameter"
            r7.<init>(r0)
            super.B(r8, r3, r7)
            return
        L3f:
            java.lang.String r7 = "error"
            java.lang.String r7 = r0.getString(r7)
            if (r7 != 0) goto L4d
            java.lang.String r7 = "error_type"
            java.lang.String r7 = r0.getString(r7)
        L4d:
            java.lang.String r1 = "error_msg"
            java.lang.String r1 = r0.getString(r1)
            if (r1 != 0) goto L5b
            java.lang.String r1 = "error_message"
            java.lang.String r1 = r0.getString(r1)
        L5b:
            if (r1 != 0) goto L63
            java.lang.String r1 = "error_description"
            java.lang.String r1 = r0.getString(r1)
        L63:
            java.lang.String r2 = "error_code"
            java.lang.String r2 = r0.getString(r2)
            r4 = -1
            if (r2 == 0) goto L71
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.NumberFormatException -> L71
            goto L72
        L71:
            r2 = r4
        L72:
            boolean r5 = com.facebook.internal.u0.d0(r7)
            if (r5 == 0) goto L99
            boolean r5 = com.facebook.internal.u0.d0(r1)
            if (r5 == 0) goto L99
            if (r2 != r4) goto L99
            java.lang.String r7 = "access_token"
            boolean r7 = r0.containsKey(r7)
            if (r7 == 0) goto L8c
            super.B(r8, r0, r3)
            return
        L8c:
            java.util.concurrent.Executor r7 = com.facebook.v.u()
            com.facebook.login.a r1 = new com.facebook.login.a
            r1.<init>()
            r7.execute(r1)
            goto Lce
        L99:
            if (r7 == 0) goto Lb4
            java.lang.String r0 = "access_denied"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r0)
            if (r0 != 0) goto Lab
            java.lang.String r0 = "OAuthAccessDeniedException"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r0)
            if (r0 == 0) goto Lb4
        Lab:
            com.facebook.FacebookOperationCanceledException r7 = new com.facebook.FacebookOperationCanceledException
            r7.<init>()
            super.B(r8, r3, r7)
            goto Lce
        Lb4:
            r0 = 4201(0x1069, float:5.887E-42)
            if (r2 != r0) goto Lc1
            com.facebook.FacebookOperationCanceledException r7 = new com.facebook.FacebookOperationCanceledException
            r7.<init>()
            super.B(r8, r3, r7)
            goto Lce
        Lc1:
            com.facebook.FacebookRequestError r0 = new com.facebook.FacebookRequestError
            r0.<init>(r2, r7, r1)
            com.facebook.FacebookServiceException r7 = new com.facebook.FacebookServiceException
            r7.<init>(r0, r1)
            super.B(r8, r3, r7)
        Lce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.CustomTabLoginMethodHandler.H(java.lang.String, com.facebook.login.LoginClient$Request):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(CustomTabLoginMethodHandler this$0, LoginClient.Request request, Bundle values) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(values, "$values");
        try {
            this$0.B(request, this$0.l(request, values), null);
        } catch (FacebookException e10) {
            this$0.B(request, null, e10);
        }
    }

    private final boolean J(Bundle bundle) {
        try {
            String string = bundle.getString("state");
            if (string == null) {
                return false;
            }
            return Intrinsics.areEqual(new JSONObject(string).getString("7_challenge"), this.f16397g);
        } catch (JSONException unused) {
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String f() {
        return this.f16399i;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    protected String g() {
        return this.f16398h;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean k(int i10, int i11, @Nullable Intent intent) {
        if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.f14795j, false)) {
            return super.k(i10, i11, intent);
        }
        if (i10 != 1) {
            return super.k(i10, i11, intent);
        }
        LoginClient.Request p10 = d().p();
        if (p10 == null) {
            return false;
        }
        String str = null;
        if (i11 == -1) {
            if (intent != null) {
                str = intent.getStringExtra(CustomTabMainActivity.f14792g);
            }
            H(str, p10);
            return true;
        }
        super.B(p10, null, new FacebookOperationCanceledException());
        return false;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public void m(@NotNull JSONObject param) throws JSONException {
        Intrinsics.checkNotNullParameter(param, "param");
        param.put("7_challenge", this.f16397g);
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int p(@NotNull LoginClient.Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        LoginClient d10 = d();
        if (g().length() == 0) {
            return 0;
        }
        Bundle w10 = w(x(request), request);
        if (f16395l) {
            w10.putString("cct_over_app_switch", "1");
        }
        if (com.facebook.v.f16904q) {
            if (request.y()) {
                CustomTabPrefetchHelper.f16401b.c(d0.f16185c.a("oauth", w10));
            } else {
                CustomTabPrefetchHelper.f16401b.c(com.facebook.internal.d.f16183b.a("oauth", w10));
            }
        }
        FragmentActivity j10 = d10.j();
        if (j10 == null) {
            return 0;
        }
        Intent intent = new Intent(j10, CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f14789d, "oauth");
        intent.putExtra(CustomTabMainActivity.f14790e, w10);
        intent.putExtra(CustomTabMainActivity.f14791f, E());
        intent.putExtra(CustomTabMainActivity.f14793h, request.l().toString());
        Fragment l10 = d10.l();
        if (l10 != null) {
            l10.startActivityForResult(intent, 1);
        }
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        super.writeToParcel(dest, i10);
        dest.writeString(this.f16397g);
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    @Nullable
    protected String y() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    @NotNull
    public AccessTokenSource z() {
        return this.f16400j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTabLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.f16399i = "custom_tab";
        this.f16400j = AccessTokenSource.CHROME_CUSTOM_TAB;
        this.f16397g = source.readString();
        this.f16398h = com.facebook.internal.e.c(G());
    }
}
