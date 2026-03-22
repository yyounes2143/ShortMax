package com.facebook.login.widget;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.FacebookButtonBase;
import com.facebook.Profile;
import com.facebook.appevents.h0;
import com.facebook.i;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginTargetApp;
import com.facebook.login.a0;
import com.facebook.login.b0;
import com.facebook.login.widget.LoginButton;
import com.facebook.login.widget.ToolTipPopup;
import com.facebook.login.z;
import com.facebook.v;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoginButton.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLoginButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginButton.kt\ncom/facebook/login/widget/LoginButton\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,816:1\n1#2:817\n*E\n"})
/* loaded from: classes3.dex */
public class LoginButton extends FacebookButtonBase {

    /* renamed from: j  reason: collision with root package name */
    private boolean f16633j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f16634k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f16635l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final b f16636m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f16637n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private ToolTipPopup.Style f16638o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private ToolTipMode f16639p;

    /* renamed from: q  reason: collision with root package name */
    private long f16640q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private ToolTipPopup f16641r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private com.facebook.g f16642s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private ms.i<? extends LoginManager> f16643t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private Float f16644u;

    /* renamed from: v  reason: collision with root package name */
    private int f16645v;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final String f16646w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private com.facebook.i f16647x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private ActivityResultLauncher<Collection<String>> f16648y;
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    public static final a f16632z = new a(null);
    private static final String A = LoginButton.class.getName();

    /* compiled from: LoginButton.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum ToolTipMode {
        AUTOMATIC("automatic", 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);
        
        @NotNull
        public static final a Companion = new a(null);
        @NotNull
        private static final ToolTipMode DEFAULT;
        private final int intValue;
        @NotNull
        private final String stringValue;

        /* compiled from: LoginButton.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nLoginButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginButton.kt\ncom/facebook/login/widget/LoginButton$ToolTipMode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,816:1\n1#2:817\n*E\n"})
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final ToolTipMode a(int i10) {
                ToolTipMode[] values;
                for (ToolTipMode toolTipMode : ToolTipMode.values()) {
                    if (toolTipMode.getIntValue() == i10) {
                        return toolTipMode;
                    }
                }
                return null;
            }

            @NotNull
            public final ToolTipMode b() {
                return ToolTipMode.DEFAULT;
            }

            private a() {
            }
        }

        static {
            DEFAULT = r0;
        }

        ToolTipMode(String str, int i10) {
            this.stringValue = str;
            this.intValue = i10;
        }

        public final int getIntValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return this.stringValue;
        }
    }

    /* compiled from: LoginButton.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: LoginButton.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private DefaultAudience f16649a = DefaultAudience.FRIENDS;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private List<String> f16650b = CollectionsKt.n();
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private LoginBehavior f16651c = LoginBehavior.NATIVE_WITH_FALLBACK;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private String f16652d = "rerequest";
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private LoginTargetApp f16653e = LoginTargetApp.FACEBOOK;

        /* renamed from: f  reason: collision with root package name */
        private boolean f16654f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f16655g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f16656h;

        @NotNull
        public final String a() {
            return this.f16652d;
        }

        @NotNull
        public final DefaultAudience b() {
            return this.f16649a;
        }

        @NotNull
        public final LoginBehavior c() {
            return this.f16651c;
        }

        @NotNull
        public final LoginTargetApp d() {
            return this.f16653e;
        }

        @Nullable
        public final String e() {
            return this.f16655g;
        }

        @NotNull
        public final List<String> f() {
            return this.f16650b;
        }

        public final boolean g() {
            return this.f16656h;
        }

        public final boolean h() {
            return this.f16654f;
        }

        public final void i(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f16652d = str;
        }

        public final void j(@NotNull DefaultAudience defaultAudience) {
            Intrinsics.checkNotNullParameter(defaultAudience, "<set-?>");
            this.f16649a = defaultAudience;
        }

