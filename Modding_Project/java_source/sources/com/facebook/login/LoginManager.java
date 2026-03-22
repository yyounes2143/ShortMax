package com.facebook.login;

import android.app.Activity;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsClient;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookException;
import com.facebook.Profile;
import com.facebook.i;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.v0;
import com.facebook.login.LoginClient;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoginManager.kt */
@Metadata
/* loaded from: classes3.dex */
public class LoginManager {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final b f16498j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final Set<String> f16499k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final String f16500l;

    /* renamed from: m  reason: collision with root package name */
    private static volatile LoginManager f16501m;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final SharedPreferences f16504c;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f16506e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f16507f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f16509h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f16510i;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private LoginBehavior f16502a = LoginBehavior.NATIVE_WITH_FALLBACK;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private DefaultAudience f16503b = DefaultAudience.FRIENDS;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private String f16505d = "rerequest";
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private LoginTargetApp f16508g = LoginTargetApp.FACEBOOK;

    /* compiled from: LoginManager.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLoginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginManager.kt\ncom/facebook/login/LoginManager$FacebookLoginActivityResultContract\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1400:1\n1#2:1401\n*E\n"})
    /* loaded from: classes3.dex */
    public final class FacebookLoginActivityResultContract extends ActivityResultContract<Collection<? extends String>, i.a> {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private com.facebook.i f16511a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f16512b;

