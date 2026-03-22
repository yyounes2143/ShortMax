package com.startshorts.androidplayer.ui.fragment.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.settings.SettingsAdapter;
import com.startshorts.androidplayer.bean.bundle.IFragmentBundle;
import com.startshorts.androidplayer.bean.configure.ConfigOptionsForTester;
import com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig;
import com.startshorts.androidplayer.bean.configure.tester.TesterConfigFactory;
import com.startshorts.androidplayer.bean.settings.AppSettings;
import com.startshorts.androidplayer.bean.settings.MergeConfig;
import com.startshorts.androidplayer.databinding.FragmentSettingsBinding;
import com.startshorts.androidplayer.db.repository.EventRepository;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import com.startshorts.androidplayer.ui.activity.RoutingActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.activity.test.TestActivity;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarRVFragment;
import com.startshorts.androidplayer.ui.fragment.settings.SettingsFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.settings.SettingsViewModel;
import com.startshorts.androidplayer.viewmodel.settings.a;
import com.startshorts.androidplayer.viewmodel.settings.b;
import fk.h0;
import ii.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import jk.e0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SettingsFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,413:1\n15#2,9:414\n15#2,9:423\n15#2,9:439\n15#2,9:448\n360#3,7:432\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment\n*L\n265#1:414,9\n280#1:423,9\n349#1:439,9\n111#1:448,9\n329#1:432,7\n*E\n"})
/* loaded from: classes7.dex */
public final class SettingsFragment extends ToolbarRVFragment<AppSettings, FragmentSettingsBinding> {
    @NotNull
    public static final a E = new a(null);
    private int A;
    private int B;
    @Nullable
    private hi.b C;
    private int D;