        public final void k(@NotNull LoginBehavior loginBehavior) {
            Intrinsics.checkNotNullParameter(loginBehavior, "<set-?>");
            this.f16651c = loginBehavior;
        }

        public final void l(@NotNull LoginTargetApp loginTargetApp) {
            Intrinsics.checkNotNullParameter(loginTargetApp, "<set-?>");
            this.f16653e = loginTargetApp;
        }

        public final void m(@Nullable String str) {
            this.f16655g = str;
        }

        public final void n(@NotNull List<String> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.f16650b = list;
        }

        public final void o(boolean z10) {
            this.f16656h = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: LoginButton.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLoginButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginButton.kt\ncom/facebook/login/widget/LoginButton$LoginClickListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,816:1\n1#2:817\n*E\n"})
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        public c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void g(LoginManager loginManager, DialogInterface dialogInterface, int i10) {
            if (o4.a.d(c.class)) {
                return;
            }
            try {
                Intrinsics.checkNotNullParameter(loginManager, "$loginManager");
                loginManager.t();
            } catch (Throwable th2) {
                o4.a.b(th2, c.class);
            }
        }

        @NotNull
        protected LoginManager b() {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                LoginManager c10 = LoginManager.f16498j.c();
                c10.B(LoginButton.this.getDefaultAudience());
                c10.E(LoginButton.this.getLoginBehavior());
                c10.F(c());
                c10.A(LoginButton.this.getAuthType());
                c10.D(d());
                c10.I(LoginButton.this.getShouldSkipAccountDeduplication());
                c10.G(LoginButton.this.getMessengerPageId());
                c10.H(LoginButton.this.getResetMessengerState());
                return c10;
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return null;
            }
        }

