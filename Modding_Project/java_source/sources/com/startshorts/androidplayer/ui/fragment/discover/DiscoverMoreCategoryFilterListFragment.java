package com.startshorts.androidplayer.ui.fragment.discover;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverMoreAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.bean.discover.DiscoverCategoryShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.databinding.FragmentDiscoverMoreCategoryFilterListBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.RefreshFragment;
import com.startshorts.androidplayer.viewmodel.discover.DiscoverMoreCategoryFilterViewModel;
import com.startshorts.androidplayer.viewmodel.discover.c;
import com.startshorts.androidplayer.viewmodel.discover.d;
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
/* compiled from: DiscoverMoreCategoryFilterListFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverMoreCategoryFilterListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreCategoryFilterListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n2642#2:214\n1#3:215\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreCategoryFilterListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment\n*L\n67#1:214\n67#1:215\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverMoreCategoryFilterListFragment extends RefreshFragment<DiscoverCategoryShorts, FragmentDiscoverMoreCategoryFilterListBinding> {
    @NotNull
    public static final a J = new a(null);
    private ModuleInfo G;
    private DiscoverCategory H;
    @NotNull
    private String F = "";
    @NotNull
    private final ms.i I = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.i0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DiscoverMoreCategoryFilterViewModel g12;
            g12 = DiscoverMoreCategoryFilterListFragment.g1(DiscoverMoreCategoryFilterListFragment.this);
            return g12;
        }
    });

    /* compiled from: DiscoverMoreCategoryFilterListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DiscoverMoreCategoryFilterListFragment a(@NotNull ModuleInfo moduleInfo, @NotNull DiscoverCategory discoverCategory, @NotNull String from) {
            Intrinsics.checkNotNullParameter(moduleInfo, "moduleInfo");
            Intrinsics.checkNotNullParameter(discoverCategory, "discoverCategory");
            Intrinsics.checkNotNullParameter(from, "from");
            DiscoverMoreCategoryFilterListFragment discoverMoreCategoryFilterListFragment = new DiscoverMoreCategoryFilterListFragment();
            Bundle bundle = new Bundle();
            bundle.putString("from", from);
            bundle.putString("module_info", jk.l.d(moduleInfo));
            bundle.putString("discover_category", jk.l.d(discoverCategory));
            discoverMoreCategoryFilterListFragment.setArguments(bundle);
            return discoverMoreCategoryFilterListFragment;
        }

        private a() {
        }
    }

    /* compiled from: DiscoverMoreCategoryFilterListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<DiscoverShorts> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, DiscoverShorts d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            ModuleInfo moduleInfo = DiscoverMoreCategoryFilterListFragment.this.G;
            ModuleInfo moduleInfo2 = null;
            if (moduleInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                moduleInfo = null;
            }
            if (!Intrinsics.areEqual(moduleInfo.getModuleType(), "coming_soon")) {
                ModuleInfo moduleInfo3 = DiscoverMoreCategoryFilterListFragment.this.G;
                if (moduleInfo3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                    moduleInfo3 = null;
                }
                moduleInfo3.setPositionId(i10 + 1);
                ModuleInfo moduleInfo4 = DiscoverMoreCategoryFilterListFragment.this.G;
                if (moduleInfo4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                    moduleInfo4 = null;
                }
                moduleInfo4.setShortPlayCode(d10.getShortPlayCode());
                EventManager eventManager = EventManager.f42463a;
                ModuleInfo moduleInfo5 = DiscoverMoreCategoryFilterListFragment.this.G;
                if (moduleInfo5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                    moduleInfo5 = null;
                }
                Bundle H = eventManager.H(moduleInfo5);
                H.putString("reel_id", d10.getShortPlayCode());
                H.putString("type", "positive");
                H.putString("skip_type", "reel");
                H.putString("scene", "discover_more");
                if (!TextUtils.isEmpty(d10.getUpack())) {
                    H.putString("upack", d10.getUpack());
                }
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "discover_module_click", H, 0L, 4, null);
                DiscoverMoreCategoryFilterListFragment discoverMoreCategoryFilterListFragment = DiscoverMoreCategoryFilterListFragment.this;
                ModuleInfo moduleInfo6 = discoverMoreCategoryFilterListFragment.G;
                if (moduleInfo6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                } else {
                    moduleInfo2 = moduleInfo6;
                }
                discoverMoreCategoryFilterListFragment.i1(moduleInfo2, d10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverMoreCategoryFilterListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45931a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45931a = function;
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
            return this.f45931a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45931a.invoke(obj);
        }
    }

    private final DiscoverMoreCategoryFilterViewModel e1() {
        return (DiscoverMoreCategoryFilterViewModel) this.I.getValue();
    }

    private final boolean f1() {
        ModuleInfo moduleInfo;
        String string;
        String string2;
        Bundle arguments = getArguments();
        String str = (arguments == null || (str = arguments.getString("from")) == null) ? "" : "";
        Bundle arguments2 = getArguments();
        DiscoverCategory discoverCategory = null;
        if (arguments2 != null && (string2 = arguments2.getString("module_info")) != null) {
            moduleInfo = (ModuleInfo) jk.l.b(string2, ModuleInfo.class);
        } else {
            moduleInfo = null;
        }
        Bundle arguments3 = getArguments();
        if (arguments3 != null && (string = arguments3.getString("discover_category")) != null) {
            discoverCategory = (DiscoverCategory) jk.l.b(string, DiscoverCategory.class);
        }
        if (moduleInfo != null && discoverCategory != null) {
            this.F = str;
            this.G = moduleInfo;
            this.H = discoverCategory;
            return true;
        }
        g("moduleInfo or discoverCategory is null");
        h();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiscoverMoreCategoryFilterViewModel g1(final DiscoverMoreCategoryFilterListFragment discoverMoreCategoryFilterListFragment) {
        DiscoverMoreCategoryFilterViewModel discoverMoreCategoryFilterViewModel = (DiscoverMoreCategoryFilterViewModel) new ViewModelProvider(discoverMoreCategoryFilterListFragment).get(DiscoverMoreCategoryFilterViewModel.class);
        discoverMoreCategoryFilterViewModel.A().observe(discoverMoreCategoryFilterListFragment, new c(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit h12;
                h12 = DiscoverMoreCategoryFilterListFragment.h1(DiscoverMoreCategoryFilterListFragment.this, (com.startshorts.androidplayer.viewmodel.discover.d) obj);
                return h12;
            }
        }));
        return discoverMoreCategoryFilterViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h1(DiscoverMoreCategoryFilterListFragment discoverMoreCategoryFilterListFragment, com.startshorts.androidplayer.viewmodel.discover.d dVar) {
        String str;
        List<DiscoverCategoryShorts> list = null;
        if (dVar instanceof d.c) {
            List<DiscoverCategoryShorts> a10 = ((d.c) dVar).a();
            if (a10 != null) {
                List<DiscoverCategoryShorts> list2 = a10;
                for (DiscoverCategoryShorts discoverCategoryShorts : list2) {
                    ModuleInfo moduleInfo = discoverMoreCategoryFilterListFragment.G;
                    if (moduleInfo == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                        moduleInfo = null;
                    }
                    discoverCategoryShorts.setModuleId(moduleInfo.getModuleId());
                    ModuleInfo moduleInfo2 = discoverMoreCategoryFilterListFragment.G;
                    if (moduleInfo2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                        moduleInfo2 = null;
                    }
                    discoverCategoryShorts.setModuleName(moduleInfo2.getModuleName());
                    ModuleInfo moduleInfo3 = discoverMoreCategoryFilterListFragment.G;
                    if (moduleInfo3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
                        moduleInfo3 = null;
                    }
                    discoverCategoryShorts.setRecommendId(moduleInfo3.getRecommendId());
                }
                list = list2;
            }
            RefreshFragment.S0(discoverMoreCategoryFilterListFragment, list, false, null, 6, null);
        } else if (dVar instanceof d.a) {
            d.a aVar = (d.a) dVar;
            ApiErrorState a11 = aVar.a();
            boolean z10 = false;
            if (a11 != null && a11.getState() == 1) {
                z10 = true;
            }
            ApiErrorState a12 = aVar.a();
            if (a12 != null) {
                str = a12.getMsg();
            } else {
                str = null;
            }
            discoverMoreCategoryFilterListFragment.R0(null, z10, str);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i1(ModuleInfo moduleInfo, DiscoverShorts discoverShorts) {
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("discover_more");
        immersionParams.setModuleInfo(moduleInfo);
        ModuleInfo moduleInfo2 = this.G;
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
        ModuleInfo moduleInfo4 = this.G;
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
    public void Q() {
        h();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void T0(int i10, int i11) {
        String id2;
        super.T0(i10, i11);
        DiscoverMoreCategoryFilterViewModel e12 = e1();
        ModuleInfo moduleInfo = this.G;
        ModuleInfo moduleInfo2 = null;
        if (moduleInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo = null;
        }
        String moduleId = moduleInfo.getModuleId();
        if (moduleId == null) {
            moduleId = "";
        }
        String str = moduleId;
        DiscoverCategory discoverCategory = this.H;
        if (discoverCategory == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mDiscoverCategory");
            discoverCategory = null;
        }
        if (Intrinsics.areEqual(discoverCategory.getId(), "-1")) {
            id2 = null;
        } else {
            DiscoverCategory discoverCategory2 = this.H;
            if (discoverCategory2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mDiscoverCategory");
                discoverCategory2 = null;
            }
            id2 = discoverCategory2.getId();
        }
        String str2 = this.F;
        ModuleInfo moduleInfo3 = this.G;
        if (moduleInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
        } else {
            moduleInfo2 = moduleInfo3;
        }
        e12.B(new c.a(str, id2, i10, i11, str2, moduleInfo2.getRecommendId()));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void U0(int i10, int i11) {
        String id2;
        super.U0(i10, i11);
        DiscoverMoreCategoryFilterViewModel e12 = e1();
        ModuleInfo moduleInfo = this.G;
        ModuleInfo moduleInfo2 = null;
        if (moduleInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
            moduleInfo = null;
        }
        String moduleId = moduleInfo.getModuleId();
        if (moduleId == null) {
            moduleId = "";
        }
        String str = moduleId;
        DiscoverCategory discoverCategory = this.H;
        if (discoverCategory == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mDiscoverCategory");
            discoverCategory = null;
        }
        if (Intrinsics.areEqual(discoverCategory.getId(), "-1")) {
            id2 = null;
        } else {
            DiscoverCategory discoverCategory2 = this.H;
            if (discoverCategory2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mDiscoverCategory");
                discoverCategory2 = null;
            }
            id2 = discoverCategory2.getId();
        }
        String str2 = this.F;
        ModuleInfo moduleInfo3 = this.G;
        if (moduleInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
        } else {
            moduleInfo2 = moduleInfo3;
        }
        e12.B(new c.a(str, id2, 1, i11, str2, moduleInfo2.getRecommendId()));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public boolean a0() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        int i10;
        ModuleInfo moduleInfo = this.G;
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
        ModuleInfo moduleInfo3 = this.G;
        if (moduleInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mModuleInfo");
        } else {
            moduleInfo2 = moduleInfo3;
        }
        discoverMoreAdapter.Q(moduleInfo2);
        discoverMoreAdapter.B(new b());
        k0(discoverMoreAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_discover_more_category_filter_list;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!f1()) {
            return;
        }
        super.onViewCreated(view, bundle);
        W0(false);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "DiscoverMoreCategoryFilterListFragment";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshEpisodeNumEvent(@NotNull RefreshEpisodeNumEvent event) {
        DiscoverMoreAdapter discoverMoreAdapter;
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveRefreshEpisodeNumEvent -> " + event);
        BaseAdapter<DiscoverCategoryShorts> Z = Z();
        if (Z instanceof DiscoverMoreAdapter) {
            discoverMoreAdapter = (DiscoverMoreAdapter) Z;
        } else {
            discoverMoreAdapter = null;
        }
        if (discoverMoreAdapter != null) {
            discoverMoreAdapter.P(event.getShortsId(), event.getEpisodeNum());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public int v0() {
        return 20;
    }
}
