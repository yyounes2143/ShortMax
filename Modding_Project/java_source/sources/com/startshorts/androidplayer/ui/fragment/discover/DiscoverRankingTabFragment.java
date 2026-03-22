package com.startshorts.androidplayer.ui.fragment.discover;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.databinding.FragmentDiscoverRankingTabBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.fragment.base.PageStateFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverRankingFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.discover.RankingTabViewModel;
import com.startshorts.androidplayer.viewmodel.discover.g;
import com.startshorts.androidplayer.viewmodel.discover.h;
import java.util.List;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverRankingTabFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverRankingTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n1872#2,3:268\n1872#2,3:271\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment\n*L\n112#1:268,3\n135#1:271,3\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverRankingTabFragment extends PageStateFragment<FragmentDiscoverRankingTabBinding> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f45950t = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private boolean f45951o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private DiscoverTabFragment.b f45952p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final ms.i f45953q = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.r0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            RankingTabViewModel i02;
            i02 = DiscoverRankingTabFragment.i0(DiscoverRankingTabFragment.this);
            return i02;
        }
    });

    /* renamed from: r  reason: collision with root package name */
    private final int f45954r = R$layout.fragment_discover_ranking_tab;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final String f45955s = "DiscoverRankingTabFragment";

    /* compiled from: DiscoverRankingTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public final class PagerAdapter extends FragmentStateAdapter {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final DiscoverModule f45956i;

        /* renamed from: j  reason: collision with root package name */
        private int f45957j;
        @NotNull

        /* renamed from: k  reason: collision with root package name */
        private String f45958k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ DiscoverRankingTabFragment f45959l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PagerAdapter(@NotNull DiscoverRankingTabFragment discoverRankingTabFragment, DiscoverModule module) {
            super(discoverRankingTabFragment);
            int i10;
            String string;
            Intrinsics.checkNotNullParameter(module, "module");
            this.f45959l = discoverRankingTabFragment;
            this.f45956i = module;
            String str = "";
            this.f45958k = "";
            Bundle arguments = discoverRankingTabFragment.getArguments();
            if (arguments != null) {
                i10 = arguments.getInt("parent_tab_id");
            } else {
                i10 = 0;
            }
            this.f45957j = i10;
            Bundle arguments2 = discoverRankingTabFragment.getArguments();
            if (arguments2 != null && (string = arguments2.getString("parent_tab_name")) != null) {
                str = string;
            }
            this.f45958k = str;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NotNull
        public Fragment createFragment(int i10) {
            DiscoverRanking discoverRanking;
            int i11;
            Integer id2;
            List<DiscoverRanking> rankingNameList = this.f45956i.getRankingNameList();
            if (rankingNameList != null) {
                discoverRanking = (DiscoverRanking) CollectionsKt.t0(rankingNameList, i10);
            } else {
                discoverRanking = null;
            }
            DiscoverRankingFragment.a aVar = DiscoverRankingFragment.D;
            if (discoverRanking != null && (id2 = discoverRanking.getId()) != null) {
                i11 = id2.intValue();
            } else {
                i11 = 0;
            }
            return aVar.a(i11, (discoverRanking == null || (r9 = discoverRanking.getName()) == null) ? "" : "", this.f45957j, this.f45958k, DiscoverModuleAdapter.C.a(this.f45956i.getStyle()), this.f45956i.getBannerId(), this.f45956i.getTitle());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<DiscoverRanking> rankingNameList = this.f45956i.getRankingNameList();
            if (rankingNameList != null) {
                return rankingNameList.size();
            }
            return 0;
        }
    }

    /* compiled from: DiscoverRankingTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean c(Bundle bundle) {
            if (bundle != null) {
                return bundle.getBoolean("parent_tab_show");
            }
            return true;
        }

        @NotNull
        public final DiscoverRankingTabFragment b(boolean z10, int i10, @NotNull String parentTabName) {
            Intrinsics.checkNotNullParameter(parentTabName, "parentTabName");
            DiscoverRankingTabFragment discoverRankingTabFragment = new DiscoverRankingTabFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean("parent_tab_show", z10);
            bundle.putInt("parent_tab_id", i10);
            bundle.putString("parent_tab_name", parentTabName);
            discoverRankingTabFragment.setArguments(bundle);
            return discoverRankingTabFragment;
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverRankingTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45960a;

        b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45960a = function;
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
            return this.f45960a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45960a.invoke(obj);
        }
    }

    /* compiled from: DiscoverRankingTabFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements SelectableAdapter.d<SelectableItem> {
        c() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, SelectableItem d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            DiscoverRankingTabFragment.Z(DiscoverRankingTabFragment.this).f39469b.setSelectedIndex(i10);
            DiscoverRankingTabFragment.Z(DiscoverRankingTabFragment.this).f39470c.setCurrentItem(i10);
        }
    }

    public static final /* synthetic */ FragmentDiscoverRankingTabBinding Z(DiscoverRankingTabFragment discoverRankingTabFragment) {
        return (FragmentDiscoverRankingTabBinding) discoverRankingTabFragment.A();
    }

    private final DiscoverTabFragment b0(Fragment fragment) {
        if (fragment == null) {
            return null;
        }
        if (fragment instanceof DiscoverTabFragment) {
            return (DiscoverTabFragment) fragment;
        }
        return b0(fragment.getParentFragment());
    }

    private final RankingTabViewModel c0() {
        return (RankingTabViewModel) this.f45953q.getValue();
    }

    private final void d0() {
        int J;
        int t10;
        if (f45950t.c(getArguments())) {
            DeviceUtil deviceUtil = DeviceUtil.f48146a;
            J = deviceUtil.J() + deviceUtil.u();
            t10 = deviceUtil.t();
        } else {
            DeviceUtil deviceUtil2 = DeviceUtil.f48146a;
            J = deviceUtil2.J();
            t10 = deviceUtil2.t();
        }
        int i10 = J + t10;
        TabView tabView = ((FragmentDiscoverRankingTabBinding) A()).f39469b;
        Intrinsics.checkNotNullExpressionValue(tabView, "tabView");
        jk.b0.i(tabView, 0, i10, 0, 0, 13, null);
    }

    private final void e0() {
        String str;
        DiscoverTabFragment b02 = b0(getParentFragment());
        if (b02 != null) {
            str = b02.I0();
        } else {
            str = null;
        }
        str = (str == null || str.length() == 0) ? "tab_ranking" : "tab_ranking";
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ranking_list_show", bundle, 0L, 4, null);
    }

    private final void g0() {
        DiscoverModule C;
        List<DiscoverRanking> rankingNameList;
        DiscoverTabFragment b02 = b0(getParentFragment());
        if (b02 == null || (C = c0().C()) == null || (rankingNameList = C.getRankingNameList()) == null) {
            return;
        }
        int i10 = -1;
        int i11 = 0;
        for (Object obj : rankingNameList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.y();
            }
            int J0 = b02.J0();
            Integer id2 = ((DiscoverRanking) obj).getId();
            if (id2 != null && J0 == id2.intValue()) {
                i10 = i11;
            }
            i11 = i12;
        }
        if (i10 >= 0 && ((FragmentDiscoverRankingTabBinding) A()).f39470c.getCurrentItem() != i10) {
            ((FragmentDiscoverRankingTabBinding) A()).f39470c.setCurrentItem(i10, false);
        }
        e0();
        b02.g1("");
        b02.h1(0);
    }

    private final void h0(DiscoverModule discoverModule) {
        List<DiscoverRanking> rankingNameList;
        DiscoverTabFragment b02 = b0(getParentFragment());
        if (b02 == null || (rankingNameList = discoverModule.getRankingNameList()) == null) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        for (Object obj : rankingNameList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.y();
            }
            DiscoverRanking discoverRanking = (DiscoverRanking) obj;
            discoverRanking.setClickable(true);
            int J0 = b02.J0();
            Integer id2 = discoverRanking.getId();
            if (id2 != null && J0 == id2.intValue()) {
                i10 = i11;
            }
            i11 = i12;
        }
        ((FragmentDiscoverRankingTabBinding) A()).f39470c.setAdapter(new PagerAdapter(this, discoverModule));
        ((FragmentDiscoverRankingTabBinding) A()).f39470c.setCurrentItem(i10, false);
        ((FragmentDiscoverRankingTabBinding) A()).f39470c.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverRankingTabFragment$updateTabView$2
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i13) {
                DiscoverRankingTabFragment.Z(DiscoverRankingTabFragment.this).f39469b.setSelectedIndex(i13);
            }
        });
        SelectableAdapter selectableAdapter = new SelectableAdapter(R$layout.item_discover_ranking_tab);
        selectableAdapter.J(new c());
        TabView tabView = ((FragmentDiscoverRankingTabBinding) A()).f39469b;
        Context context = ((FragmentDiscoverRankingTabBinding) A()).f39469b.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        tabView.a(rankingNameList, selectableAdapter, null, new CatchExceptionLinearLayoutManager(context, 0, false));
        ((FragmentDiscoverRankingTabBinding) A()).f39469b.setSelectedIndex(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RankingTabViewModel i0(final DiscoverRankingTabFragment discoverRankingTabFragment) {
        RankingTabViewModel rankingTabViewModel = (RankingTabViewModel) new ViewModelProvider(discoverRankingTabFragment).get(RankingTabViewModel.class);
        rankingTabViewModel.o().observe(discoverRankingTabFragment, new b(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.s0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit j02;
                j02 = DiscoverRankingTabFragment.j0(DiscoverRankingTabFragment.this, (ApiErrorState) obj);
                return j02;
            }
        }));
        rankingTabViewModel.D().observe(discoverRankingTabFragment, new b(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.t0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k02;
                k02 = DiscoverRankingTabFragment.k0(DiscoverRankingTabFragment.this, (com.startshorts.androidplayer.viewmodel.discover.h) obj);
                return k02;
            }
        }));
        return rankingTabViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(DiscoverRankingTabFragment discoverRankingTabFragment, ApiErrorState apiErrorState) {
        discoverRankingTabFragment.K();
        if (apiErrorState.getState() == 1) {
            discoverRankingTabFragment.U();
        } else {
            discoverRankingTabFragment.V(apiErrorState.getMsg());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(DiscoverRankingTabFragment discoverRankingTabFragment, com.startshorts.androidplayer.viewmodel.discover.h hVar) {
        List<DiscoverRanking> rankingNameList;
        if (hVar instanceof h.b) {
            discoverRankingTabFragment.K();
            h.b bVar = (h.b) hVar;
            if (bVar.a() != null && (rankingNameList = bVar.a().getRankingNameList()) != null && !rankingNameList.isEmpty()) {
                discoverRankingTabFragment.J();
                discoverRankingTabFragment.h0(bVar.a());
            } else {
                discoverRankingTabFragment.S();
            }
        } else if (hVar instanceof h.a) {
            h.a aVar = (h.a) hVar;
            if (aVar.a().getState() == 1) {
                discoverRankingTabFragment.U();
            } else {
                discoverRankingTabFragment.V(aVar.a().getMsg());
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        int i10;
        Bundle arguments = getArguments();
        if (arguments != null) {
            i10 = arguments.getInt("parent_tab_id");
        } else {
            i10 = 0;
        }
        c0().E(new g.a(i10));
    }

    @Nullable
    public final List<DiscoverShorts> a0(int i10) {
        return c0().B(i10);
    }

    public final void f0(int i10, @Nullable List<DiscoverShorts> list) {
        c0().I(i10, list);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.f45954r;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        DiscoverTabFragment.b bVar;
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        DiscoverTabFragment b02 = b0(getParentFragment());
        if (b02 != null) {
            bVar = b02.C0();
        } else {
            bVar = null;
        }
        this.f45952p = bVar;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        DiscoverTabFragment.b bVar = this.f45952p;
        if (bVar != null) {
            bVar.b(0.0f, true);
        }
        if (this.f45951o) {
            g0();
            return;
        }
        this.f45951o = true;
        d0();
        R();
        e0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return this.f45955s;
    }
}
