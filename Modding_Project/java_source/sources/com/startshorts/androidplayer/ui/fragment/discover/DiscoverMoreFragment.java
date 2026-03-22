package com.startshorts.androidplayer.ui.fragment.discover;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverMoreAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortDiscountUnLockEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.databinding.FragmentDiscoverMoreBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarListFragment;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.discover.DiscoverMoreViewModel;
import com.startshorts.androidplayer.viewmodel.discover.e;
import com.startshorts.androidplayer.viewmodel.discover.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverMoreFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverMoreFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n2642#2:241\n1#3:242\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment\n*L\n74#1:241\n74#1:242\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverMoreFragment extends ToolbarListFragment<DiscoverShorts, FragmentDiscoverMoreBinding> {
    @NotNull
    public static final a G = new a(null);
    @NotNull
    private final ms.i B = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.k0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DiscoverMoreViewModel P0;
            P0 = DiscoverMoreFragment.P0(DiscoverMoreFragment.this);
            return P0;
        }
    });
    private ModuleInfo C;
    @Nullable
    private Long D;
    @Nullable
    private Long E;
    private String F;

    /* compiled from: DiscoverMoreFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context, @NotNull ModuleInfo moduleInfo, @NotNull String from) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(moduleInfo, "moduleInfo");
            Intrinsics.checkNotNullParameter(from, "from");
            Logger logger = Logger.f41511a;
            logger.h("DiscoverMoreFragment", "DiscoverMoreFragment -> moduleInfo=" + moduleInfo);
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "discover_more_click", eventManager.H(moduleInfo), 0L, 4, null);
            FragmentContainer.f45006p.b(context, com.startshorts.androidplayer.ui.fragment.a.f45609a.d(), new StringBundle("module_info_param", jk.l.d(moduleInfo)), new StringBundle("from", from));
        }

        private a() {
        }
    }

    /* compiled from: DiscoverMoreFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<DiscoverShorts> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DiscoverMoreAdapter f45933b;

        b(DiscoverMoreAdapter discoverMoreAdapter) {
            this.f45933b = discoverMoreAdapter;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, DiscoverShorts d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            ModuleInfo moduleInfo = DiscoverMoreFragment.this.C;
            ModuleInfo moduleInfo2 = null;
            if (moduleInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                moduleInfo = null;
            }
            if (!Intrinsics.areEqual(moduleInfo.getModuleType(), "coming_soon")) {
                ModuleInfo J = this.f45933b.J();
                if (J != null) {
                    J.setPositionId(i10 + 1);
                    J.setShortPlayCode(d10.getShortPlayCode());
                }
                EventManager eventManager = EventManager.f42463a;
                Bundle H = eventManager.H(this.f45933b.J());
                H.putString("reel_id", d10.getShortPlayCode());
                H.putString("type", "positive");
                H.putString("skip_type", "reel");
                H.putString("scene", "discover_more");
                if (!TextUtils.isEmpty(d10.getUpack())) {
                    H.putString("upack", d10.getUpack());
                }
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "discover_module_click", H, 0L, 4, null);
                DiscoverMoreFragment discoverMoreFragment = DiscoverMoreFragment.this;
                ModuleInfo moduleInfo3 = discoverMoreFragment.C;
                if (moduleInfo3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                } else {
                    moduleInfo2 = moduleInfo3;
                }
                discoverMoreFragment.R0(moduleInfo2, d10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverMoreFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45934a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45934a = function;
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
            return this.f45934a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45934a.invoke(obj);
        }
    }

    private final DiscoverMoreViewModel M0() {
        return (DiscoverMoreViewModel) this.B.getValue();
    }

    private final void N0() {
        ed.a aVar = ed.a.f51339a;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        aVar.b(requireActivity, true);
        ImageView imageView = new ImageView(requireActivity());
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, 0);
        layoutParams.topToTop = 0;
        imageView.setLayoutParams(layoutParams);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setBackgroundResource(R$drawable.bg_discover_2_top_mask);
        ConstraintLayout constraintLayout = (ConstraintLayout) requireActivity().findViewById(R$id.root_layout);
        if (constraintLayout != null) {
            constraintLayout.addView(imageView, 0);
        }
        View findViewById = requireActivity().findViewById(R$id.toolbar_view);
        if (findViewById != null) {
            jk.b0.i(findViewById, 0, DeviceUtil.f48146a.J(), 0, 0, 13, null);
        }
    }

    private final boolean O0() {
        ModuleInfo moduleInfo;
        String string;
        Bundle arguments = getArguments();
        if (arguments != null && (string = arguments.getString("module_info_param")) != null) {
            moduleInfo = (ModuleInfo) jk.l.b(string, ModuleInfo.class);
        } else {
            moduleInfo = null;
        }
        Bundle arguments2 = getArguments();
        String str = (arguments2 == null || (str = arguments2.getString("from")) == null) ? "" : "";
        if (moduleInfo == null) {
            g("data is null");
            h();
            return false;
        }
        this.F = str;
        this.C = moduleInfo;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiscoverMoreViewModel P0(final DiscoverMoreFragment discoverMoreFragment) {
        DiscoverMoreViewModel discoverMoreViewModel = (DiscoverMoreViewModel) new ViewModelProvider(discoverMoreFragment).get(DiscoverMoreViewModel.class);
        discoverMoreViewModel.A().observe(discoverMoreFragment, new c(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.l0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Q0;
                Q0 = DiscoverMoreFragment.Q0(DiscoverMoreFragment.this, (com.startshorts.androidplayer.viewmodel.discover.f) obj);
                return Q0;
            }
        }));
        return discoverMoreViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q0(DiscoverMoreFragment discoverMoreFragment, com.startshorts.androidplayer.viewmodel.discover.f fVar) {
        Long l10;
        Long l11;
        List<DiscoverShorts> shortPlayResponseList;
        String str = null;
        r2 = null;
        List<DiscoverShorts> list = null;
        if (fVar instanceof f.c) {
            f.c cVar = (f.c) fVar;
            DiscoverModule a10 = cVar.a();
            if (a10 != null) {
                l10 = a10.getValidStartTime();
            } else {
                l10 = null;
            }
            discoverMoreFragment.D = l10;
            DiscoverModule a11 = cVar.a();
            if (a11 != null) {
                l11 = a11.getValidEndTime();
            } else {
                l11 = null;
            }
            discoverMoreFragment.E = l11;
            DiscoverModule a12 = cVar.a();
            if (a12 != null && (shortPlayResponseList = a12.getShortPlayResponseList()) != null) {
                List<DiscoverShorts> list2 = shortPlayResponseList;
                for (DiscoverShorts discoverShorts : list2) {
                    ModuleInfo moduleInfo = discoverMoreFragment.C;
                    if (moduleInfo == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                        moduleInfo = null;
                    }
                    discoverShorts.setModuleId(moduleInfo.getModuleId());
                    ModuleInfo moduleInfo2 = discoverMoreFragment.C;
                    if (moduleInfo2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                        moduleInfo2 = null;
                    }
                    discoverShorts.setModuleName(moduleInfo2.getModuleName());
                    ModuleInfo moduleInfo3 = discoverMoreFragment.C;
                    if (moduleInfo3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                        moduleInfo3 = null;
                    }
                    discoverShorts.setRecommendId(moduleInfo3.getRecommendId());
                }
                list = list2;
            }
            discoverMoreFragment.y0(true, list);
        } else if (fVar instanceof f.a) {
            f.a aVar = (f.a) fVar;
            ApiErrorState a13 = aVar.a();
            boolean z10 = false;
            if (a13 != null && a13.getState() == 1) {
                z10 = true;
            }
            ApiErrorState a14 = aVar.a();
            if (a14 != null) {
                str = a14.getMsg();
            }
            discoverMoreFragment.x0(true, z10, str);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R0(ModuleInfo moduleInfo, DiscoverShorts discoverShorts) {
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("discover_more");
        immersionParams.setModuleInfo(moduleInfo);
        ModuleInfo moduleInfo2 = this.C;
        ModuleInfo moduleInfo3 = null;
        if (moduleInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo2 = null;
        }
        int i10 = 3;
        if (Intrinsics.areEqual(moduleInfo2.getModuleType(), "coming_soon")) {
            immersionParams.setType(3);
        } else {
            if (discoverShorts.getEpisodeNum() != 0) {
                i10 = 1;
            }
            immersionParams.setType(i10);
            if (discoverShorts.getEpisodeNum() != 0) {
                immersionParams.setEpisodeNum(discoverShorts.getEpisodeNum());
            }
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        ModuleInfo moduleInfo4 = this.C;
        if (moduleInfo4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
        } else {
            moduleInfo3 = moduleInfo4;
        }
        if (Intrinsics.areEqual(moduleInfo3.getModuleType(), "coming_soon")) {
            immersionShortsInfo.setVideoType(4);
            immersionShortsInfo.setShortsId(discoverShorts.getTrailerId());
            immersionShortsInfo.setShortPlayCode(String.valueOf(discoverShorts.getTrailerId()));
            immersionShortsInfo.setBindShortsId(discoverShorts.getId());
        } else {
            immersionShortsInfo.setShortsId(discoverShorts.getId());
            immersionShortsInfo.setShortPlayCode(discoverShorts.getShortPlayCode());
        }
        immersionShortsInfo.setShortsName(discoverShorts.getShortPlayName());
        immersionShortsInfo.setCover(discoverShorts.getPicUrl());
        immersionShortsInfo.setUpack(discoverShorts.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        Unit unit = Unit.f60915a;
        aVar.a(requireContext, immersionParams);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_page_state_empty_discover_more;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    @NotNull
    public String H() {
        String string = getString(R$string.discover_more_fragment_empty_content);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void Q() {
        h();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        DiscoverMoreViewModel M0 = M0();
        ModuleInfo moduleInfo = this.C;
        String str = null;
        if (moduleInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo = null;
        }
        String str2 = this.F;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFrom");
        } else {
            str = str2;
        }
        M0.C(new e.a(moduleInfo, str));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public boolean a0() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        int i10;
        ModuleInfo moduleInfo = this.C;
        ModuleInfo moduleInfo2 = null;
        if (moduleInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo = null;
        }
        Integer moduleStyle = moduleInfo.getModuleStyle();
        if (moduleStyle != null) {
            i10 = moduleStyle.intValue();
        } else {
            i10 = 0;
        }
        DiscoverMoreAdapter discoverMoreAdapter = new DiscoverMoreAdapter(i10);
        discoverMoreAdapter.R(this.E);
        discoverMoreAdapter.S(this.D);
        ModuleInfo moduleInfo3 = this.C;
        if (moduleInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
        } else {
            moduleInfo2 = moduleInfo3;
        }
        discoverMoreAdapter.Q(moduleInfo2);
        discoverMoreAdapter.B(new b(discoverMoreAdapter));
        k0(discoverMoreAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_discover_more;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (!O0()) {
            return;
        }
        N0();
        ModuleInfo moduleInfo = this.C;
        String str = null;
        if (moduleInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo = null;
        }
        H0(moduleInfo.getModuleName());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onCreate -> ModuleInfo=");
        ModuleInfo moduleInfo2 = this.C;
        if (moduleInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo2 = null;
        }
        sb2.append(moduleInfo2);
        r(sb2.toString());
        DiscoverMoreViewModel M0 = M0();
        ModuleInfo moduleInfo3 = this.C;
        if (moduleInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo3 = null;
        }
        String str2 = this.F;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFrom");
        } else {
            str = str2;
        }
        M0.C(new e.a(moduleInfo3, str));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarListFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "DiscoverMoreFragment";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshEpisodeNumEvent(@NotNull RefreshEpisodeNumEvent event) {
        DiscoverMoreAdapter discoverMoreAdapter;
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveRefreshEpisodeNumEvent -> " + event);
        BaseAdapter<DiscoverShorts> Z = Z();
        if (Z instanceof DiscoverMoreAdapter) {
            discoverMoreAdapter = (DiscoverMoreAdapter) Z;
        } else {
            discoverMoreAdapter = null;
        }
        if (discoverMoreAdapter != null) {
            discoverMoreAdapter.P(event.getShortsId(), event.getEpisodeNum());
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveShortDiscountUnLockEvent(@NotNull ShortDiscountUnLockEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ModuleInfo moduleInfo = this.C;
        if (moduleInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo = null;
        }
        Integer moduleStyle = moduleInfo.getModuleStyle();
        if (moduleStyle != null && moduleStyle.intValue() == 12) {
            R();
        }
    }
}
