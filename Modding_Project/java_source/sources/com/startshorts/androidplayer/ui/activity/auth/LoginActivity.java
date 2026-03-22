package com.startshorts.androidplayer.ui.activity.auth;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.autofill.HintConstants;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.auth.HuaWeiLoginView;
import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.databinding.ActivityLoginBinding;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.auth.FirebaseAuthManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.ui.activity.auth.LoginActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
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
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoginActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLoginActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginActivity.kt\ncom/startshorts/androidplayer/ui/activity/auth/LoginActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,490:1\n254#2:491\n254#2:492\n*S KotlinDebug\n*F\n+ 1 LoginActivity.kt\ncom/startshorts/androidplayer/ui/activity/auth/LoginActivity\n*L\n377#1:491\n425#1:492\n*E\n"})
/* loaded from: classes7.dex */
public final class LoginActivity extends BaseVDBActivity<ActivityLoginBinding> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f44979t = new a(null);
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final h f44980l = new h();
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final g f44981m = new g();
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final i<FirebaseAuthManager> f44982n = kotlin.c.b(new Function0() { // from class: sh.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            FirebaseAuthManager e02;
            e02 = LoginActivity.e0();
            return e02;
        }
    });
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private String f44983o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private String f44984p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private String f44985q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f44986r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f44987s;

    /* compiled from: LoginActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLoginActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginActivity.kt\ncom/startshorts/androidplayer/ui/activity/auth/LoginActivity$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,490:1\n1#2:491\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context, @NotNull String from) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(from, "from");
            Intent intent = new Intent(context, Login2Activity.class);
            intent.putExtra("from", from);
            context.startActivity(intent);
        }

        private a() {
        }
    }

    /* compiled from: LoginActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements ke.b {
        b() {
        }

        @Override // ke.b
        public void a(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            LoginActivity.this.finish();
        }

        @Override // ke.b
        public void b(AuthType authType, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            LoginActivity.this.y(str);
        }
    }

    /* compiled from: LoginActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LoginActivity.this.R();
        }
    }

    /* compiled from: LoginActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LoginActivity.this.S();
        }
    }

    /* compiled from: LoginActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LoginActivity.this.finish();
        }
    }

    /* compiled from: LoginActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends yd.d {
        f() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LoginActivity.this.g0();
        }
    }

    /* compiled from: LoginActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends yd.d {
        g() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            LoginActivity loginActivity = LoginActivity.this;
            String string = loginActivity.getString(R$string.policy_private_policy);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(loginActivity, string);
        }
    }

    /* compiled from: LoginActivity.kt */
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
            LoginActivity loginActivity = LoginActivity.this;
            String string = loginActivity.getString(R$string.policy_user_agreement);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(loginActivity, string);
        }
    }

    public LoginActivity() {
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: sh.f
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                LoginActivity.h0(LoginActivity.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        this.f44987s = registerForActivityResult;
    }

    private final void O() {
        if (!ae.a.f627a.g()) {
            if (CampaignRepo.f43678a.x()) {
                Q();
            } else {
                P();
            }
        }
    }

    private final void P() {
        ConstraintLayout.LayoutParams layoutParams;
        ConstraintLayout.LayoutParams layoutParams2;
        ConstraintLayout.LayoutParams layoutParams3;
        ConstraintLayout.LayoutParams layoutParams4;
        ConstraintLayout.LayoutParams layoutParams5;
        ConstraintLayout.LayoutParams layoutParams6;
        View view = E().f38342b;
        ViewGroup.LayoutParams layoutParams7 = view.getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams8 = null;
        if (layoutParams7 instanceof ConstraintLayout.LayoutParams) {
            layoutParams = (ConstraintLayout.LayoutParams) layoutParams7;
        } else {
            layoutParams = null;
        }
        if (layoutParams != null) {
            LinearLayout layoutLineOrLine = E().f38350j;
            Intrinsics.checkNotNullExpressionValue(layoutLineOrLine, "layoutLineOrLine");
            if (layoutLineOrLine.getVisibility() == 0) {
                layoutParams.topToBottom = E().f38350j.getId();
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = jk.g.a(44.0f);
            } else {
                layoutParams.topToBottom = E().f38354n.getId();
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = jk.g.a(68.0f);
            }
        } else {
            layoutParams = null;
        }
        view.setLayoutParams(layoutParams);
        View view2 = E().f38345e;
        ViewGroup.LayoutParams layoutParams9 = view2.getLayoutParams();
        if (layoutParams9 instanceof ConstraintLayout.LayoutParams) {
            layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams9;
        } else {
            layoutParams2 = null;
        }
        if (layoutParams2 != null) {
            layoutParams2.topToBottom = E().f38342b.getId();
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = jk.g.a(20.0f);
        } else {
            layoutParams2 = null;
        }
        view2.setLayoutParams(layoutParams2);
        BaseTextView baseTextView = E().f38341a;
        ViewGroup.LayoutParams layoutParams10 = baseTextView.getLayoutParams();
        if (layoutParams10 instanceof ConstraintLayout.LayoutParams) {
            layoutParams3 = (ConstraintLayout.LayoutParams) layoutParams10;
        } else {
            layoutParams3 = null;
        }
        if (layoutParams3 != null) {
            layoutParams3.topToBottom = E().f38345e.getId();
            ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = jk.g.a(90.0f);
        } else {
            layoutParams3 = null;
        }
        baseTextView.setLayoutParams(layoutParams3);
        ViewStub viewStub = E().f38352l.getViewStub();
        if (viewStub != null) {
            ViewGroup.LayoutParams layoutParams11 = viewStub.getLayoutParams();
            if (layoutParams11 instanceof ConstraintLayout.LayoutParams) {
                layoutParams6 = (ConstraintLayout.LayoutParams) layoutParams11;
            } else {
                layoutParams6 = null;
            }
            if (layoutParams6 != null) {
                layoutParams6.topToTop = E().f38342b.getId();
                layoutParams6.bottomToBottom = E().f38342b.getId();
                layoutParams6.endToEnd = E().f38342b.getId();
            } else {
                layoutParams6 = null;
            }
            viewStub.setLayoutParams(layoutParams6);
        }
        ViewStub viewStub2 = E().f38353m.getViewStub();
        if (viewStub2 != null) {
            ViewGroup.LayoutParams layoutParams12 = viewStub2.getLayoutParams();
            if (layoutParams12 instanceof ConstraintLayout.LayoutParams) {
                layoutParams5 = (ConstraintLayout.LayoutParams) layoutParams12;
            } else {
                layoutParams5 = null;
            }
            if (layoutParams5 != null) {
                layoutParams5.bottomToTop = E().f38342b.getId();
                layoutParams5.endToEnd = E().f38342b.getId();
            } else {
                layoutParams5 = null;
            }
            viewStub2.setLayoutParams(layoutParams5);
        }
        ViewStub viewStub3 = E().f38351k.getViewStub();
        if (viewStub3 != null) {
            ViewGroup.LayoutParams layoutParams13 = viewStub3.getLayoutParams();
            if (layoutParams13 instanceof ConstraintLayout.LayoutParams) {
                layoutParams4 = (ConstraintLayout.LayoutParams) layoutParams13;
            } else {
                layoutParams4 = null;
            }
            if (layoutParams4 != null) {
                layoutParams4.bottomToTop = E().f38342b.getId();
                layoutParams8 = layoutParams4;
            }
            viewStub3.setLayoutParams(layoutParams8);
        }
    }

    private final void Q() {
        ConstraintLayout.LayoutParams layoutParams;
        ConstraintLayout.LayoutParams layoutParams2;
        ConstraintLayout.LayoutParams layoutParams3;
        ConstraintLayout.LayoutParams layoutParams4;
        ConstraintLayout.LayoutParams layoutParams5;
        ConstraintLayout.LayoutParams layoutParams6;
        View view = E().f38345e;
        ViewGroup.LayoutParams layoutParams7 = view.getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams8 = null;
        if (layoutParams7 instanceof ConstraintLayout.LayoutParams) {
            layoutParams = (ConstraintLayout.LayoutParams) layoutParams7;
        } else {
            layoutParams = null;
        }
        if (layoutParams != null) {
            LinearLayout layoutLineOrLine = E().f38350j;
            Intrinsics.checkNotNullExpressionValue(layoutLineOrLine, "layoutLineOrLine");
            if (layoutLineOrLine.getVisibility() == 0) {
                layoutParams.topToBottom = E().f38350j.getId();
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = jk.g.a(44.0f);
            } else {
                layoutParams.topToBottom = E().f38354n.getId();
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = jk.g.a(68.0f);
            }
        } else {
            layoutParams = null;
        }
        view.setLayoutParams(layoutParams);
        View view2 = E().f38342b;
        ViewGroup.LayoutParams layoutParams9 = view2.getLayoutParams();
        if (layoutParams9 instanceof ConstraintLayout.LayoutParams) {
            layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams9;
        } else {
            layoutParams2 = null;
        }
        if (layoutParams2 != null) {
            layoutParams2.topToBottom = E().f38345e.getId();
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = jk.g.a(20.0f);
        } else {
            layoutParams2 = null;
        }
        view2.setLayoutParams(layoutParams2);
        BaseTextView baseTextView = E().f38341a;
        ViewGroup.LayoutParams layoutParams10 = baseTextView.getLayoutParams();
        if (layoutParams10 instanceof ConstraintLayout.LayoutParams) {
            layoutParams3 = (ConstraintLayout.LayoutParams) layoutParams10;
        } else {
            layoutParams3 = null;
        }
        if (layoutParams3 != null) {
            layoutParams3.topToBottom = E().f38342b.getId();
            ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = jk.g.a(90.0f);
        } else {
            layoutParams3 = null;
        }
        baseTextView.setLayoutParams(layoutParams3);
        ViewStub viewStub = E().f38352l.getViewStub();
        if (viewStub != null) {
            ViewGroup.LayoutParams layoutParams11 = viewStub.getLayoutParams();
            if (layoutParams11 instanceof ConstraintLayout.LayoutParams) {
                layoutParams6 = (ConstraintLayout.LayoutParams) layoutParams11;
            } else {
                layoutParams6 = null;
            }
            if (layoutParams6 != null) {
                layoutParams6.topToTop = E().f38345e.getId();
                layoutParams6.bottomToBottom = E().f38345e.getId();
                layoutParams6.endToEnd = E().f38345e.getId();
            } else {
                layoutParams6 = null;
            }
            viewStub.setLayoutParams(layoutParams6);
        }
        ViewStub viewStub2 = E().f38353m.getViewStub();
        if (viewStub2 != null) {
            ViewGroup.LayoutParams layoutParams12 = viewStub2.getLayoutParams();
            if (layoutParams12 instanceof ConstraintLayout.LayoutParams) {
                layoutParams5 = (ConstraintLayout.LayoutParams) layoutParams12;
            } else {
                layoutParams5 = null;
            }
            if (layoutParams5 != null) {
                layoutParams5.bottomToTop = E().f38345e.getId();
                layoutParams5.endToEnd = E().f38345e.getId();
            } else {
                layoutParams5 = null;
            }
            viewStub2.setLayoutParams(layoutParams5);
        }
        ViewStub viewStub3 = E().f38351k.getViewStub();
        if (viewStub3 != null) {
            ViewGroup.LayoutParams layoutParams13 = viewStub3.getLayoutParams();
            if (layoutParams13 instanceof ConstraintLayout.LayoutParams) {
                layoutParams4 = (ConstraintLayout.LayoutParams) layoutParams13;
            } else {
                layoutParams4 = null;
            }
            if (layoutParams4 != null) {
                layoutParams4.bottomToTop = E().f38345e.getId();
                layoutParams8 = layoutParams4;
            }
            viewStub3.setLayoutParams(layoutParams8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f44983o);
        bundle.putString("type", "facebook");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
        U();
        this.f44982n.getValue().a(AuthReason.LOGIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f44983o);
        bundle.putString("type", "google");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
        U();
        this.f44982n.getValue().b(AuthReason.LOGIN);
    }

    private final void T() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f44983o);
        bundle.putString("type", "huawei");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
        U();
        this.f44982n.getValue().c(AuthReason.LOGIN);
    }

    private final void U() {
        if (this.f44982n.isInitialized()) {
            return;
        }
        s("initAuthManager");
        FirebaseAuthManager value = this.f44982n.getValue();
        value.p(new WeakReference<>(this));
        value.F(this.f44983o);
        value.s(new b());
    }

    private final void V() {
        if (!ae.a.f627a.g()) {
            b0();
        } else {
            Y();
        }
    }

    private final void W() {
        E().f38344d.setText(getString(R$string.login_activity_login_with, "Facebook"));
        E().f38342b.setOnClickListener(new c());
    }

    private final void X() {
        if (!ae.a.f627a.g()) {
            E().f38345e.setVisibility(0);
            E().f38346f.setVisibility(0);
            E().f38347g.setVisibility(0);
            E().f38347g.setText(getString(R$string.login_activity_login_with, "Google"));
            E().f38345e.setOnClickListener(new d());
            return;
        }
        E().f38345e.setVisibility(8);
        E().f38346f.setVisibility(8);
        E().f38347g.setVisibility(8);
    }

    private final void Y() {
        HuaWeiLoginView huaWeiLoginView;
        ConstraintLayout.LayoutParams layoutParams;
        E().f38357q.setVisibility(8);
        E().f38356p.setVisibility(8);
        E().f38350j.setVisibility(0);
        ViewStubProxy viewStubProxy = E().f38348h;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        ConstraintLayout.LayoutParams layoutParams2 = null;
        if (root instanceof HuaWeiLoginView) {
            huaWeiLoginView = (HuaWeiLoginView) root;
        } else {
            huaWeiLoginView = null;
        }
        if (huaWeiLoginView != null) {
            LinearLayout linearLayout = E().f38350j;
            ViewGroup.LayoutParams layoutParams3 = linearLayout.getLayoutParams();
            if (layoutParams3 instanceof ConstraintLayout.LayoutParams) {
                layoutParams = (ConstraintLayout.LayoutParams) layoutParams3;
            } else {
                layoutParams = null;
            }
            if (layoutParams != null) {
                layoutParams.topToBottom = E().f38348h.getRoot().getId();
                layoutParams2 = layoutParams;
            }
            linearLayout.setLayoutParams(layoutParams2);
            huaWeiLoginView.setOnAuthButtonClickListener(new View.OnClickListener() { // from class: sh.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LoginActivity.Z(LoginActivity.this, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(LoginActivity loginActivity, View view) {
        loginActivity.T();
    }

    private final void a0() {
        E().f38355o.setOnClickListener(new e());
    }

    private final void b0() {
        int i10;
        int i11;
        ConstraintLayout.LayoutParams layoutParams;
        boolean L0 = AccountRepo.f43052a.L0();
        BaseTextView baseTextView = E().f38357q;
        int i12 = 8;
        if (L0) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        baseTextView.setVisibility(i10);
        View view = E().f38356p;
        if (L0) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        view.setVisibility(i11);
        LinearLayout linearLayout = E().f38350j;
        if (L0) {
            i12 = 0;
        }
        linearLayout.setVisibility(i12);
        if (L0) {
            LinearLayout linearLayout2 = E().f38350j;
            ViewGroup.LayoutParams layoutParams2 = linearLayout2.getLayoutParams();
            ConstraintLayout.LayoutParams layoutParams3 = null;
            if (layoutParams2 instanceof ConstraintLayout.LayoutParams) {
                layoutParams = (ConstraintLayout.LayoutParams) layoutParams2;
            } else {
                layoutParams = null;
            }
            if (layoutParams != null) {
                layoutParams.topToBottom = E().f38356p.getId();
                layoutParams3 = layoutParams;
            }
            linearLayout2.setLayoutParams(layoutParams3);
        }
        E().f38356p.setOnClickListener(new f());
    }

    private final void c0() {
        BaseTextView policyTv = E().f38358r;
        Intrinsics.checkNotNullExpressionValue(policyTv, "policyTv");
        String string = getString(R$string.login_activity_policy, getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        y.l(policyTv, string, new String[]{getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy)}, ContextCompat.getColor(this, 17170443), yf.a.f70794a.g(), 0.0f, false, CollectionsKt.t(this.f44980l, this.f44981m), 48, null);
    }

    private final void d0() {
        View toolbarView = E().f38359s;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseAuthManager e0() {
        return new FirebaseAuthManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(String str, LoginActivity loginActivity) {
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != -1335737708) {
                if (hashCode != 1290599891) {
                    if (hashCode == 1686319104 && str.equals("autoLoginFaceBook")) {
                        loginActivity.R();
                    }
                } else if (str.equals("autoLoginGoogle")) {
                    loginActivity.S();
                }
            } else if (str.equals("autoLoginPhone")) {
                loginActivity.g0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g0() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f44983o);
        bundle.putString("type", HintConstants.AUTOFILL_HINT_PHONE);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
        U();
        FragmentContainer.a aVar = FragmentContainer.f45006p;
        String i10 = com.startshorts.androidplayer.ui.fragment.a.f45609a.i();
        StringBundle stringBundle = new StringBundle("auth_reason", "1");
        String str = this.f44984p;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        StringBundle stringBundle2 = new StringBundle("auth_reason_phone", str);
        String str3 = this.f44985q;
        if (str3 == null) {
            str3 = "";
        }
        StringBundle stringBundle3 = new StringBundle("auth_reason_area_code", str3);
        String str4 = this.f44986r;
        if (str4 != null) {
            str2 = str4;
        }
        this.f44987s.launch(aVar.c(this, i10, stringBundle, stringBundle2, stringBundle3, new StringBundle("auth_reason_country_code", str2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(LoginActivity loginActivity, ActivityResult activityResult) {
        if (activityResult.getResultCode() == -1) {
            loginActivity.finish();
        }
    }

    private final void i0() {
        ViewStubProxy loginRewardCoinViewstub = E().f38351k;
        Intrinsics.checkNotNullExpressionValue(loginRewardCoinViewstub, "loginRewardCoinViewstub");
        e0.h(loginRewardCoinViewstub);
    }

    private final void j0() {
        ViewStubProxy viewStubProxy = E().f38352l;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.g(viewStubProxy);
    }

    private final void k0() {
        BaseTextView baseTextView;
        String h10;
        ViewStubProxy viewStubProxy = E().f38353m;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.h(viewStubProxy);
        boolean x10 = CampaignRepo.f43678a.x();
        View root = viewStubProxy.getRoot();
        if (root instanceof BaseTextView) {
            baseTextView = (BaseTextView) root;
        } else {
            baseTextView = null;
        }
        if (baseTextView != null) {
            int i10 = R$string.profile_fragment_reward_tip2;
            if (x10) {
                h10 = AccountManager.f41533a.g();
            } else {
                h10 = AccountManager.f41533a.h();
            }
            baseTextView.setText(getString(i10, h10));
        }
    }

    private final void l0() {
        j0();
        i0();
        k0();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_login;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        if (!this.f44982n.getValue().l(this, i10, i11, intent)) {
            super.onActivityResult(i10, i11, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        final String stringExtra = getIntent().getStringExtra("autoLogin");
        if (AccountRepo.f43052a.J0() && TextUtils.isEmpty(stringExtra)) {
            finish();
            return;
        }
        this.f44983o = getIntent().getStringExtra("from");
        this.f44984p = getIntent().getStringExtra("ex_phone");
        this.f44985q = getIntent().getStringExtra("ex_area_code");
        this.f44986r = getIntent().getStringExtra("ex_country_code");
        ed.a.f51339a.b(this, true);
        d0();
        a0();
        V();
        W();
        X();
        c0();
        O();
        l0();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        bundle2.putString("scene", "login_page");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_windows_show", bundle2, 0L, 4, null);
        if (!TextUtils.isEmpty(stringExtra)) {
            E().getRoot().postDelayed(new Runnable() { // from class: sh.g
                @Override // java.lang.Runnable
                public final void run() {
                    LoginActivity.f0(stringExtra, this);
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
        if (this.f44982n.isInitialized()) {
            this.f44982n.getValue().n();
        }
    }
}
