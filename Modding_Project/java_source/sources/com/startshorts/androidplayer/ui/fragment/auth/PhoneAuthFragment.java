package com.startshorts.androidplayer.ui.fragment.auth;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import androidx.autofill.HintConstants;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.bean.region.Region;
import com.startshorts.androidplayer.databinding.FragmentPhoneAuthBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.region.RegionSelectActivity;
import com.startshorts.androidplayer.ui.fragment.auth.PhoneAuthFragment;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment;
import com.startshorts.androidplayer.ui.view.base.BaseEditText;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel;
import com.startshorts.androidplayer.viewmodel.auth.e;
import com.startshorts.androidplayer.viewmodel.auth.f;
import fk.t;
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
/* compiled from: PhoneAuthFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPhoneAuthFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,495:1\n58#2,23:496\n93#2,3:519\n58#2,23:522\n93#2,3:545\n15#3,9:548\n*S KotlinDebug\n*F\n+ 1 PhoneAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment\n*L\n158#1:496,23\n158#1:519,3\n177#1:522,23\n177#1:545,3\n386#1:548,9\n*E\n"})
/* loaded from: classes7.dex */
public final class PhoneAuthFragment extends ToolbarFragment<FragmentPhoneAuthBinding> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f45638p = new a(null);
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private String f45639j = "";
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final e f45640k = new e();
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final d f45641l = new d();
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final i f45642m = kotlin.c.b(new Function0() { // from class: ni.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PhoneAuthViewModel c02;
            c02 = PhoneAuthFragment.c0(PhoneAuthFragment.this);
            return c02;
        }
    });
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private hi.b f45643n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private r f45644o;

    /* compiled from: PhoneAuthFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PhoneAuthFragment.kt */
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
            Context requireContext = PhoneAuthFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String string = PhoneAuthFragment.this.getString(R$string.policy_private_policy);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(requireContext, string);
        }
    }

    /* compiled from: PhoneAuthFragment.kt */
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
            Context requireContext = PhoneAuthFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String string = PhoneAuthFragment.this.getString(R$string.policy_user_agreement);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(requireContext, string);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhoneAuthFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45649a;

        f(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45649a = function;
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
            return this.f45649a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45649a.invoke(obj);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 PhoneAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment\n*L\n1#1,20:1\n387#2,5:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class g implements Function0<Unit> {
        public g() {
        }

        public final void a() {
            PhoneAuthFragment phoneAuthFragment = PhoneAuthFragment.this;
            Context requireContext = PhoneAuthFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            hi.b bVar = new hi.b(requireContext);
            bVar.setCancelable(false);
            bVar.show();
            phoneAuthFragment.f45643n = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    private final void Q() {
        if (((FragmentPhoneAuthBinding) A()).f39568g.getHint().length() >= 25) {
            ((FragmentPhoneAuthBinding) A()).f39568g.setTextSize(13.0f);
            ((FragmentPhoneAuthBinding) A()).f39571j.setTextSize(13.0f);
            ((FragmentPhoneAuthBinding) A()).f39566e.setTextSize(13.0f);
        }
    }

    private final boolean R() {
        if (l0() >= 60) {
            return true;
        }
        return false;
    }

    private final PhoneAuthViewModel S() {
        return (PhoneAuthViewModel) this.f45642m.getValue();
    }

    private final void T() {
        View root = ((FragmentPhoneAuthBinding) A()).f39562a.getRoot();
        if (root != null) {
            root.setVisibility(4);
        }
    }

    private final void U() {
        hi.b bVar = this.f45643n;
        if (bVar != null) {
            bVar.cancel();
        }
        this.f45643n = null;
    }

    private final void V() {
        String string;
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string2 = arguments.getString("auth_reason");
            if (string2 == null) {
                string2 = "2";
            }
            if (Intrinsics.areEqual(string2, "2")) {
                S().V(AuthReason.BIND);
                r("initParams mAuthReason(bind)");
            }
            if (Intrinsics.areEqual(string2, "1")) {
                S().V(AuthReason.LOGIN);
                r("initParams mAuthReason(login)");
            }
            Bundle arguments2 = getArguments();
            String str = "";
            String str2 = (arguments2 == null || (str2 = arguments2.getString("auth_reason_phone")) == null) ? "" : "";
            if (!TextUtils.isEmpty(str2)) {
                ((FragmentPhoneAuthBinding) A()).f39568g.setText(str2);
            }
            Bundle arguments3 = getArguments();
            String str3 = (arguments3 == null || (str3 = arguments3.getString("auth_reason_area_code")) == null) ? "" : "";
            Bundle arguments4 = getArguments();
            String str4 = (arguments4 == null || (str4 = arguments4.getString("auth_reason_country_code")) == null) ? "" : "";
            Bundle arguments5 = getArguments();
            if (arguments5 != null && (string = arguments5.getString("from")) != null) {
                str = string;
            }
            this.f45639j = str;
            if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                Region region = new Region();
                region.setAreaCode(str3);
                region.setAreaCode(str4);
                ((FragmentPhoneAuthBinding) A()).f39567f.setTag(region);
            }
        }
    }

    private final void W() {
        BaseEditText baseEditText = ((FragmentPhoneAuthBinding) A()).f39568g;
        Intrinsics.checkNotNull(baseEditText);
        baseEditText.addTextChangedListener(new b());
        ((FragmentPhoneAuthBinding) A()).f39564c.setOnClickListener(new View.OnClickListener() { // from class: ni.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneAuthFragment.X(PhoneAuthFragment.this, view);
            }
        });
        BaseEditText baseEditText2 = ((FragmentPhoneAuthBinding) A()).f39571j;
        Intrinsics.checkNotNull(baseEditText2);
        baseEditText2.addTextChangedListener(new c());
        ((FragmentPhoneAuthBinding) A()).f39566e.setOnClickListener(new View.OnClickListener() { // from class: ni.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneAuthFragment.Y(PhoneAuthFragment.this, view);
            }
        });
        ((FragmentPhoneAuthBinding) A()).f39563b.setOnClickListener(new View.OnClickListener() { // from class: ni.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneAuthFragment.Z(PhoneAuthFragment.this, view);
            }
        });
        d0(new Function0() { // from class: ni.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit a02;
                a02 = PhoneAuthFragment.a0(PhoneAuthFragment.this);
                return a02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(PhoneAuthFragment phoneAuthFragment, View view) {
        Region region;
        String countryName;
        Object tag = ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39567f.getTag();
        if (tag instanceof Region) {
            region = (Region) tag;
        } else {
            region = null;
        }
        String str = "";
        String str2 = (region == null || (str2 = region.getAreaCode()) == null) ? "" : "";
        if (region != null && (countryName = region.getCountryName()) != null) {
            str = countryName;
        }
        RegionSelectActivity.a aVar = RegionSelectActivity.f45468v;
        FragmentActivity requireActivity = phoneAuthFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        aVar.c(requireActivity, str2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(PhoneAuthFragment phoneAuthFragment, View view) {
        Region region;
        Object tag = ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39567f.getTag();
        if (tag instanceof Region) {
            region = (Region) tag;
        } else {
            region = null;
        }
        String str = (region == null || (str = region.getAreaCode()) == null) ? "" : "";
        String valueOf = String.valueOf(((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39568g.getText());
        EventManager.s0(EventManager.f42463a, "send_phone_otp_click", null, 0L, 6, null);
        phoneAuthFragment.S().S(new e.b(str, valueOf));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(PhoneAuthFragment phoneAuthFragment, View view) {
        Region region;
        Object tag = ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39567f.getTag();
        if (tag instanceof Region) {
            region = (Region) tag;
        } else {
            region = null;
        }
        String str = (region == null || (str = region.getAreaCode()) == null) ? "" : "";
        view.setEnabled(false);
        phoneAuthFragment.S().S(new e.c(String.valueOf(((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39571j.getText()), str, String.valueOf(((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39568g.getText())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(PhoneAuthFragment phoneAuthFragment) {
        b0(phoneAuthFragment);
        return Unit.f60915a;
    }

    private static final void b0(PhoneAuthFragment phoneAuthFragment) {
        phoneAuthFragment.r("onSendStart");
        ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39566e.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PhoneAuthViewModel c0(PhoneAuthFragment phoneAuthFragment) {
        return (PhoneAuthViewModel) new ViewModelProvider(phoneAuthFragment).get(PhoneAuthViewModel.class);
    }

    private final void d0(final Function0<Unit> function0) {
        S().L().observe(getViewLifecycleOwner(), new f(new Function1() { // from class: ni.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit e02;
                e02 = PhoneAuthFragment.e0(PhoneAuthFragment.this, function0, (com.startshorts.androidplayer.viewmodel.auth.f) obj);
                return e02;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e0(PhoneAuthFragment phoneAuthFragment, Function0 function0, com.startshorts.androidplayer.viewmodel.auth.f fVar) {
        String str;
        String str2;
        if (fVar instanceof f.g) {
            phoneAuthFragment.r("PhoneAuthState.Checking");
            phoneAuthFragment.g0();
            function0.invoke();
        } else {
            String str3 = null;
            boolean z10 = false;
            String str4 = "firebase";
            if (fVar instanceof f.e) {
                phoneAuthFragment.U();
                f.e eVar = (f.e) fVar;
                if (eVar.b()) {
                    ud.b.f68412a.Z2(DeviceUtil.f48146a.K());
                    phoneAuthFragment.h0();
                } else {
                    ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39566e.setEnabled(true);
                }
                phoneAuthFragment.r("PhoneAuthState.SendFailed " + eVar.c());
                String c10 = eVar.c();
                if (c10 == null) {
                    c10 = "";
                }
                if (StringsKt.b0(c10, "network error", false, 2, null)) {
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("err_msg", "network error");
                    if (eVar.a() == null) {
                        str4 = "server";
                    }
                    bundle.putString("type", str4);
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "send_phone_otp_failed", bundle, 0L, 4, null);
                    phoneAuthFragment.x(phoneAuthFragment.getString(R$string.common_network_error));
                } else {
                    String c11 = eVar.c();
                    if (c11 != null && !StringsKt.t0(c11)) {
                        EventManager eventManager2 = EventManager.f42463a;
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("err_msg", eVar.c());
                        if (eVar.a() == null) {
                            str4 = "server";
                        }
                        bundle2.putString("type", str4);
                        Unit unit2 = Unit.f60915a;
                        EventManager.s0(eventManager2, "send_phone_otp_failed", bundle2, 0L, 4, null);
                        phoneAuthFragment.p0(eVar.c(), false);
                    } else {
                        phoneAuthFragment.T();
                    }
                }
            } else if (fVar instanceof f.C0652f) {
                phoneAuthFragment.U();
                phoneAuthFragment.r("PhoneAuthState.SendSucceed " + fVar);
                EventManager eventManager3 = EventManager.f42463a;
                Bundle bundle3 = new Bundle();
                if (((f.C0652f) fVar).a() == null) {
                    str4 = "server";
                }
                bundle3.putString("type", str4);
                Unit unit3 = Unit.f60915a;
                EventManager.s0(eventManager3, "send_phone_otp_success", bundle3, 0L, 4, null);
                ud.b.f68412a.Z2(DeviceUtil.f48146a.K());
                phoneAuthFragment.h0();
                phoneAuthFragment.T();
                ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39568g.clearFocus();
                ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39571j.requestFocus();
            } else if (fVar instanceof f.j) {
                phoneAuthFragment.r("PhoneAuthState.VerifyingOtp");
                phoneAuthFragment.g0();
            } else if (fVar instanceof f.i) {
                phoneAuthFragment.U();
                f.i iVar = (f.i) fVar;
                AuthReason a10 = iVar.a();
                AuthReason authReason = AuthReason.LOGIN;
                if (a10 == authReason) {
                    str = "login_phone_success";
                } else {
                    str = "bind_phone_success";
                }
                String str5 = str;
                EventManager eventManager4 = EventManager.f42463a;
                Bundle bundle4 = new Bundle();
                if (iVar.b() != null) {
                    str2 = "firebase";
                } else {
                    str2 = "server";
                }
                bundle4.putString("type", str2);
                Unit unit4 = Unit.f60915a;
                EventManager.s0(eventManager4, str5, bundle4, 0L, 4, null);
                phoneAuthFragment.r("onResultSucceed " + iVar.b());
                if (iVar.a() == authReason) {
                    Bundle bundle5 = new Bundle();
                    bundle5.putString("type", HintConstants.AUTOFILL_HINT_PHONE);
                    bundle5.putString("scene", phoneAuthFragment.f45639j);
                    bundle5.putString("is_success", "1");
                    EventManager.s0(eventManager4, "account_login_result", bundle5, 0L, 4, null);
                    phoneAuthFragment.w(R$string.phone_auth_fragment_succeed);
                } else {
                    Bundle bundle6 = new Bundle();
                    if (iVar.b() == null) {
                        str4 = "server";
                    }
                    bundle6.putString("type", str4);
                    EventManager.s0(eventManager4, "bind_phone_success", bundle6, 0L, 4, null);
                    phoneAuthFragment.w(R$string.phone_auth_fragment_succeed);
                }
                phoneAuthFragment.r("onResultSucceed " + iVar.b() + ' ' + iVar.a());
                FragmentActivity activity = phoneAuthFragment.getActivity();
                if (activity != null) {
                    activity.setResult(-1, new Intent());
                }
                phoneAuthFragment.h();
            } else if (fVar instanceof f.h) {
                phoneAuthFragment.U();
                ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39563b.setEnabled(true);
                f.h hVar = (f.h) fVar;
                String c12 = hVar.c();
                String c13 = hVar.c();
                if (c13 == null || StringsKt.t0(c13)) {
                    z10 = true;
                }
                phoneAuthFragment.p0(c12, z10);
                if (hVar.a() == AuthReason.LOGIN) {
                    EventManager eventManager5 = EventManager.f42463a;
                    Bundle bundle7 = new Bundle();
                    bundle7.putString("type", HintConstants.AUTOFILL_HINT_PHONE);
                    bundle7.putString("scene", phoneAuthFragment.f45639j);
                    bundle7.putString("is_success", MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    bundle7.putString("reason", hVar.c());
                    Unit unit5 = Unit.f60915a;
                    EventManager.s0(eventManager5, "account_login_result", bundle7, 0L, 4, null);
                } else {
                    EventManager eventManager6 = EventManager.f42463a;
                    Bundle bundle8 = new Bundle();
                    bundle8.putString("errorMessage", hVar.c());
                    if (hVar.b() == null) {
                        str4 = "server";
                    }
                    bundle8.putString("type", str4);
                    Unit unit6 = Unit.f60915a;
                    EventManager.s0(eventManager6, "bind_phone_failed", bundle8, 0L, 4, null);
                }
            } else if (fVar instanceof f.b) {
                phoneAuthFragment.r("PhoneAuthState.Idle " + fVar);
            } else if (fVar instanceof f.a) {
                phoneAuthFragment.U();
                ud.b.f68412a.Z2(DeviceUtil.f48146a.K());
                phoneAuthFragment.h0();
            } else if (fVar instanceof f.c) {
                f.c cVar = (f.c) fVar;
                Region a11 = cVar.a();
                if (a11 != null) {
                    str3 = a11.getAreaCode();
                }
                if (TextUtils.isEmpty(str3)) {
                    phoneAuthFragment.w(R$string.phone_auth_fragment_invalid_area_code);
                } else {
                    ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39567f.setText('+' + str3);
                    ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39567f.setTag(cVar.a());
                }
            } else if (fVar instanceof f.d) {
                f.d dVar = (f.d) fVar;
                if (dVar.b()) {
                    phoneAuthFragment.w(R$string.phone_auth_fragment_network_error);
                } else {
                    phoneAuthFragment.x(dVar.a());
                }
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return Unit.f60915a;
    }

    private final void f0() {
        BaseTextView policyTv = ((FragmentPhoneAuthBinding) A()).f39570i;
        Intrinsics.checkNotNullExpressionValue(policyTv, "policyTv");
        String string = getString(R$string.login_activity_policy, getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        y.l(policyTv, string, new String[]{getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy)}, ContextCompat.getColor(requireContext(), 17170443), yf.a.f70794a.g(), 0.0f, false, CollectionsKt.t(this.f45640k, this.f45641l), 48, null);
    }

    private final void g0() {
        U();
        FragmentExtKt.b(this, new g(), new h());
    }

    private final void h0() {
        k0();
        long l02 = 60 - l0();
        if (1 <= l02 && l02 < 61) {
            r("canSendOtp = false seconds(" + l02 + ",60)");
            this.f45644o = CoroutineUtil.f48072a.d((int) l02, new Function1() { // from class: ni.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit i02;
                    i02 = PhoneAuthFragment.i0(PhoneAuthFragment.this, ((Integer) obj).intValue());
                    return i02;
                }
            }, new Function0() { // from class: ni.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit j02;
                    j02 = PhoneAuthFragment.j0(PhoneAuthFragment.this);
                    return j02;
                }
            });
            return;
        }
        m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i0(PhoneAuthFragment phoneAuthFragment, int i10) {
        BaseTextView baseTextView = ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39566e;
        baseTextView.setEnabled(false);
        baseTextView.setText(phoneAuthFragment.getString(R$string.phone_auth_fragment_resend, String.valueOf(i10)));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(PhoneAuthFragment phoneAuthFragment) {
        phoneAuthFragment.m0();
        return Unit.f60915a;
    }

    private final void k0() {
        r("stopInvalidateGetCodeJob");
        r rVar = this.f45644o;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
    }

    private final long l0() {
        return (DeviceUtil.f48146a.K() - ud.b.f68412a.P()) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m0() {
        boolean z10;
        String valueOf = String.valueOf(((FragmentPhoneAuthBinding) A()).f39571j.getText());
        boolean o02 = o0(this);
        boolean n02 = n0(this);
        r("updateButtonStatus otp(" + valueOf + ") phoneValid(" + o02 + ") otpValid(" + n02 + ')');
        boolean z11 = false;
        if (o02 && n02) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (R() && o02) {
            z11 = true;
        }
        ((FragmentPhoneAuthBinding) A()).f39563b.setEnabled(z10);
        ((FragmentPhoneAuthBinding) A()).f39566e.setEnabled(z11);
        if (z10) {
            T();
        }
        if (R()) {
            ((FragmentPhoneAuthBinding) A()).f39566e.setText(getString(R$string.phone_auth_fragment_get));
        }
    }

    private static final boolean n0(PhoneAuthFragment phoneAuthFragment) {
        return !StringsKt.t0(String.valueOf(((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39571j.getText()));
    }

    private static final boolean o0(PhoneAuthFragment phoneAuthFragment) {
        String valueOf = String.valueOf(((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39568g.getText());
        String obj = ((FragmentPhoneAuthBinding) phoneAuthFragment.A()).f39567f.getText().toString();
        phoneAuthFragment.r("isPhoneNumberValid -> phoneNumber(" + valueOf + ") countryCode(" + obj + ')');
        if (valueOf.length() > 0 && obj.length() > 0) {
            return true;
        }
        return false;
    }

    private final void p0(String str, boolean z10) {
        BaseTextView baseTextView;
        if (z10) {
            str = getString(R$string.phone_auth_fragment_check_content);
        }
        ViewStubProxy viewStubProxy = ((FragmentPhoneAuthBinding) A()).f39562a;
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
        return R$layout.fragment_phone_auth;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i11 == -1 && i10 == 4001 && intent != null) {
            RegionSelectActivity.a aVar = RegionSelectActivity.f45468v;
            String b10 = aVar.b(intent);
            String a10 = aVar.a(intent);
            if (b10.length() > 0) {
                Region region = new Region();
                region.setAreaCode(b10);
                region.setCountryName(a10);
                BaseTextView baseTextView = ((FragmentPhoneAuthBinding) A()).f39567f;
                baseTextView.setText('+' + b10);
                baseTextView.setTag(region);
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        V();
        W();
        Q();
        f0();
        h0();
        t.f51774a.a();
        S().O(D());
        S().S(new e.a(0, 1, null));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "PhoneAuthFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        S().w();
        k0();
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
    @SourceDebugExtension({"SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 PhoneAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n159#2,5:98\n71#3:103\n77#4:104\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b implements TextWatcher {
        public b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@Nullable Editable editable) {
            PhoneAuthFragment.this.m0();
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
    @SourceDebugExtension({"SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 PhoneAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n178#2,2:98\n71#3:100\n77#4:101\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements TextWatcher {
        public c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@Nullable Editable editable) {
            PhoneAuthFragment.this.m0();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        }
    }
}
