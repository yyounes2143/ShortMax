package com.startshorts.androidplayer.ui.fragment.auth;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.databinding.FragmentEmailAuthBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.fragment.auth.EmailAuthFragment;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment;
import com.startshorts.androidplayer.ui.view.base.BaseEditText;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.auth.EmailAuthViewModel;
import com.startshorts.androidplayer.viewmodel.auth.c;
import com.startshorts.androidplayer.viewmodel.auth.d;
import jk.e0;
import jk.y;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EmailAuthFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEmailAuthFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmailAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,288:1\n15#2,9:289\n58#3,23:298\n93#3,3:321\n58#3,23:324\n93#3,3:347\n*S KotlinDebug\n*F\n+ 1 EmailAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment\n*L\n107#1:289,9\n186#1:298,23\n186#1:321,3\n197#1:324,23\n197#1:347,3\n*E\n"})
/* loaded from: classes7.dex */
public final class EmailAuthFragment extends ToolbarFragment<FragmentEmailAuthBinding> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f45624q = new a(null);
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private hi.b f45627l;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private r f45631p;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final i f45625j = kotlin.c.b(new Function0() { // from class: ni.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            EmailAuthViewModel Y;
            Y = EmailAuthFragment.Y(EmailAuthFragment.this);
            return Y;
        }
    });
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final i f45626k = kotlin.c.b(new Function0() { // from class: ni.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Unit Z;
            Z = EmailAuthFragment.Z(EmailAuthFragment.this);
            return Z;
        }
    });
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private AuthReason f45628m = AuthReason.BIND;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final e f45629n = new e();
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final d f45630o = new d();

    /* compiled from: EmailAuthFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: EmailAuthFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            Context requireContext = EmailAuthFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String string = EmailAuthFragment.this.getString(R$string.policy_private_policy);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(requireContext, string);
        }
    }

    /* compiled from: EmailAuthFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            Context requireContext = EmailAuthFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String string = EmailAuthFragment.this.getString(R$string.policy_user_agreement);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(requireContext, string);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EmailAuthFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45636a;

        f(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45636a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f45636a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45636a.invoke(obj);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 EmailAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment\n*L\n1#1,20:1\n108#2,5:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class g implements Function0<Unit> {
        public g() {
        }

        public final void a() {
            EmailAuthFragment emailAuthFragment = EmailAuthFragment.this;
            Context requireContext = EmailAuthFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            hi.b bVar = new hi.b(requireContext);
            bVar.setCancelable(false);
            bVar.show();
            emailAuthFragment.f45627l = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    private final boolean P() {
        if (i0() >= 60) {
            return true;
        }
        return false;
    }

    private final EmailAuthViewModel Q() {
        return (EmailAuthViewModel) this.f45625j.getValue();
    }

    private final Unit R() {
        this.f45626k.getValue();
        return Unit.f60915a;
    }

    private final void S() {
        View root = ((FragmentEmailAuthBinding) A()).f39495a.getRoot();
        if (root != null) {
            root.setVisibility(4);
        }
    }

    private final void T() {
        hi.b bVar = this.f45627l;
        if (bVar != null) {
            bVar.cancel();
        }
        this.f45627l = null;
    }

    private final void U() {
        BaseEditText baseEditText = ((FragmentEmailAuthBinding) A()).f39497c;
        Intrinsics.checkNotNull(baseEditText);
        baseEditText.addTextChangedListener(new c());
        BaseEditText baseEditText2 = ((FragmentEmailAuthBinding) A()).f39500f;
        Intrinsics.checkNotNull(baseEditText2);
        baseEditText2.addTextChangedListener(new b());
        ((FragmentEmailAuthBinding) A()).f39498d.setOnClickListener(new View.OnClickListener() { // from class: ni.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EmailAuthFragment.V(EmailAuthFragment.this, view);
            }
        });
        ((FragmentEmailAuthBinding) A()).f39496b.setOnClickListener(new View.OnClickListener() { // from class: ni.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EmailAuthFragment.W(EmailAuthFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(EmailAuthFragment emailAuthFragment, View view) {
        view.setEnabled(false);
        EventManager.s0(EventManager.f42463a, "send_email_otp_click", null, 0L, 6, null);
        emailAuthFragment.Q().B(new c.a(String.valueOf(((FragmentEmailAuthBinding) emailAuthFragment.A()).f39497c.getText())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(EmailAuthFragment emailAuthFragment, View view) {
        view.setEnabled(false);
        emailAuthFragment.Q().B(new c.b(String.valueOf(((FragmentEmailAuthBinding) emailAuthFragment.A()).f39497c.getText()), String.valueOf(((FragmentEmailAuthBinding) emailAuthFragment.A()).f39500f.getText())));
    }

    private final void X() {
        Bundle arguments = getArguments();
        String str = (arguments == null || (str = arguments.getString("auth_reason")) == null) ? "2" : "2";
        if (Intrinsics.areEqual(str, "2")) {
            this.f45628m = AuthReason.BIND;
            r("initParams mAuthReason(bind)");
        }
        if (Intrinsics.areEqual(str, "1")) {
            this.f45628m = AuthReason.LOGIN;
            r("initParams mAuthReason(login)");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EmailAuthViewModel Y(EmailAuthFragment emailAuthFragment) {
        return (EmailAuthViewModel) new ViewModelProvider(emailAuthFragment).get(EmailAuthViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z(final EmailAuthFragment emailAuthFragment) {
        emailAuthFragment.Q().A().observe(emailAuthFragment.getViewLifecycleOwner(), new f(new Function1() { // from class: ni.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit a02;
                a02 = EmailAuthFragment.a0(EmailAuthFragment.this, (com.startshorts.androidplayer.viewmodel.auth.d) obj);
                return a02;
            }
        }));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(EmailAuthFragment emailAuthFragment, com.startshorts.androidplayer.viewmodel.auth.d dVar) {
        if (dVar instanceof d.C0651d) {
            emailAuthFragment.r("EmailAuthState.Checking");
            emailAuthFragment.d0();
        } else if (dVar instanceof d.b) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            d.b bVar = (d.b) dVar;
            bundle.putString("errorMessage", bVar.a());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "send_email_otp_failed", bundle, 0L, 4, null);
            emailAuthFragment.T();
            emailAuthFragment.b0(bVar.a());
        } else if (dVar instanceof d.c) {
            EventManager.s0(EventManager.f42463a, "send_email_otp_success", null, 0L, 6, null);
            emailAuthFragment.T();
            emailAuthFragment.e0();
            ((FragmentEmailAuthBinding) emailAuthFragment.A()).f39497c.clearFocus();
            ((FragmentEmailAuthBinding) emailAuthFragment.A()).f39500f.requestFocus();
            emailAuthFragment.S();
        } else if (dVar instanceof d.g) {
            emailAuthFragment.r("EmailAuthState.VerifyingOtp");
            emailAuthFragment.d0();
        } else if (dVar instanceof d.f) {
            EventManager.s0(EventManager.f42463a, "bind_email_success", null, 0L, 6, null);
            emailAuthFragment.T();
            emailAuthFragment.w(R$string.email_auth_fragment_succeed);
            emailAuthFragment.r("onResultSucceed " + dVar + ".authType");
            emailAuthFragment.h();
        } else if (dVar instanceof d.e) {
            EventManager eventManager2 = EventManager.f42463a;
            Bundle bundle2 = new Bundle();
            d.e eVar = (d.e) dVar;
            bundle2.putString("err_msg", eVar.a());
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager2, "bind_email_failed", bundle2, 0L, 4, null);
            emailAuthFragment.T();
            emailAuthFragment.b0(eVar.a());
        } else if (dVar instanceof d.a) {
            emailAuthFragment.r("EmailAuthState.Idle " + dVar);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    private final void b0(String str) {
        if (str == null) {
            m0("", true);
        } else {
            m0(str, false);
        }
    }

    private final void c0() {
        BaseTextView policyTv = ((FragmentEmailAuthBinding) A()).f39499e;
        Intrinsics.checkNotNullExpressionValue(policyTv, "policyTv");
        String string = getString(R$string.login_activity_policy, getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        y.l(policyTv, string, new String[]{getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy)}, ContextCompat.getColor(requireContext(), 17170443), yf.a.f70794a.g(), 0.0f, false, CollectionsKt.t(this.f45629n, this.f45630o), 48, null);
    }

    private final void d0() {
        T();
        FragmentExtKt.b(this, new g(), new h());
    }

    private final void e0() {
        h0();
        long i02 = 60 - i0();
        if (1 <= i02 && i02 < 61) {
            ((FragmentEmailAuthBinding) A()).f39498d.setEnabled(false);
            r("canSendOtp = false seconds(" + i02 + ')');
            this.f45631p = CoroutineUtil.f48072a.d((int) i02, new Function1() { // from class: ni.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit f02;
                    f02 = EmailAuthFragment.f0(EmailAuthFragment.this, ((Integer) obj).intValue());
                    return f02;
                }
            }, new Function0() { // from class: ni.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit g02;
                    g02 = EmailAuthFragment.g0(EmailAuthFragment.this);
                    return g02;
                }
            });
            return;
        }
        j0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f0(EmailAuthFragment emailAuthFragment, int i10) {
        ((FragmentEmailAuthBinding) emailAuthFragment.A()).f39498d.setText(emailAuthFragment.getString(R$string.phone_auth_fragment_resend, String.valueOf(i10)));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g0(EmailAuthFragment emailAuthFragment) {
        emailAuthFragment.j0();
        return Unit.f60915a;
    }

    private final void h0() {
        r rVar = this.f45631p;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
    }

    private final long i0() {
        return (DeviceUtil.f48146a.K() - ud.b.f68412a.O()) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0() {
        boolean z10;
        boolean k02 = k0(this);
        boolean l02 = l0(this);
        boolean z11 = false;
        if (k02 && l02) {
            z10 = true;
        } else {
            z10 = false;
        }
        ((FragmentEmailAuthBinding) A()).f39496b.setEnabled(z10);
        boolean isEnabled = ((FragmentEmailAuthBinding) A()).f39498d.isEnabled();
        if (P() && k02) {
            z11 = true;
        }
        ((FragmentEmailAuthBinding) A()).f39498d.setEnabled(z11);
        if (z10) {
            S();
        }
        if (isEnabled != z11 && z11) {
            ((FragmentEmailAuthBinding) A()).f39498d.setText(getString(R$string.phone_auth_fragment_get));
        }
    }

    private static final boolean k0(EmailAuthFragment emailAuthFragment) {
        return StringsKt.b0(String.valueOf(((FragmentEmailAuthBinding) emailAuthFragment.A()).f39497c.getText()), "@", false, 2, null);
    }

    private static final boolean l0(EmailAuthFragment emailAuthFragment) {
        return !StringsKt.t0(String.valueOf(((FragmentEmailAuthBinding) emailAuthFragment.A()).f39500f.getText()));
    }

    private final void m0(String str, boolean z10) {
        BaseTextView baseTextView;
        if (z10) {
            str = getString(R$string.email_auth_fragment_check_content);
        }
        ViewStubProxy viewStubProxy = ((FragmentEmailAuthBinding) A()).f39495a;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root instanceof BaseTextView) {
            baseTextView = (BaseTextView) root;
        } else {
            baseTextView = null;
        }
        if (baseTextView != null) {
            baseTextView.setText(str);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_email_auth;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        X();
        U();
        c0();
        e0();
        R();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "EmailAuthFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        Q().w();
        h0();
        ud.b.f68412a.Y2(0L);
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class h implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* compiled from: TextView.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 EmailAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n198#2,2:98\n71#3:100\n77#4:101\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b implements TextWatcher {
        public b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@Nullable Editable editable) {
            EmailAuthFragment.this.j0();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    /* compiled from: TextView.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 EmailAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n187#2,5:98\n71#3:103\n77#4:104\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements TextWatcher {
        public c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@Nullable Editable editable) {
            EmailAuthFragment.this.j0();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        }
    }
}