    /* renamed from: y  reason: collision with root package name */
    private boolean f46781y;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final ms.i f46780x = kotlin.c.b(new Function0() { // from class: wi.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SettingsViewModel U0;
            U0 = SettingsFragment.U0(SettingsFragment.this);
            return U0;
        }
    });

    /* renamed from: z  reason: collision with root package name */
    private long f46782z = -1;

    /* compiled from: SettingsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment\n*L\n1#1,20:1\n350#2,4:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b implements Function0<Unit> {
        public b() {
        }

        public final void a() {
            SettingsFragment settingsFragment = SettingsFragment.this;
            Context requireContext = SettingsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            hi.b bVar = new hi.b(requireContext);
            bVar.show();
            settingsFragment.C = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment\n*L\n1#1,20:1\n112#2,2:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class e implements Function0<Unit> {
        public e() {
        }

        public final void a() {
            SettingsViewModel R0 = SettingsFragment.this.R0();
            Context requireContext = SettingsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            R0.G(new a.b(requireContext));
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46788a;

        g(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46788a = function;
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
            return this.f46788a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46788a.invoke(obj);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment\n*L\n1#1,20:1\n266#2,11:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class h implements Function0<Unit> {
        public h() {
        }

        public final void a() {
            ViewStubProxy viewStubProxy = SettingsFragment.C0(SettingsFragment.this).f39633a;
            Intrinsics.checkNotNull(viewStubProxy);
            e0.g(viewStubProxy);
            View root = viewStubProxy.getRoot();
            if (root != null) {
                root.setOnClickListener(new j());
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: SettingsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends yd.d {
        j() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SettingsFragment.this.Y0();
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment\n*L\n1#1,20:1\n281#2,9:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class k implements Function0<Unit> {
        public k() {
        }

        public final void a() {
            Context requireContext = SettingsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            ii.b bVar = new ii.b(requireContext);
            bVar.z(new m(bVar));
            bVar.show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: SettingsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class m implements b.InterfaceC0778b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ii.b f46793b;

        m(ii.b bVar) {
            this.f46793b = bVar;
        }

        @Override // ii.b.InterfaceC0778b
        public void a() {
            SettingsFragment.this.R0().G(new a.c(this.f46793b.getContext()));
        }
    }

    public static final /* synthetic */ FragmentSettingsBinding C0(SettingsFragment settingsFragment) {
        return (FragmentSettingsBinding) settingsFragment.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J0() {
        if (this.C == null) {
            int H = EventRepository.f41474b.H() / 100;
            if (H <= 0) {
                H = 1;
            }
            x("上报预计耗时" + H + (char) 31186);
            FragmentExtKt.b(this, new b(), new c());
        }
        K0(100, new Function1() { // from class: wi.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit L0;
                L0 = SettingsFragment.L0(SettingsFragment.this, ((Integer) obj).intValue());
                return L0;
            }
        }, new Function0() { // from class: wi.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit M0;
                M0 = SettingsFragment.M0(SettingsFragment.this);
                return M0;
            }
        });
    }

    private final void K0(int i10, final Function1<? super Integer, Unit> function1, final Function0<Unit> function0) {
        if (EventRepository.f41474b.H() == 0) {
            if (function1 != null) {
                function1.invoke(0);
                return;
            }
            return;
        }
        EventManager.f42463a.q(i10, new Function1() { // from class: wi.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit N0;
                N0 = SettingsFragment.N0(Function1.this, ((Integer) obj).intValue());
                return N0;
            }
        }, new Function0() { // from class: wi.s
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit O0;
                O0 = SettingsFragment.O0(Function0.this);
                return O0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L0(SettingsFragment settingsFragment, int i10) {
        settingsFragment.D += i10;
        if (EventRepository.f41474b.H() == 0) {
            settingsFragment.P0();
        } else {
            settingsFragment.J0();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M0(SettingsFragment settingsFragment) {
        int i10 = settingsFragment.B + 1;
        settingsFragment.B = i10;
        if (i10 >= 3) {
            settingsFragment.P0();
        } else {
            settingsFragment.J0();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N0(Function1 function1, int i10) {
        if (function1 != null) {
            function1.invoke(Integer.valueOf(i10));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O0(Function0 function0) {
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    private final void P0() {
        h0.f51735a.e(new Runnable() { // from class: wi.q
            @Override // java.lang.Runnable
            public final void run() {
                SettingsFragment.Q0(SettingsFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(SettingsFragment settingsFragment) {
        hi.b bVar = settingsFragment.C;
        if (bVar != null) {
            bVar.dismiss();
        }
        settingsFragment.C = null;
        settingsFragment.x("上报结束: 上报成功" + settingsFragment.D + (char) 26465);
        SettingsViewModel R0 = settingsFragment.R0();
        Context requireContext = settingsFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        R0.G(new a.b(requireContext));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SettingsViewModel R0() {
        return (SettingsViewModel) this.f46780x.getValue();
    }

    private final void S0() {
        int i10 = R$string.settings_fragment_version;
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        String string = getString(i10, deviceUtil.V());
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        ((FragmentSettingsBinding) A()).f39635c.setText(string);
        BaseTextView baseTextView = ((FragmentSettingsBinding) A()).f39635c;
        baseTextView.setText(getString(R$string.settings_fragment_version, deviceUtil.V()));
        final String a10 = fk.h.f51733a.a();
        if (!TextUtils.isEmpty(a10)) {
            baseTextView.setOnClickListener(new View.OnClickListener() { // from class: wi.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.T0(SettingsFragment.this, a10, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(SettingsFragment settingsFragment, String str, View view) {
        long L = DeviceUtil.f48146a.L();
        long j10 = settingsFragment.f46782z;
        if (j10 == -1) {
            settingsFragment.f46782z = L;
            settingsFragment.A++;
        } else if (L - j10 > 1000) {
            settingsFragment.f46782z = L;
            settingsFragment.A = 0;
        } else {
            settingsFragment.f46782z = L;
            int i10 = settingsFragment.A + 1;
            settingsFragment.A = i10;
            if (i10 == 5) {
                settingsFragment.A = 0;
                settingsFragment.f46782z = -1L;
                settingsFragment.x(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SettingsViewModel U0(final SettingsFragment settingsFragment) {
        SettingsViewModel settingsViewModel = (SettingsViewModel) new ViewModelProvider(settingsFragment).get(SettingsViewModel.class);
        settingsViewModel.C().observe(settingsFragment, new g(new Function1() { // from class: wi.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit V0;
                V0 = SettingsFragment.V0(SettingsFragment.this, (com.startshorts.androidplayer.viewmodel.settings.b) obj);
                return V0;
            }
        }));
        return settingsViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V0(SettingsFragment settingsFragment, com.startshorts.androidplayer.viewmodel.settings.b bVar) {
        if (bVar instanceof b.c) {
            settingsFragment.o0(((b.c) bVar).a());
        } else if (bVar instanceof b.C0690b) {
            AccountManager.p(AccountManager.f41533a, null, false, false, 7, null);
            settingsFragment.h();
        } else if (bVar instanceof b.d) {
            settingsFragment.Z0(2);
        } else if (bVar instanceof b.e) {
            settingsFragment.Z0(7);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W0(SettingsFragment settingsFragment, MergeConfig mergeConfig) {
        if (mergeConfig != null) {
            boolean existsOtherSubscription = mergeConfig.getExistsOtherSubscription();
            ud.a aVar = ud.a.f68411a;
            if (existsOtherSubscription != aVar.k()) {
                aVar.l0(existsOtherSubscription ? 1 : 0);
                FragmentExtKt.b(settingsFragment, new e(), new f());
            }
        }
        return Unit.f60915a;
    }

    private final void X0() {
        FragmentExtKt.b(this, new h(), new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0() {
        FragmentExtKt.b(this, new k(), new l());
    }

    private final void Z0(int i10) {
        SettingsAdapter settingsAdapter;
        int i11;
        RecyclerView.Adapter<?> e02;
        List<AppSettings> m10;
        RecyclerView.Adapter<?> e03 = e0();
        if (e03 instanceof SettingsAdapter) {
            settingsAdapter = (SettingsAdapter) e03;
        } else {
            settingsAdapter = null;
        }
        if (settingsAdapter != null && (m10 = settingsAdapter.m()) != null) {
            i11 = 0;
            for (AppSettings appSettings : m10) {
                if (appSettings.getType() == i10) {
                    break;
                }
                i11++;
            }
        }
        i11 = -1;
        if (i11 != -1 && (e02 = e0()) != null) {
            e02.notifyItemChanged(i11);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        SettingsAdapter settingsAdapter = new SettingsAdapter();
        settingsAdapter.B(new d());
        k0(settingsAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_settings;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        boolean booleanValue = ABTestFactory.f42224a.s1().isEnable().invoke().booleanValue();
        String h10 = DeviceUtil.f48146a.h();
        if (h10 != null && h10.length() != 0 && booleanValue) {
            AccountRepo.f43052a.W0(new Function1() { // from class: wi.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit W0;
                    W0 = SettingsFragment.W0(SettingsFragment.this, (MergeConfig) obj);
                    return W0;
                }
            });
        }
        EventManager.f42463a.Q0();
        if (this.f46781y) {
            this.f46781y = false;
            if (Settings.canDrawOverlays(requireActivity())) {
                R0().G(new a.e(true));
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        q0(R$string.profile_fragment_settings);
        SettingsViewModel R0 = R0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        R0.G(new a.b(requireContext));
        if (AccountRepo.f43052a.J0()) {
            X0();
        }
        S0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarRVFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "SettingsFragment";
    }

    /* compiled from: SettingsFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$initRecyclerView$1$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,413:1\n15#2,9:414\n15#2,9:423\n126#3:432\n153#3,3:433\n126#3:436\n153#3,3:437\n126#3:444\n153#3,3:445\n126#3:448\n153#3,3:449\n37#4:440\n36#4,3:441\n37#4:452\n36#4,3:453\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$initRecyclerView$1$1\n*L\n133#1:414,9\n142#1:423,9\n208#1:432\n208#1:433,3\n210#1:436\n210#1:437,3\n231#1:444\n231#1:445,3\n232#1:448\n232#1:449,3\n213#1:440\n213#1:441,3\n235#1:452\n235#1:453,3\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d implements BaseAdapter.b<AppSettings> {

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$initRecyclerView$1$1\n*L\n1#1,20:1\n134#2,4:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SettingsFragment f46785a;

            public a(SettingsFragment settingsFragment) {
                this.f46785a = settingsFragment;
            }

            public final void a() {
                if (AccountRepo.f43052a.w0()) {
                    FragmentContainer.a aVar = FragmentContainer.f45006p;
                    Context requireContext = this.f46785a.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                    aVar.b(requireContext, com.startshorts.androidplayer.ui.fragment.a.f45609a.b(), new IFragmentBundle[0]);
                }
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$initRecyclerView$1$1\n*L\n1#1,20:1\n143#2,4:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class c implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SettingsFragment f46786a;

            public c(SettingsFragment settingsFragment) {
                this.f46786a = settingsFragment;
            }

            public final void a() {
                if (AccountRepo.f43052a.w0()) {
                    FragmentContainer.a aVar = FragmentContainer.f45006p;
                    Context requireContext = this.f46786a.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                    aVar.b(requireContext, com.startshorts.androidplayer.ui.fragment.a.f45609a.l(), new IFragmentBundle[0]);
                }
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(ConfigOptionsForTester configOptionsForTester, List list, AppSettings appSettings, SettingsFragment settingsFragment, DialogInterface dialogInterface, int i10) {
            List<AppSettings> m10;
            configOptionsForTester.setSelectedValue((String) list.get(i10));
            appSettings.setName(configOptionsForTester.settingListItemTitle());
            BaseAdapter<AppSettings> Z = settingsFragment.Z();
            if (Z != null && (m10 = Z.m()) != null) {
                int indexOf = m10.indexOf(appSettings);
                BaseAdapter<AppSettings> Z2 = settingsFragment.Z();
                if (Z2 != null) {
                    Z2.notifyItemChanged(indexOf);
                }
            }
            Function1<Context, Unit> afterNotABSelected = configOptionsForTester.getAfterNotABSelected();
            Context requireContext = settingsFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            afterNotABSelected.invoke(requireContext);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(ConfigOptionsForTester configOptionsForTester, List list, ABTestConfig aBTestConfig, AppSettings appSettings, SettingsFragment settingsFragment, DialogInterface dialogInterface, int i10) {
            List<AppSettings> m10;
            configOptionsForTester.setSelectedValue((String) list.get(i10));
            RemoteConfigRepo.f43788a.B(aBTestConfig.getAbTestKey(), (String) list.get(i10));
            aBTestConfig.setActivated(true);
            aBTestConfig.clearFixedABTestValue();
            appSettings.setName(aBTestConfig.settingListItemTitle());
            BaseAdapter<AppSettings> Z = settingsFragment.Z();
            if (Z != null && (m10 = Z.m()) != null) {
                int indexOf = m10.indexOf(appSettings);
                BaseAdapter<AppSettings> Z2 = settingsFragment.Z();
                if (Z2 != null) {
                    Z2.notifyItemChanged(indexOf);
                }
            }
            Function2<Context, ABTestConfig, Unit> afterSelected = configOptionsForTester.getAfterSelected();
            Context requireContext = settingsFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            afterSelected.invoke(requireContext, aBTestConfig);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: d */
        public void a(View v10, final AppSettings d10, int i10) {
            AccountRepo accountRepo;
            final ConfigOptionsForTester optionsForTester;
            Collection n10;
            final ArrayList n11;
            Collection n12;
            final List n13;
            AppCompatActivity appCompatActivity;
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            int type = d10.getType();
            if (type != 1) {
                if (type != 2) {
                    if (type != 20000) {
                        if (type != 20001) {
                            if (type != 20003) {
                                if (type != 30000) {
                                    if (type != 30001) {
                                        switch (type) {
                                            case 4:
                                                IntentUtil intentUtil = IntentUtil.f48164a;
                                                Context requireContext = SettingsFragment.this.requireContext();
                                                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                                                String string = SettingsFragment.this.getString(R$string.policy_private_policy);
                                                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                                intentUtil.c(requireContext, string);
                                                return;
                                            case 5:
                                                IntentUtil intentUtil2 = IntentUtil.f48164a;
                                                Context requireContext2 = SettingsFragment.this.requireContext();
                                                Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
                                                String string2 = SettingsFragment.this.getString(R$string.policy_user_agreement);
                                                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                                                intentUtil2.c(requireContext2, string2);
                                                return;
                                            case 6:
                                                FragmentContainer.a aVar = FragmentContainer.f45006p;
                                                Context requireContext3 = SettingsFragment.this.requireContext();
                                                Intrinsics.checkNotNullExpressionValue(requireContext3, "requireContext(...)");
                                                aVar.b(requireContext3, com.startshorts.androidplayer.ui.fragment.a.f45609a.c(), new IFragmentBundle[0]);
                                                return;
                                            case 7:
                                                FragmentActivity requireActivity = SettingsFragment.this.requireActivity();
                                                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                                                boolean canDrawOverlays = Settings.canDrawOverlays(requireActivity);
                                                boolean i12 = ud.b.f68412a.i1(canDrawOverlays);
                                                boolean z10 = !i12;
                                                if (!i12 && !canDrawOverlays) {
                                                    mk.c.f62521a.f(requireActivity);
                                                    SettingsFragment.this.f46781y = true;
                                                    return;
                                                }
                                                SettingsFragment.this.R0().G(new a.e(z10));
                                                return;
                                            case 8:
                                                EventManager.f42463a.f1("switch_account");
                                                SettingsFragment settingsFragment = SettingsFragment.this;
                                                FragmentExtKt.b(settingsFragment, new c(settingsFragment), new C0644d());
                                                return;
                                            default:
                                                switch (type) {
                                                    case 10000:
                                                        int i11 = 1 / 0;
                                                        return;
                                                    case 10001:
                                                        SettingsFragment.this.startActivity(new Intent(SettingsFragment.this.getContext(), RoutingActivity.class));
                                                        return;
                                                    case 10002:
                                                        FragmentActivity activity = SettingsFragment.this.getActivity();
                                                        if (activity instanceof AppCompatActivity) {
                                                            appCompatActivity = (AppCompatActivity) activity;
                                                        } else {
                                                            appCompatActivity = null;
                                                        }
                                                        if (appCompatActivity != null) {
                                                            TestActivity.f45537p.a(appCompatActivity);
                                                            return;
                                                        }
                                                        return;
                                                    default:
                                                        return;
                                                }
                                        }
                                    }
                                    OpenShortByIdDialog.f46778b.a().show(SettingsFragment.this.getParentFragmentManager(), "setting");
                                    return;
                                }
                                ca.k kVar = ca.k.f3414a;
                                Context context = SettingsFragment.this.getContext();
                                Intrinsics.checkNotNull(context);
                                kVar.q(context);
                                return;
                            } else if (EventRepository.f41474b.H() != 0) {
                                SettingsFragment.this.B = 0;
                                SettingsFragment.this.D = 0;
                                SettingsFragment.this.J0();
                                return;
                            } else {
                                SettingsFragment.this.x("没有未上报的事件");
                                SettingsViewModel R0 = SettingsFragment.this.R0();
                                Context requireContext4 = SettingsFragment.this.requireContext();
                                Intrinsics.checkNotNullExpressionValue(requireContext4, "requireContext(...)");
                                R0.G(new a.b(requireContext4));
                                return;
                            }
                        }
                        final ConfigOptionsForTester configByTitle = TesterConfigFactory.INSTANCE.getConfigByTitle(d10.getAbTestKey());
                        if (configByTitle == null) {
                            return;
                        }
                        Map<String, String> options = configByTitle.getOptions();
                        if (options != null) {
                            n12 = new ArrayList(options.size());
                            for (Map.Entry<String, String> entry : options.entrySet()) {
                                n12.add(entry.getKey() + ':' + entry.getValue());
                            }
                        } else {
                            n12 = CollectionsKt.n();
                        }
                        Map<String, String> options2 = configByTitle.getOptions();
                        if (options2 != null) {
                            n13 = new ArrayList(options2.size());
                            for (Map.Entry<String, String> entry2 : options2.entrySet()) {
                                n13.add(entry2.getKey());
                            }
                        } else {
                            n13 = CollectionsKt.n();
                        }
                        final SettingsFragment settingsFragment2 = SettingsFragment.this;
                        new AlertDialog.Builder(SettingsFragment.this.getContext()).setTitle(configByTitle.settingDialogTitle()).setItems((CharSequence[]) n12.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: wi.u
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i13) {
                                SettingsFragment.d.e(ConfigOptionsForTester.this, n13, d10, settingsFragment2, dialogInterface, i13);
                            }
                        }).show();
                        return;
                    }
                    final ABTestConfig H0 = ABTestFactory.f42224a.H0(d10.getAbTestKey());
                    if (H0 == null || (optionsForTester = H0.getOptionsForTester()) == null) {
                        return;
                    }
                    Map<String, String> options3 = optionsForTester.getOptions();
                    if (options3 != null) {
                        n10 = new ArrayList(options3.size());
                        for (Map.Entry<String, String> entry3 : options3.entrySet()) {
                            n10.add(entry3.getKey() + ':' + entry3.getValue());
                        }
                    } else {
                        n10 = CollectionsKt.n();
                    }
                    Map<String, String> options4 = optionsForTester.getOptions();
                    if (options4 != null) {
                        ArrayList arrayList = new ArrayList(options4.size());
                        for (Map.Entry<String, String> entry4 : options4.entrySet()) {
                            arrayList.add(entry4.getKey());
                        }
                        n11 = arrayList;
                    } else {
                        n11 = CollectionsKt.n();
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(SettingsFragment.this.getContext());
                    final SettingsFragment settingsFragment3 = SettingsFragment.this;
                    builder.setTitle(H0.settingDialogTitle() + " | " + H0.settingDialogMessage()).setItems((CharSequence[]) n10.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: wi.t
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i13) {
                            SettingsFragment.d.f(ConfigOptionsForTester.this, n11, H0, d10, settingsFragment3, dialogInterface, i13);
                        }
                    }).show();
                    return;
                }
                if (AccountRepo.f43052a.w0()) {
                    SettingsFragment.this.R0().G(new a.d(SettingsFragment.this.getContext(), !accountRepo.P()));
                    return;
                }
                return;
            }
            SettingsFragment settingsFragment4 = SettingsFragment.this;
            FragmentExtKt.b(settingsFragment4, new a(settingsFragment4), new b());
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

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
        /* renamed from: com.startshorts.androidplayer.ui.fragment.settings.SettingsFragment$d$d  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0644d implements Function0<Unit> {
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
    public static final class c implements Function0<Unit> {
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
    public static final class f implements Function0<Unit> {
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
    public static final class i implements Function0<Unit> {
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
    public static final class l implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
