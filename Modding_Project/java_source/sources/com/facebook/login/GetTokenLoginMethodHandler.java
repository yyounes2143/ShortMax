package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.m0;
import com.facebook.internal.u0;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GetTokenLoginMethodHandler.kt */
@Metadata
/* loaded from: classes3.dex */
public final class GetTokenLoginMethodHandler extends LoginMethodHandler {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private i f16438d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f16439e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final b f16437f = new b(null);
    @NotNull
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new a();

    /* compiled from: GetTokenLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<GetTokenLoginMethodHandler> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public GetTokenLoginMethodHandler createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new GetTokenLoginMethodHandler(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public GetTokenLoginMethodHandler[] newArray(int i10) {
            return new GetTokenLoginMethodHandler[i10];
        }
    }

    /* compiled from: GetTokenLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: GetTokenLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c implements u0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bundle f16440a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GetTokenLoginMethodHandler f16441b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ LoginClient.Request f16442c;

        c(Bundle bundle, GetTokenLoginMethodHandler getTokenLoginMethodHandler, LoginClient.Request request) {
            this.f16440a = bundle;
            this.f16441b = getTokenLoginMethodHandler;
            this.f16442c = request;
        }

        @Override // com.facebook.internal.u0.a
        public void a(@Nullable JSONObject jSONObject) {
            String str;
            try {
                Bundle bundle = this.f16440a;
                if (jSONObject != null) {
                    str = jSONObject.getString("id");
                } else {
                    str = null;
                }
                bundle.putString("com.facebook.platform.extra.USER_ID", str);
                this.f16441b.z(this.f16442c, this.f16440a);
            } catch (JSONException e10) {
                this.f16441b.d().f(LoginClient.Result.b.d(LoginClient.Result.f16480i, this.f16441b.d().p(), "Caught exception", e10.getMessage(), null, 8, null));
            }
        }

        @Override // com.facebook.internal.u0.a
        public void b(@Nullable FacebookException facebookException) {
            String str;
            LoginClient d10 = this.f16441b.d();
            LoginClient.Result.b bVar = LoginClient.Result.f16480i;
            LoginClient.Request p10 = this.f16441b.d().p();
            if (facebookException != null) {
                str = facebookException.getMessage();
            } else {
                str = null;
            }
            d10.f(LoginClient.Result.b.d(bVar, p10, "Caught exception", str, null, 8, null));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTokenLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.f16439e = "get_token";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(GetTokenLoginMethodHandler this$0, LoginClient.Request request, Bundle bundle) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        this$0.y(request, bundle);
    }

    @Override // com.facebook.login.LoginMethodHandler
    public void b() {
        i iVar = this.f16438d;
        if (iVar != null) {
            iVar.b();
            iVar.f(null);
            this.f16438d = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String f() {
        return this.f16439e;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int p(@NotNull final LoginClient.Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Context j10 = d().j();
        if (j10 == null) {
            j10 = com.facebook.v.l();
        }
        i iVar = new i(j10, request);
        this.f16438d = iVar;
        if (!iVar.g()) {
            return 0;
        }
        d().y();
        m0.b bVar = new m0.b() { // from class: com.facebook.login.j
            @Override // com.facebook.internal.m0.b
            public final void a(Bundle bundle) {
                GetTokenLoginMethodHandler.A(GetTokenLoginMethodHandler.this, request, bundle);
            }
        };
        i iVar2 = this.f16438d;
        if (iVar2 != null) {
            iVar2.f(bVar);
            return 1;
        }
        return 1;
    }

    public final void x(@NotNull LoginClient.Request request, @NotNull Bundle result) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(result, "result");
        String string = result.getString("com.facebook.platform.extra.USER_ID");
        if (string != null && string.length() != 0) {
            z(request, result);
            return;
        }
        d().y();
        String string2 = result.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        if (string2 != null) {
            Intrinsics.checkNotNullExpressionValue(string2, "checkNotNull(result.getS…ocol.EXTRA_ACCESS_TOKEN))");
            u0.H(string2, new c(result, this, request));
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    public final void y(@NotNull LoginClient.Request request, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(request, "request");
        i iVar = this.f16438d;
        if (iVar != null) {
            iVar.f(null);
        }
        this.f16438d = null;
        d().z();
        if (bundle != null) {
            List stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            if (stringArrayList == null) {
                stringArrayList = CollectionsKt.n();
            }
            Set<String> o10 = request.o();
            if (o10 == null) {
                o10 = y0.f();
            }
            String string = bundle.getString("com.facebook.platform.extra.ID_TOKEN");
            if (o10.contains("openid") && (string == null || string.length() == 0)) {
                d().I();
                return;
            } else if (stringArrayList.containsAll(o10)) {
                x(request, bundle);
                return;
            } else {
                HashSet hashSet = new HashSet();
                for (String str : o10) {
                    if (!stringArrayList.contains(str)) {
                        hashSet.add(str);
                    }
                }
                if (!hashSet.isEmpty()) {
                    a("new_permissions", TextUtils.join(",", hashSet));
                }
                request.D(hashSet);
            }
        }
        d().I();
    }

    public final void z(@NotNull LoginClient.Request request, @NotNull Bundle result) {
        LoginClient.Result d10;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(result, "result");
        try {
            LoginMethodHandler.a aVar = LoginMethodHandler.f16519c;
            d10 = LoginClient.Result.f16480i.b(request, aVar.a(result, AccessTokenSource.FACEBOOK_APPLICATION_SERVICE, request.a()), aVar.c(result, request.n()));
        } catch (FacebookException e10) {
            d10 = LoginClient.Result.b.d(LoginClient.Result.f16480i, d().p(), null, e10.getMessage(), null, 8, null);
        }
        d().g(d10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTokenLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.f16439e = "get_token";
    }
}