        public FacebookLoginActivityResultContract(@Nullable com.facebook.i iVar, @Nullable String str) {
            this.f16511a = iVar;
            this.f16512b = str;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* renamed from: a */
        public Intent createIntent(@NotNull Context context, @NotNull Collection<String> permissions) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            LoginClient.Request j10 = LoginManager.this.j(new k(permissions, null, 2, null));
            String str = this.f16512b;
            if (str != null) {
                j10.A(str);
            }
            LoginManager.this.u(context, j10);
            Intent l10 = LoginManager.this.l(j10);
            if (LoginManager.this.z(l10)) {
                return l10;
            }
            FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            LoginManager.this.m(context, LoginClient.Result.Code.ERROR, null, facebookException, false, j10);
            throw facebookException;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* renamed from: b */
        public i.a parseResult(int i10, @Nullable Intent intent) {
            LoginManager.w(LoginManager.this, i10, intent, null, 4, null);
            int requestCode = CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
            com.facebook.i iVar = this.f16511a;
            if (iVar != null) {
                iVar.onActivityResult(requestCode, i10, intent);
            }
            return new i.a(requestCode, i10, intent);
        }

        public final void c(@Nullable com.facebook.i iVar) {
            this.f16511a = iVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LoginManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements c0 {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Activity f16514a;

        public a(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.f16514a = activity;
        }

        @Override // com.facebook.login.c0
        @NotNull
        public Activity a() {
            return this.f16514a;
        }

        @Override // com.facebook.login.c0
        public void startActivityForResult(@NotNull Intent intent, int i10) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            a().startActivityForResult(intent, i10);
        }
    }

    /* compiled from: LoginManager.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLoginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginManager.kt\ncom/facebook/login/LoginManager$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1400:1\n1#2:1401\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set<String> d() {
            return y0.j("ads_management", "create_event", "rsvp_event");
        }

        @VisibleForTesting(otherwise = 2)
        @NotNull
        public final r b(@NotNull LoginClient.Request request, @NotNull AccessToken newToken, @Nullable AuthenticationToken authenticationToken) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(newToken, "newToken");
            Set<String> o10 = request.o();
            Set h12 = CollectionsKt.h1(CollectionsKt.o0(newToken.k()));
            if (request.z()) {
                h12.retainAll(o10);
            }
            Set h13 = CollectionsKt.h1(CollectionsKt.o0(o10));
            h13.removeAll(h12);
            return new r(newToken, authenticationToken, h12, h13);
        }

        @NotNull
        public LoginManager c() {
            if (LoginManager.f16501m == null) {
                synchronized (this) {
                    LoginManager.f16501m = new LoginManager();
                    Unit unit = Unit.f60915a;
                }
            }
            LoginManager loginManager = LoginManager.f16501m;
            if (loginManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("instance");
                return null;
            }
            return loginManager;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final boolean e(@Nullable String str) {
            if (str == null) {
                return false;
            }
            if (!StringsKt.V(str, "publish", false, 2, null) && !StringsKt.V(str, "manage", false, 2, null) && !LoginManager.f16499k.contains(str)) {
                return false;
            }
            return true;
        }

        private b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LoginManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c implements c0 {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final com.facebook.internal.x f16515a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Activity f16516b;

        public c(@NotNull com.facebook.internal.x fragment) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            this.f16515a = fragment;
            this.f16516b = fragment.a();
        }

        @Override // com.facebook.login.c0
        @Nullable
        public Activity a() {
            return this.f16516b;
        }

        @Override // com.facebook.login.c0
        public void startActivityForResult(@NotNull Intent intent, int i10) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            this.f16515a.d(intent, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LoginManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f16517a = new d();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private static o f16518b;

        private d() {
        }

        @Nullable
        public final synchronized o a(@Nullable Context context) {
            if (context == null) {
                context = com.facebook.v.l();
            }
            if (context == null) {
                return null;
            }
            if (f16518b == null) {
                f16518b = new o(context, com.facebook.v.m());
            }
            return f16518b;
        }
    }

    static {
        b bVar = new b(null);
        f16498j = bVar;
        f16499k = bVar.d();
        String cls = LoginManager.class.toString();
        Intrinsics.checkNotNullExpressionValue(cls, "LoginManager::class.java.toString()");
        f16500l = cls;
    }

    public LoginManager() {
        v0.l();
        SharedPreferences sharedPreferences = com.facebook.v.l().getSharedPreferences("com.facebook.loginManager", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getApplicationContext().…ER, Context.MODE_PRIVATE)");
        this.f16504c = sharedPreferences;
        if (com.facebook.v.f16904q && com.facebook.internal.e.a() != null) {
            CustomTabsClient.bindCustomTabsService(com.facebook.v.l(), "com.android.chrome", new CustomTabPrefetchHelper());
            CustomTabsClient.connectAndInitialize(com.facebook.v.l(), com.facebook.v.l().getPackageName());
        }
    }

    private final void C(boolean z10) {
        SharedPreferences.Editor edit = this.f16504c.edit();
        edit.putBoolean("express_login_allowed", z10);
        edit.apply();
    }

    private final void J(c0 c0Var, LoginClient.Request request) throws FacebookException {
        u(c0Var.a(), request);
        CallbackManagerImpl.f16088b.c(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.a() { // from class: com.facebook.login.q
            @Override // com.facebook.internal.CallbackManagerImpl.a
            public final boolean a(int i10, Intent intent) {
                boolean K;
                K = LoginManager.K(LoginManager.this, i10, intent);
                return K;
            }
        });
        if (L(c0Var, request)) {
            return;
        }
        FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
        m(c0Var.a(), LoginClient.Result.Code.ERROR, null, facebookException, false, request);
        throw facebookException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean K(LoginManager this$0, int i10, Intent intent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return w(this$0, i10, intent, null, 4, null);
    }

    private final boolean L(c0 c0Var, LoginClient.Request request) {
        Intent l10 = l(request);
        if (!z(l10)) {
            return false;
        }
        try {
            c0Var.startActivityForResult(l10, LoginClient.f16448m.b());
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    private final void N(Collection<String> collection) {
        if (collection == null) {
            return;
        }
        for (String str : collection) {
            if (f16498j.e(str)) {
                throw new FacebookException("Cannot pass a publish or manage permission (" + str + ") to a request for read authorization");
            }
        }
    }

    private final void k(AccessToken accessToken, AuthenticationToken authenticationToken, LoginClient.Request request, FacebookException facebookException, boolean z10, com.facebook.k<r> kVar) {
        r rVar;
        if (accessToken != null) {
            AccessToken.f14731l.i(accessToken);
            Profile.f14870h.a();
        }
        if (authenticationToken != null) {
            AuthenticationToken.f14747f.a(authenticationToken);
        }
        if (kVar != null) {
            if (accessToken != null && request != null) {
                rVar = f16498j.b(request, accessToken, authenticationToken);
            } else {
                rVar = null;
            }
            if (!z10 && (rVar == null || !rVar.b().isEmpty())) {
                if (facebookException != null) {
                    kVar.a(facebookException);
                    return;
                } else if (accessToken != null && rVar != null) {
                    C(true);
                    kVar.onSuccess(rVar);
                    return;
                } else {
                    return;
                }
            }
            kVar.onCancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(Context context, LoginClient.Result.Code code, Map<String, String> map, Exception exc, boolean z10, LoginClient.Request request) {
        String str;
        String str2;
        o a10 = d.f16517a.a(context);
        if (a10 == null) {
            return;
        }
        if (request == null) {
            o.k(a10, "fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", null, 4, null);
            return;
        }
        HashMap hashMap = new HashMap();
        if (z10) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        hashMap.put("try_login_activity", str);
        String b10 = request.b();
        if (request.x()) {
            str2 = "foa_mobile_login_complete";
        } else {
            str2 = "fb_mobile_login_complete";
        }
        a10.f(b10, hashMap, code, map, exc, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(Context context, LoginClient.Request request) {
        String str;
        o a10 = d.f16517a.a(context);
        if (a10 != null && request != null) {
            if (request.x()) {
                str = "foa_mobile_login_start";
            } else {
                str = "fb_mobile_login_start";
            }
            a10.i(request, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean w(LoginManager loginManager, int i10, Intent intent, com.facebook.k kVar, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 4) != 0) {
                kVar = null;
            }
            return loginManager.v(i10, intent, kVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onActivityResult");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean y(LoginManager this$0, com.facebook.k kVar, int i10, Intent intent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return this$0.v(i10, intent, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean z(Intent intent) {
        if (com.facebook.v.l().getPackageManager().resolveActivity(intent, 0) == null) {
            return false;
        }
        return true;
    }

    @NotNull
    public final LoginManager A(@NotNull String authType) {
        Intrinsics.checkNotNullParameter(authType, "authType");
        this.f16505d = authType;
        return this;
    }

    @NotNull
    public final LoginManager B(@NotNull DefaultAudience defaultAudience) {
        Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
        this.f16503b = defaultAudience;
        return this;
    }

    @NotNull
    public final LoginManager D(boolean z10) {
        this.f16509h = z10;
        return this;
    }

    @NotNull
    public final LoginManager E(@NotNull LoginBehavior loginBehavior) {
        Intrinsics.checkNotNullParameter(loginBehavior, "loginBehavior");
        this.f16502a = loginBehavior;
        return this;
    }

    @NotNull
    public final LoginManager F(@NotNull LoginTargetApp targetApp) {
        Intrinsics.checkNotNullParameter(targetApp, "targetApp");
        this.f16508g = targetApp;
        return this;
    }

    @NotNull
    public final LoginManager G(@Nullable String str) {
        this.f16506e = str;
        return this;
    }

    @NotNull
    public final LoginManager H(boolean z10) {
        this.f16507f = z10;
        return this;
    }

    @NotNull
    public final LoginManager I(boolean z10) {
        this.f16510i = z10;
        return this;
    }

    public final void M(@Nullable com.facebook.i iVar) {
        if (iVar instanceof CallbackManagerImpl) {
            ((CallbackManagerImpl) iVar).c(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode());
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }

    @NotNull
    public final FacebookLoginActivityResultContract i(@Nullable com.facebook.i iVar, @Nullable String str) {
        return new FacebookLoginActivityResultContract(iVar, str);
    }

    @NotNull
    protected LoginClient.Request j(@NotNull k loginConfig) {
        String a10;
        Intrinsics.checkNotNullParameter(loginConfig, "loginConfig");
        CodeChallengeMethod codeChallengeMethod = CodeChallengeMethod.S256;
        try {
            a10 = u.b(loginConfig.a(), codeChallengeMethod);
        } catch (FacebookException unused) {
            codeChallengeMethod = CodeChallengeMethod.PLAIN;
            a10 = loginConfig.a();
        }
        CodeChallengeMethod codeChallengeMethod2 = codeChallengeMethod;
        String str = a10;
        LoginBehavior loginBehavior = this.f16502a;
        Set i12 = CollectionsKt.i1(loginConfig.c());
        DefaultAudience defaultAudience = this.f16503b;
        String str2 = this.f16505d;
        String m10 = com.facebook.v.m();
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        LoginClient.Request request = new LoginClient.Request(loginBehavior, i12, defaultAudience, str2, m10, uuid, this.f16508g, loginConfig.b(), loginConfig.a(), str, codeChallengeMethod2);
        request.E(AccessToken.f14731l.g());
        request.C(this.f16506e);
        request.G(this.f16507f);
        request.B(this.f16509h);
        request.H(this.f16510i);
        return request;
    }

    @NotNull
    protected Intent l(@NotNull LoginClient.Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intent intent = new Intent();
        intent.setClass(com.facebook.v.l(), FacebookActivity.class);
        intent.setAction(request.k().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable(AdActivity.REQUEST_KEY_EXTRA, request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        return intent;
    }

    public final void n(@NotNull Activity activity, @NotNull k loginConfig) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(loginConfig, "loginConfig");
        if (activity instanceof ActivityResultRegistryOwner) {
            Log.w(f16500l, "You're calling logging in Facebook with an activity supports androidx activity result APIs. Please follow our document to upgrade to new APIs to avoid overriding onActivityResult().");
        }
        J(new a(activity), j(loginConfig));
    }

    public final void o(@NotNull Activity activity, @Nullable Collection<String> collection, @Nullable String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        LoginClient.Request j10 = j(new k(collection, null, 2, null));
        if (str != null) {
            j10.A(str);
        }
        J(new a(activity), j10);
    }

    public final void p(@NotNull Fragment fragment, @Nullable Collection<String> collection, @Nullable String str) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        r(new com.facebook.internal.x(fragment), collection, str);
    }

    public final void q(@NotNull androidx.fragment.app.Fragment fragment, @Nullable Collection<String> collection, @Nullable String str) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        r(new com.facebook.internal.x(fragment), collection, str);
    }

    public final void r(@NotNull com.facebook.internal.x fragment, @Nullable Collection<String> collection, @Nullable String str) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        LoginClient.Request j10 = j(new k(collection, null, 2, null));
        if (str != null) {
            j10.A(str);
        }
        J(new c(fragment), j10);
    }

    public final void s(@NotNull Activity activity, @Nullable Collection<String> collection) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        N(collection);
        n(activity, new k(collection, null, 2, null));
    }

    public void t() {
        AccessToken.f14731l.i(null);
        AuthenticationToken.f14747f.a(null);
        Profile.f14870h.c(null);
        C(false);
    }

    @VisibleForTesting(otherwise = 3)
    public boolean v(int i10, @Nullable Intent intent, @Nullable com.facebook.k<r> kVar) {
        LoginClient.Result.Code code;
        boolean z10;
        AccessToken accessToken;
        AuthenticationToken authenticationToken;
        LoginClient.Request request;
        Map<String, String> map;
        AuthenticationToken authenticationToken2;
        LoginClient.Result.Code code2 = LoginClient.Result.Code.ERROR;
        FacebookException facebookException = null;
        boolean z11 = false;
        if (intent != null) {
            intent.setExtrasClassLoader(LoginClient.Result.class.getClassLoader());
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result != null) {
                request = result.f16486f;
                LoginClient.Result.Code code3 = result.f16481a;
                if (i10 != -1) {
                    if (i10 == 0) {
                        z11 = true;
                    }
                    accessToken = null;
                    authenticationToken2 = null;
                } else if (code3 == LoginClient.Result.Code.SUCCESS) {
                    accessToken = result.f16482b;
                    authenticationToken2 = result.f16483c;
                } else {
                    authenticationToken2 = null;
                    facebookException = new FacebookAuthorizationException(result.f16484d);
                    accessToken = null;
                }
                map = result.f16487g;
                z10 = z11;
                authenticationToken = authenticationToken2;
                code = code3;
            }
            code = code2;
            accessToken = null;
            authenticationToken = null;
            request = null;
            map = null;
            z10 = false;
        } else {
            if (i10 == 0) {
                code = LoginClient.Result.Code.CANCEL;
                z10 = true;
                accessToken = null;
                authenticationToken = null;
                request = null;
                map = null;
            }
            code = code2;
            accessToken = null;
            authenticationToken = null;
            request = null;
            map = null;
            z10 = false;
        }
        if (facebookException == null && accessToken == null && !z10) {
            facebookException = new FacebookException("Unexpected call to LoginManager.onActivityResult");
        }
        FacebookException facebookException2 = facebookException;
        LoginClient.Request request2 = request;
        m(null, code, map, facebookException2, true, request2);
        k(accessToken, authenticationToken, request2, facebookException2, z10, kVar);
        return true;
    }

    public final void x(@Nullable com.facebook.i iVar, @Nullable final com.facebook.k<r> kVar) {
        if (iVar instanceof CallbackManagerImpl) {
            ((CallbackManagerImpl) iVar).b(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.a() { // from class: com.facebook.login.p
                @Override // com.facebook.internal.CallbackManagerImpl.a
                public final boolean a(int i10, Intent intent) {
                    boolean y10;
                    y10 = LoginManager.y(LoginManager.this, kVar, i10, intent);
                    return y10;
                }
            });
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }
}
