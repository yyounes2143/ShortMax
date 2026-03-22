package com.startshorts.androidplayer.ui.activity.auth;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.autofill.HintConstants;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.auth.HuaWeiLoginView;
import com.hades.aar.auth.base.AuthType;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.databinding.ActivityLogin2Binding;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.auth.FirebaseAuthManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.auth.Login2Activity;
import com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import fk.u;
import java.lang.ref.WeakReference;
import jk.b0;
import jk.e0;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Login2Activity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Login2Activity extends BaseVDBActivity<ActivityLogin2Binding> {
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final a f44960v = new a(null);
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final i f44961l = new i();
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final h f44962m = new h();
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final ms.i<FirebaseAuthManager> f44963n = kotlin.c.b(new Function0() { // from class: sh.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            FirebaseAuthManager c02;
            c02 = Login2Activity.c0();
            return c02;
        }
    });
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private String f44964o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private String f44965p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private String f44966q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f44967r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f44968s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private View f44969t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f44970u;

    /* compiled from: Login2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: Login2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements ke.b {
        b() {
        }

        @Override // ke.b
        public void a(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            Login2Activity.this.finish();
        }

        @Override // ke.b
        public void b(AuthType authType, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            Login2Activity.this.y(str);
        }
    }

    /* compiled from: Login2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Login2Activity.this.O();
        }
    }

    /* compiled from: Login2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Login2Activity.this.P();
        }
    }

    /* compiled from: Login2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Login2Activity.this.finish();
        }
    }

    /* compiled from: Login2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends yd.d {
        f() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Login2Activity.this.e0();
        }
    }

    /* compiled from: Login2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends yd.d {
        g() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Login2Activity.this.e0();
        }
    }

    /* compiled from: Login2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends yd.d {
        h() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            Login2Activity login2Activity = Login2Activity.this;
            String string = login2Activity.getString(R$string.policy_private_policy);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(login2Activity, string);
        }
    }

    /* compiled from: Login2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends yd.d {
        i() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            Login2Activity login2Activity = Login2Activity.this;
            String string = login2Activity.getString(R$string.policy_user_agreement);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(login2Activity, string);
        }
    }

    public Login2Activity() {
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: sh.b
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                Login2Activity.f0(Login2Activity.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        this.f44970u = registerForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f44964o);
        bundle.putString("type", "facebook");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
        R();
        this.f44963n.getValue().a(AuthReason.LOGIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f44964o);
        bundle.putString("type", "google");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
        R();
        this.f44963n.getValue().b(AuthReason.LOGIN);
    }

    private final void Q() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f44964o);
        bundle.putString("type", "huawei");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
        R();
        this.f44963n.getValue().c(AuthReason.LOGIN);
    }

    private final void R() {
        if (this.f44963n.isInitialized()) {
            return;
        }
        s("initAuthManager");
        FirebaseAuthManager value = this.f44963n.getValue();
        value.p(new WeakReference<>(this));
        value.F(this.f44964o);
        value.s(new b());
    }

    private final void S() {
        if (!ae.a.f627a.g()) {
            Y();
        } else {
            V();
        }
    }

    private final void T() {
        ViewStubProxy loginGetBonus = E().f38331i;
        Intrinsics.checkNotNullExpressionValue(loginGetBonus, "loginGetBonus");
        View c10 = e0.c(loginGetBonus);
        if (c10 != null) {
            if (this.f44968s) {
                b0.d(c10);
            } else {
                String h10 = AccountManager.f41533a.h();
                if (h10.length() > 0 && !Intrinsics.areEqual(h10, MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    ((TextView) c10.findViewById(R$id.facebook_login_bonus)).setText(c10.getContext().getString(R$string.login_get_bonus, h10));
                    b0.l(c10);
                } else {
                    b0.d(c10);
                }
            }
        }
        if (this.f44968s) {
            E().f38324b.setBackgroundResource(R$drawable.bg_login_method_google2);
            E().f38325c.setTextColor(u.f51776a.a(R$color.t_b_83));
        } else {
            E().f38324b.setBackgroundResource(R$drawable.bg_login_method_facebook2);
            E().f38325c.setTextColor(u.f51776a.a(R$color.color_common_white));
        }
        E().f38324b.setOnClickListener(new c());
    }

    private final void U() {
        if (!ae.a.f627a.g()) {
            E().f38327e.setVisibility(0);
            E().f38327e.setOnClickListener(new d());
            return;
        }
        E().f38327e.setVisibility(8);
    }

    private final void V() {
        HuaWeiLoginView huaWeiLoginView;
        E().f38334l.setVisibility(8);
        E().f38330h.setVisibility(0);
        ViewStubProxy viewStubProxy = E().f38328f;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root instanceof HuaWeiLoginView) {
            huaWeiLoginView = (HuaWeiLoginView) root;
        } else {
            huaWeiLoginView = null;
        }
        if (huaWeiLoginView != null) {
            huaWeiLoginView.setOnAuthButtonClickListener(new View.OnClickListener() { // from class: sh.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Login2Activity.W(Login2Activity.this, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(Login2Activity login2Activity, View view) {
        login2Activity.Q();
    }

    private final void X() {
        E().f38333k.setOnClickListener(new e());
    }

    private final void Y() {
        if (this.f44969t == null) {
            ViewStubProxy phoneLoginGetBonus = E().f38335m;
            Intrinsics.checkNotNullExpressionValue(phoneLoginGetBonus, "phoneLoginGetBonus");
            this.f44969t = e0.c(phoneLoginGetBonus);
        }
        if (this.f44968s) {
            b0.l(E().f38334l);
            b0.l(E().f38330h);
            View view = this.f44969t;
            if (view != null) {
                String i10 = AccountManager.f41533a.i();
                if (i10.length() > 0 && !Intrinsics.areEqual(i10, MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    ((TextView) view.findViewById(R$id.phone_login_bonus)).setText(u.f51776a.e(R$string.login_get_bonus, i10));
                    b0.l(view);
                    view.setOnClickListener(new f());
                } else {
                    b0.d(view);
                }
            }
            E().f38334l.setOnClickListener(new g());
            return;
        }
        b0.d(E().f38334l);
        b0.d(E().f38330h);
        View view2 = this.f44969t;
        if (view2 != null) {
            b0.d(view2);
        }
    }

    private final void Z() {
        BaseTextView policyTv = E().f38336n;
        Intrinsics.checkNotNullExpressionValue(policyTv, "policyTv");
        String string = getString(R$string.login_activity_policy, getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        y.l(policyTv, string, new String[]{getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy)}, ContextCompat.getColor(this, 17170443), yf.a.f70794a.g(), 0.0f, false, CollectionsKt.t(this.f44961l, this.f44962m), 48, null);
    }

    private final void a0() {
        View toolbarView = E().f38337o;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
    }

    private final void b0() {
        this.f44968s = AccountRepo.f43052a.L0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseAuthManager c0() {
        return new FirebaseAuthManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(String str, Login2Activity login2Activity) {
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != -1335737708) {
                if (hashCode != 1290599891) {
                    if (hashCode == 1686319104 && str.equals("autoLoginFaceBook")) {
                        login2Activity.O();
                    }
                } else if (str.equals("autoLoginGoogle")) {
                    login2Activity.P();
                }
            } else if (str.equals("autoLoginPhone")) {
                login2Activity.e0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f44964o);
        bundle.putString("type", HintConstants.AUTOFILL_HINT_PHONE);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
        R();
        FragmentContainer.a aVar = FragmentContainer.f45006p;
        String i10 = com.startshorts.androidplayer.ui.fragment.a.f45609a.i();
        StringBundle stringBundle = new StringBundle("auth_reason", "1");
        String str = this.f44965p;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        StringBundle stringBundle2 = new StringBundle("auth_reason_phone", str);
        String str3 = this.f44966q;
        if (str3 == null) {
            str3 = "";
        }
        StringBundle stringBundle3 = new StringBundle("auth_reason_area_code", str3);
        String str4 = this.f44967r;
        if (str4 == null) {
            str4 = "";
        }
        StringBundle stringBundle4 = new StringBundle("auth_reason_country_code", str4);
        String str5 = this.f44964o;
        if (str5 != null) {
            str2 = str5;
        }
        this.f44970u.launch(aVar.c(this, i10, stringBundle, stringBundle2, stringBundle3, stringBundle4, new StringBundle("from", str2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(Login2Activity login2Activity, ActivityResult activityResult) {
        if (activityResult.getResultCode() == -1) {
            login2Activity.finish();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_login2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        if (!this.f44963n.getValue().l(this, i10, i11, intent)) {
            super.onActivityResult(i10, i11, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        String str;
        super.onCreate(bundle);
        final String stringExtra = getIntent().getStringExtra("autoLogin");
        if (AccountRepo.f43052a.J0() && TextUtils.isEmpty(stringExtra)) {
            finish();
            return;
        }
        this.f44964o = getIntent().getStringExtra("from");
        this.f44965p = getIntent().getStringExtra("ex_phone");
        this.f44966q = getIntent().getStringExtra("ex_area_code");
        this.f44967r = getIntent().getStringExtra("ex_country_code");
        ed.a.f51339a.b(this, true);
        a0();
        X();
        b0();
        S();
        T();
        U();
        Z();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        if (getIntent().getBooleanExtra("isFromTurboLink", false)) {
            str = "TurboLink";
        } else {
            str = "login_page";
        }
        bundle2.putString("scene", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_windows_show", bundle2, 0L, 4, null);
        if (!TextUtils.isEmpty(stringExtra)) {
            E().getRoot().postDelayed(new Runnable() { // from class: sh.c
                @Override // java.lang.Runnable
                public final void run() {
                    Login2Activity.d0(stringExtra, this);
                }
            }, 500L);
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "LoginActivity";
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        super.v();
        if (this.f44963n.isInitialized()) {
            this.f44963n.getValue().n();
        }
    }
}