        @NotNull
        protected final LoginTargetApp c() {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                return LoginTargetApp.FACEBOOK;
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return null;
            }
        }

        protected final boolean d() {
            o4.a.d(this);
            return false;
        }

        protected final void e() {
            if (o4.a.d(this)) {
                return;
            }
            try {
                LoginManager b10 = b();
                ActivityResultLauncher activityResultLauncher = LoginButton.this.f16648y;
                if (activityResultLauncher != null) {
                    ActivityResultContract contract = activityResultLauncher.getContract();
                    Intrinsics.checkNotNull(contract, "null cannot be cast to non-null type com.facebook.login.LoginManager.FacebookLoginActivityResultContract");
                    LoginManager.FacebookLoginActivityResultContract facebookLoginActivityResultContract = (LoginManager.FacebookLoginActivityResultContract) contract;
                    com.facebook.i callbackManager = LoginButton.this.getCallbackManager();
                    if (callbackManager == null) {
                        callbackManager = new CallbackManagerImpl();
                    }
                    facebookLoginActivityResultContract.c(callbackManager);
                    activityResultLauncher.launch(LoginButton.this.getProperties().f());
                } else if (LoginButton.this.getFragment() != null) {
                    Fragment fragment = LoginButton.this.getFragment();
                    if (fragment != null) {
                        LoginButton loginButton = LoginButton.this;
                        b10.q(fragment, loginButton.getProperties().f(), loginButton.getLoggerID());
                    }
                } else if (LoginButton.this.getNativeFragment() != null) {
                    android.app.Fragment nativeFragment = LoginButton.this.getNativeFragment();
                    if (nativeFragment != null) {
                        LoginButton loginButton2 = LoginButton.this;
                        b10.p(nativeFragment, loginButton2.getProperties().f(), loginButton2.getLoggerID());
                    }
                } else {
                    b10.o(LoginButton.this.getActivity(), LoginButton.this.getProperties().f(), LoginButton.this.getLoggerID());
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }

        protected final void f(@NotNull Context context) {
            String str;
            String string;
            if (o4.a.d(this)) {
                return;
            }
            try {
                Intrinsics.checkNotNullParameter(context, "context");
                final LoginManager b10 = b();
                if (LoginButton.this.f16633j) {
                    String string2 = LoginButton.this.getResources().getString(z.f16705d);
                    Intrinsics.checkNotNullExpressionValue(string2, "resources.getString(R.st…loginview_log_out_action)");
                    String string3 = LoginButton.this.getResources().getString(z.f16702a);
                    Intrinsics.checkNotNullExpressionValue(string3, "resources.getString(R.st…_loginview_cancel_action)");
                    Profile b11 = Profile.f14870h.b();
                    if (b11 != null) {
                        str = b11.c();
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String string4 = LoginButton.this.getResources().getString(z.f16707f);
                        Intrinsics.checkNotNullExpressionValue(string4, "resources.getString(R.st…k_loginview_logged_in_as)");
                        string = String.format(string4, Arrays.copyOf(new Object[]{b11.c()}, 1));
                        Intrinsics.checkNotNullExpressionValue(string, "format(format, *args)");
                    } else {
                        string = LoginButton.this.getResources().getString(z.f16708g);
                        Intrinsics.checkNotNullExpressionValue(string, "{\n          resources.ge…using_facebook)\n        }");
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setMessage(string).setCancelable(true).setPositiveButton(string2, new DialogInterface.OnClickListener() { // from class: com.facebook.login.widget.f
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i10) {
                            LoginButton.c.g(LoginManager.this, dialogInterface, i10);
                        }
                    }).setNegativeButton(string3, (DialogInterface.OnClickListener) null);
                    builder.create().show();
                    return;
                }
                b10.t();
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NotNull View v10) {
            if (o4.a.d(this)) {
                return;
            }
            try {
                Intrinsics.checkNotNullParameter(v10, "v");
                LoginButton.this.b(v10);
                AccessToken.c cVar = AccessToken.f14731l;
                AccessToken e10 = cVar.e();
                boolean g10 = cVar.g();
                if (g10) {
                    Context context = LoginButton.this.getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "context");
                    f(context);
                } else {
                    e();
                }
                h0 h0Var = new h0(LoginButton.this.getContext());
                Bundle bundle = new Bundle();
                int i10 = 1;
                if (e10 != null) {
                    i10 = 0;
                }
                bundle.putInt("logging_in", i10);
                bundle.putInt("access_token_expired", g10 ? 1 : 0);
                h0Var.g("fb_login_view_usage", bundle);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    /* compiled from: LoginButton.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class d {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToolTipMode.values().length];
            try {
                iArr[ToolTipMode.AUTOMATIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ToolTipMode.DISPLAY_ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ToolTipMode.NEVER_DISPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: LoginButton.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class e extends com.facebook.g {
        e() {
        }

        @Override // com.facebook.g
        protected void d(@Nullable AccessToken accessToken, @Nullable AccessToken accessToken2) {
            LoginButton.this.E();
            LoginButton.this.C();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected LoginButton(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11, @NotNull String analyticsButtonCreatedEventName, @NotNull String analyticsButtonTappedEventName) {
        super(context, attributeSet, i10, i11, analyticsButtonCreatedEventName, analyticsButtonTappedEventName);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(analyticsButtonCreatedEventName, "analyticsButtonCreatedEventName");
        Intrinsics.checkNotNullParameter(analyticsButtonTappedEventName, "analyticsButtonTappedEventName");
        this.f16636m = new b();
        this.f16638o = ToolTipPopup.Style.BLUE;
        this.f16639p = ToolTipMode.Companion.b();
        this.f16640q = 6000L;
        this.f16643t = kotlin.c.b(new Function0<LoginManager>() { // from class: com.facebook.login.widget.LoginButton$loginManagerLazy$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: b */
            public final LoginManager invoke() {
                return LoginManager.f16498j.c();
            }
        });
        this.f16645v = 255;
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        this.f16646w = uuid;
    }

    private final void G(p pVar) {
        if (!o4.a.d(this) && pVar != null) {
            try {
                if (pVar.l() && getVisibility() == 0) {
                    x(pVar.k());
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    private final void t() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            int i10 = d.$EnumSwitchMapping$0[this.f16639p.ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    String string = getResources().getString(z.f16709h);
                    Intrinsics.checkNotNullExpressionValue(string, "resources.getString(R.st…facebook_tooltip_default)");
                    x(string);
                    return;
                }
                return;
            }
            final String K = u0.K(getContext());
            v.u().execute(new Runnable() { // from class: com.facebook.login.widget.c
                @Override // java.lang.Runnable
                public final void run() {
                    LoginButton.u(K, this);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(String appId, final LoginButton this$0) {
        Intrinsics.checkNotNullParameter(appId, "$appId");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        final p u10 = FetchedAppSettingsManager.u(appId, false);
        this$0.getActivity().runOnUiThread(new Runnable() { // from class: com.facebook.login.widget.e
            @Override // java.lang.Runnable
            public final void run() {
                LoginButton.v(LoginButton.this, u10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(LoginButton this$0, p pVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.G(pVar);
    }

    private final void x(String str) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            ToolTipPopup toolTipPopup = new ToolTipPopup(str, this);
            toolTipPopup.h(this.f16638o);
            toolTipPopup.g(this.f16640q);
            toolTipPopup.i();
            this.f16641r = toolTipPopup;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final int z(String str) {
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            return getCompoundPaddingLeft() + getCompoundDrawablePadding() + f(str) + getCompoundPaddingRight();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }

    protected final void B(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            ToolTipMode.a aVar = ToolTipMode.Companion;
            this.f16639p = aVar.b();
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b0.W, i10, i11);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context\n            .the…efStyleAttr, defStyleRes)");
            this.f16633j = obtainStyledAttributes.getBoolean(b0.X, true);
            setLoginText(obtainStyledAttributes.getString(b0.f16546a0));
            setLogoutText(obtainStyledAttributes.getString(b0.f16548b0));
            ToolTipMode a10 = aVar.a(obtainStyledAttributes.getInt(b0.f16550c0, aVar.b().getIntValue()));
            if (a10 == null) {
                a10 = aVar.b();
            }
            this.f16639p = a10;
            if (obtainStyledAttributes.hasValue(b0.Y)) {
                this.f16644u = Float.valueOf(obtainStyledAttributes.getDimension(b0.Y, 0.0f));
            }
            int integer = obtainStyledAttributes.getInteger(b0.Z, 255);
            this.f16645v = integer;
            int max = Math.max(0, integer);
            this.f16645v = max;
            this.f16645v = Math.min(255, max);
            obtainStyledAttributes.recycle();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    protected final void C() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), com.facebook.common.b.f15286a), (Drawable) null, (Drawable) null, (Drawable) null);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @TargetApi(29)
    protected final void D() {
        int stateCount;
        Drawable stateDrawable;
        GradientDrawable gradientDrawable;
        if (o4.a.d(this)) {
            return;
        }
        try {
            Float f10 = this.f16644u;
            if (f10 != null) {
                float floatValue = f10.floatValue();
                Drawable background = getBackground();
                if (Build.VERSION.SDK_INT >= 29 && (background instanceof StateListDrawable)) {
                    stateCount = ((StateListDrawable) background).getStateCount();
                    for (int i10 = 0; i10 < stateCount; i10++) {
                        stateDrawable = ((StateListDrawable) background).getStateDrawable(i10);
                        if (stateDrawable instanceof GradientDrawable) {
                            gradientDrawable = (GradientDrawable) stateDrawable;
                        } else {
                            gradientDrawable = null;
                        }
                        if (gradientDrawable != null) {
                            gradientDrawable.setCornerRadius(floatValue);
                        }
                    }
                }
                if (background instanceof GradientDrawable) {
                    ((GradientDrawable) background).setCornerRadius(floatValue);
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    protected final void E() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Resources resources = getResources();
            if (!isInEditMode() && AccessToken.f14731l.g()) {
                String str = this.f16635l;
                if (str == null) {
                    str = resources.getString(z.f16706e);
                }
                setText(str);
                return;
            }
            String str2 = this.f16634k;
            if (str2 != null) {
                setText(str2);
                return;
            }
            String string = resources.getString(getLoginButtonContinueLabel());
            Intrinsics.checkNotNullExpressionValue(string, "resources.getString(loginButtonContinueLabel)");
            int width = getWidth();
            if (width != 0 && z(string) > width) {
                string = resources.getString(z.f16703b);
                Intrinsics.checkNotNullExpressionValue(string, "resources.getString(R.st…_loginview_log_in_button)");
            }
            setText(string);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    protected final void F() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            getBackground().setAlpha(this.f16645v);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public void c(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            super.c(context, attributeSet, i10, i11);
            setInternalOnClickListener(getNewLoginClickListener());
            B(context, attributeSet, i10, i11);
            if (isInEditMode()) {
                setBackgroundColor(getResources().getColor(com.facebook.common.a.f15285a));
                setLoginText("Continue with Facebook");
            } else {
                this.f16642s = new e();
            }
            E();
            D();
            F();
            C();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @NotNull
    public final String getAuthType() {
        return this.f16636m.a();
    }

    @Nullable
    public final com.facebook.i getCallbackManager() {
        return this.f16647x;
    }

    @NotNull
    public final DefaultAudience getDefaultAudience() {
        return this.f16636m.b();
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultRequestCode() {
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return a0.f16543a;
    }

    @NotNull
    public final String getLoggerID() {
        return this.f16646w;
    }

    @NotNull
    public final LoginBehavior getLoginBehavior() {
        return this.f16636m.c();
    }

    @StringRes
    protected final int getLoginButtonContinueLabel() {
        return z.f16704c;
    }

    @NotNull
    protected final ms.i<LoginManager> getLoginManagerLazy() {
        return this.f16643t;
    }

    @NotNull
    public final LoginTargetApp getLoginTargetApp() {
        return this.f16636m.d();
    }

    @Nullable
    public final String getLoginText() {
        return this.f16634k;
    }

    @Nullable
    public final String getLogoutText() {
        return this.f16635l;
    }

    @Nullable
    public final String getMessengerPageId() {
        return this.f16636m.e();
    }

    @NotNull
    protected c getNewLoginClickListener() {
        return new c();
    }

    @NotNull
    public final List<String> getPermissions() {
        return this.f16636m.f();
    }

    @NotNull
    protected final b getProperties() {
        return this.f16636m;
    }

    public final boolean getResetMessengerState() {
        return this.f16636m.g();
    }

    public final boolean getShouldSkipAccountDeduplication() {
        return this.f16636m.h();
    }

    public final long getToolTipDisplayTime() {
        return this.f16640q;
    }

    @NotNull
    public final ToolTipMode getToolTipMode() {
        return this.f16639p;
    }

    @NotNull
    public final ToolTipPopup.Style getToolTipStyle() {
        return this.f16638o;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            super.onAttachedToWindow();
            if (getContext() instanceof ActivityResultRegistryOwner) {
                Context context = getContext();
                Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.activity.result.ActivityResultRegistryOwner");
                this.f16648y = ((ActivityResultRegistryOwner) context).getActivityResultRegistry().register("facebook-login", this.f16643t.getValue().i(this.f16647x, this.f16646w), new ActivityResultCallback() { // from class: com.facebook.login.widget.d
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void onActivityResult(Object obj) {
                        LoginButton.A((i.a) obj);
                    }
                });
            }
            com.facebook.g gVar = this.f16642s;
            if (gVar != null && gVar.c()) {
                gVar.e();
                E();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            super.onDetachedFromWindow();
            ActivityResultLauncher<Collection<String>> activityResultLauncher = this.f16648y;
            if (activityResultLauncher != null) {
                activityResultLauncher.unregister();
            }
            com.facebook.g gVar = this.f16642s;
            if (gVar != null) {
                gVar.f();
            }
            w();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            super.onDraw(canvas);
            if (!this.f16637n && !isInEditMode()) {
                this.f16637n = true;
                t();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            super.onLayout(z10, i10, i11, i12, i13);
            E();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
            int compoundPaddingTop = getCompoundPaddingTop() + ((int) Math.ceil(Math.abs(fontMetrics.top) + Math.abs(fontMetrics.bottom))) + getCompoundPaddingBottom();
            Resources resources = getResources();
            int y10 = y(i10);
            String str = this.f16635l;
            if (str == null) {
                str = resources.getString(z.f16706e);
                Intrinsics.checkNotNullExpressionValue(str, "resources.getString(R.st…loginview_log_out_button)");
            }
            setMeasuredDimension(View.resolveSize(Math.max(y10, z(str)), i10), compoundPaddingTop);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(@NotNull View changedView, int i10) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(changedView, "changedView");
            super.onVisibilityChanged(changedView, i10);
            if (i10 != 0) {
                w();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void setAuthType(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f16636m.i(value);
    }

    public final void setDefaultAudience(@NotNull DefaultAudience value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f16636m.j(value);
    }

    public final void setLoginBehavior(@NotNull LoginBehavior value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f16636m.k(value);
    }

    protected final void setLoginManagerLazy(@NotNull ms.i<? extends LoginManager> iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<set-?>");
        this.f16643t = iVar;
    }

    public final void setLoginTargetApp(@NotNull LoginTargetApp value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f16636m.l(value);
    }

    public final void setLoginText(@Nullable String str) {
        this.f16634k = str;
        E();
    }

    public final void setLogoutText(@Nullable String str) {
        this.f16635l = str;
        E();
    }

    public final void setMessengerPageId(@Nullable String str) {
        this.f16636m.m(str);
    }

    public final void setPermissions(@NotNull String... permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        this.f16636m.n(CollectionsKt.s(Arrays.copyOf(permissions, permissions.length)));
    }

    @ms.c
    public final void setPublishPermissions(@NotNull List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        this.f16636m.n(permissions);
    }

    @ms.c
    public final void setReadPermissions(@NotNull List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        this.f16636m.n(permissions);
    }

    public final void setResetMessengerState(boolean z10) {
        this.f16636m.o(z10);
    }

    public final void setToolTipDisplayTime(long j10) {
        this.f16640q = j10;
    }

    public final void setToolTipMode(@NotNull ToolTipMode toolTipMode) {
        Intrinsics.checkNotNullParameter(toolTipMode, "<set-?>");
        this.f16639p = toolTipMode;
    }

    public final void setToolTipStyle(@NotNull ToolTipPopup.Style style) {
        Intrinsics.checkNotNullParameter(style, "<set-?>");
        this.f16638o = style;
    }

    public final void w() {
        ToolTipPopup toolTipPopup = this.f16641r;
        if (toolTipPopup != null) {
            toolTipPopup.d();
        }
        this.f16641r = null;
    }

    protected final int y(int i10) {
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            Resources resources = getResources();
            String str = this.f16634k;
            if (str == null) {
                str = resources.getString(z.f16704c);
                int z10 = z(str);
                if (View.resolveSize(z10, i10) < z10) {
                    str = resources.getString(z.f16703b);
                }
            }
            return z(str);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }

    public final void setPermissions(@NotNull List<String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f16636m.n(value);
    }

    @ms.c
    public final void setPublishPermissions(@NotNull String... permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        this.f16636m.n(CollectionsKt.s(Arrays.copyOf(permissions, permissions.length)));
    }

    @ms.c
    public final void setReadPermissions(@NotNull String... permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        this.f16636m.n(CollectionsKt.s(Arrays.copyOf(permissions, permissions.length)));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoginButton(@NotNull Context context) {
        this(context, null, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoginButton(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoginButton(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, "fb_login_button_create", "fb_login_button_did_tap");
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(i.a aVar) {
    }
}
