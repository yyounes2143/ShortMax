package com.startshorts.androidplayer.ui.fragment.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.auth.SwitchInfo;
import com.startshorts.androidplayer.bean.auth.SwitchInfoList;
import com.startshorts.androidplayer.databinding.FragmentSwitchInfoBinding;
import com.startshorts.androidplayer.manager.account.AccountListMergeManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.auth.LoginActivity;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarListFragment;
import com.startshorts.androidplayer.ui.fragment.settings.SwitchInfoFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.auth.SwitchInfoViewModel;
import com.startshorts.androidplayer.viewmodel.auth.g;
import fk.u;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pk.e;
/* compiled from: SwitchInfoFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSwitchInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,199:1\n1863#2,2:200\n15#3,9:202\n15#3,9:211\n*S KotlinDebug\n*F\n+ 1 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment\n*L\n155#1:200,2\n59#1:202,9\n81#1:211,9\n*E\n"})
/* loaded from: classes7.dex */
public final class SwitchInfoFragment extends ToolbarListFragment<SwitchInfo, FragmentSwitchInfoBinding> {
    @NotNull
    public static final a F = new a(null);
    @Nullable
    private SwitchInfo B;
    private int C;
    @NotNull
    private final i D = kotlin.c.b(new Function0() { // from class: wi.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider X0;
            X0 = SwitchInfoFragment.X0(SwitchInfoFragment.this);
            return X0;
        }
    });
    @NotNull
    private final i E = kotlin.c.b(new Function0() { // from class: wi.w
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SwitchInfoViewModel U0;
            U0 = SwitchInfoFragment.U0(SwitchInfoFragment.this);
            return U0;
        }
    });

    /* compiled from: SwitchInfoFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SwitchInfoFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<SwitchInfo> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, SwitchInfo d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            SwitchInfoFragment.this.B = d10;
            SwitchInfoFragment.this.Y0();
            SwitchInfoFragment.this.Z0();
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment\n*L\n1#1,20:1\n82#2,16:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d implements Function0<Unit> {
        public d() {
        }

        public final void a() {
            AccountListMergeManager accountListMergeManager = AccountListMergeManager.f41527a;
            if (accountListMergeManager.g()) {
                Context requireContext = SwitchInfoFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                accountListMergeManager.o(requireContext, new c(requireContext));
                return;
            }
            SwitchInfoFragment.this.w(R$string.settings_fragment_account_switch_completed);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment\n*L\n1#1,20:1\n60#2,17:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class f implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SwitchInfo f46799a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SwitchInfoFragment f46800b;

        public f(SwitchInfo switchInfo, SwitchInfoFragment switchInfoFragment) {
            this.f46799a = switchInfo;
            this.f46800b = switchInfoFragment;
        }

        public final void a() {
            String str;
            int bindType = this.f46799a.getBindType();
            if (bindType != 10) {
                if (bindType != 20) {
                    if (bindType != 60) {
                        str = "";
                    } else {
                        str = "autoLoginPhone";
                    }
                } else {
                    str = "autoLoginFaceBook";
                }
            } else {
                str = "autoLoginGoogle";
            }
            String providerId = this.f46799a.getProviderId();
            Context requireContext = this.f46800b.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            Intent intent = new Intent(requireContext, LoginActivity.class);
            intent.putExtra("from", "login_page");
            intent.putExtra("autoLogin", str);
            intent.putExtra("ex_phone", providerId);
            requireContext.startActivity(intent);
            AppCompatActivity a10 = jk.d.a(requireContext);
            if (a10 != null) {
                a10.finish();
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SwitchInfoFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46801a;

        h(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46801a = function;
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
            return this.f46801a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46801a.invoke(obj);
        }
    }

    private final SwitchInfoViewModel Q0() {
        return (SwitchInfoViewModel) this.E.getValue();
    }

    private final ViewModelProvider R0() {
        return (ViewModelProvider) this.D.getValue();
    }

    private final void S0() {
        ((FragmentSwitchInfoBinding) A()).f39658d.setOnClickListener(new View.OnClickListener() { // from class: wi.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchInfoFragment.T0(SwitchInfoFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(SwitchInfoFragment switchInfoFragment, View view) {
        SwitchInfo switchInfo = switchInfoFragment.B;
        if (switchInfo != null) {
            if (switchInfo.getButtonStatus() == 0 && !TextUtils.isEmpty(switchInfo.getHintMsg())) {
                switchInfoFragment.x(switchInfo.getHintMsg());
                return;
            } else if (switchInfo.getButtonType() == 2) {
                EventManager.f42463a.R("switch_account");
                switchInfoFragment.Q0().D(e.c.f64900a);
                return;
            } else if (switchInfoFragment.C == 0) {
                EventManager.f42463a.R("benefits_migration");
                switchInfoFragment.Q0().D(e.a.f64898a);
                return;
            } else {
                switchInfoFragment.w(R$string.settings_fragment_merge_toast);
                return;
            }
        }
        switchInfoFragment.w(R$string.settings_fragment_select_no);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SwitchInfoViewModel U0(final SwitchInfoFragment switchInfoFragment) {
        SwitchInfoViewModel switchInfoViewModel = (SwitchInfoViewModel) switchInfoFragment.R0().get(SwitchInfoViewModel.class);
        switchInfoViewModel.o().observe(switchInfoFragment, new h(new Function1() { // from class: wi.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit V0;
                V0 = SwitchInfoFragment.V0(SwitchInfoFragment.this, (ApiErrorState) obj);
                return V0;
            }
        }));
        switchInfoViewModel.B().observe(switchInfoFragment, new h(new Function1() { // from class: wi.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit W0;
                W0 = SwitchInfoFragment.W0(SwitchInfoFragment.this, (com.startshorts.androidplayer.viewmodel.auth.g) obj);
                return W0;
            }
        }));
        return switchInfoViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V0(SwitchInfoFragment switchInfoFragment, ApiErrorState apiErrorState) {
        boolean z10;
        if (apiErrorState.getState() == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        switchInfoFragment.x0(true, z10, apiErrorState.getMsg());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W0(SwitchInfoFragment switchInfoFragment, com.startshorts.androidplayer.viewmodel.auth.g gVar) {
        if (gVar instanceof g.b) {
            SwitchInfoList a10 = ((g.b) gVar).a();
            if (a10 != null) {
                List<SwitchInfo> userList = a10.getUserList();
                if (userList != null && !userList.isEmpty()) {
                    switchInfoFragment.B = a10.getUserList().get(0);
                    a10.getUserList().get(0).setSelect(true);
                }
                switchInfoFragment.C = a10.getMergeStatus();
                switchInfoFragment.y0(true, a10.getUserList());
                switchInfoFragment.Z0();
                switchInfoFragment.Y0();
            }
        } else if (gVar instanceof g.d) {
            SwitchInfo switchInfo = switchInfoFragment.B;
            if (switchInfo != null) {
                FragmentExtKt.b(switchInfoFragment, new f(switchInfo, switchInfoFragment), new g());
            }
        } else if (gVar instanceof g.a) {
            FragmentExtKt.b(switchInfoFragment, new d(), new e());
        } else if (gVar instanceof g.c) {
            switchInfoFragment.x(((g.c) gVar).a());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider X0(SwitchInfoFragment switchInfoFragment) {
        return new ViewModelProvider(switchInfoFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0() {
        String str;
        List<SwitchInfo> d02 = d0();
        if (d02 != null) {
            for (SwitchInfo switchInfo : d02) {
                SwitchInfo switchInfo2 = this.B;
                if (switchInfo2 != null) {
                    str = switchInfo2.getUserCode();
                } else {
                    str = null;
                }
                switchInfo.setSelect(Intrinsics.areEqual(str, switchInfo.getUserCode()));
            }
        }
        o0(d0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z0() {
        SwitchInfo switchInfo = this.B;
        if (switchInfo == null) {
            BaseTextView baseTextView = ((FragmentSwitchInfoBinding) A()).f39658d;
            u uVar = u.f51776a;
            baseTextView.setText(uVar.d(R$string.settings_fragment_switch_btn));
            ((FragmentSwitchInfoBinding) A()).f39658d.setTextColor(uVar.a(R$color.color_common_white_60));
            return;
        }
        if (switchInfo.getButtonStatus() == 0) {
            ((FragmentSwitchInfoBinding) A()).f39658d.setTextColor(u.f51776a.a(R$color.color_common_white_60));
        } else {
            ((FragmentSwitchInfoBinding) A()).f39658d.setTextColor(u.f51776a.a(R$color.color_common_white));
        }
        if (switchInfo.getButtonType() == 2) {
            ((FragmentSwitchInfoBinding) A()).f39658d.setText(u.f51776a.d(R$string.settings_fragment_switch_btn));
        } else if (this.C == 0) {
            ((FragmentSwitchInfoBinding) A()).f39658d.setText(u.f51776a.d(R$string.settings_fragment_merge_btn));
        } else {
            ((FragmentSwitchInfoBinding) A()).f39658d.setText(u.f51776a.d(R$string.settings_fragment_mergeing_btn));
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        Q0().D(e.b.f64899a);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        BaseAdapter baseAdapter = new BaseAdapter(R$layout.item_switch_info);
        baseAdapter.B(new b());
        k0(baseAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_switch_info;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        G0(R$string.settings_fragment_account_switching);
        R();
        S0();
        Z0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarListFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "SwitchInfoFragment";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SwitchInfoFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSwitchInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$mSwitchViewModel$2$1$2$3$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,199:1\n15#2,9:200\n*S KotlinDebug\n*F\n+ 1 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$mSwitchViewModel$2$1$2$3$1\n*L\n88#1:200,9\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements Function1<Boolean, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f46796b;

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$mSwitchViewModel$2$1$2$3$1\n*L\n1#1,20:1\n89#2,2:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Context f46797a;

            public a(Context context) {
                this.f46797a = context;
            }

            public final void a() {
                AppCompatActivity a10 = jk.d.a(this.f46797a);
                if (a10 != null) {
                    a10.finish();
                }
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        c(Context context) {
            this.f46796b = context;
        }

        public final void a(boolean z10) {
            if (z10) {
                FragmentExtKt.b(SwitchInfoFragment.this, new a(this.f46796b), new b());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.f60915a;
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class b implements Function0<Unit> {
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }

            public final void a() {
            }
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class e implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class g implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
