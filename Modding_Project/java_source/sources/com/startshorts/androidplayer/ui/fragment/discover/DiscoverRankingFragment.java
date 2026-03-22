package com.startshorts.androidplayer.ui.fragment.discover;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.discover.DiscoverRankingNewAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.databinding.FragmentDiscoverRankingBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.PageStateFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.viewmodel.ranking.RankingViewModel;
import com.startshorts.androidplayer.viewmodel.ranking.a;
import com.startshorts.androidplayer.viewmodel.ranking.b;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverRankingFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiscoverRankingFragment extends PageStateFragment<FragmentDiscoverRankingBinding> {
    @NotNull
    public static final a D = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private int f45935o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private String f45936p;

    /* renamed from: q  reason: collision with root package name */
    private int f45937q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f45938r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private String f45939s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f45940t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f45941u;

    /* renamed from: w  reason: collision with root package name */
    private boolean f45943w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private DiscoverTabFragment.b f45944x;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private DiscoverRankingNewAdapter f45942v = new DiscoverRankingNewAdapter(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.m0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Bundle e02;
            e02 = DiscoverRankingFragment.e0(DiscoverRankingFragment.this);
            return e02;
        }
    });
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private final ms.i f45945y = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.n0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            RankingViewModel l02;
            l02 = DiscoverRankingFragment.l0(DiscoverRankingFragment.this);
            return l02;
        }
    });

    /* renamed from: z  reason: collision with root package name */
    private final boolean f45946z = true;
    private final int A = R$layout.fragment_discover_ranking;
    private final int B = R$layout.viewstub_page_state_empty_lib;
    @NotNull
    private final String C = "DiscoverRankingFragment";

    /* compiled from: DiscoverRankingFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DiscoverRankingFragment a(int i10, @NotNull String tabName, int i11, @NotNull String parentTabName, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            Intrinsics.checkNotNullParameter(tabName, "tabName");
            Intrinsics.checkNotNullParameter(parentTabName, "parentTabName");
            DiscoverRankingFragment discoverRankingFragment = new DiscoverRankingFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("tabId", i10);
            bundle.putString("tabName", tabName);
            bundle.putInt("parentTabId", i11);
            bundle.putString("parentTabName", parentTabName);
            bundle.putString("moduleType", str);
            bundle.putString("moduleId", str2);
            bundle.putString(TextureRenderKeys.KEY_MODULE_NAME, str3);
            discoverRankingFragment.setArguments(bundle);
            return discoverRankingFragment;
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverRankingFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45947a;

        b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45947a = function;
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
            return this.f45947a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45947a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle e0(DiscoverRankingFragment discoverRankingFragment) {
        Bundle bundle = new Bundle();
        bundle.putInt("ranking_list_zi_id", discoverRankingFragment.f45935o);
        bundle.putString("ranking_list_zi_name", discoverRankingFragment.f45936p);
        return bundle;
    }

    private final DiscoverTabFragment f0(Fragment fragment) {
        if (fragment == null) {
            return null;
        }
        if (fragment instanceof DiscoverTabFragment) {
            return (DiscoverTabFragment) fragment;
        }
        return f0(fragment.getParentFragment());
    }

    private final RankingViewModel g0() {
        return (RankingViewModel) this.f45945y.getValue();
    }

    private final void h0() {
        R();
    }

    private final void i0() {
        this.f45942v.f(new SimpleViewHolder.c() { // from class: com.startshorts.androidplayer.ui.fragment.discover.o0
            @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder.c
            public final void a(View view, int i10, Object obj) {
                DiscoverRankingFragment.j0(DiscoverRankingFragment.this, view, i10, (DiscoverShorts) obj);
            }
        });
        final int a10 = jk.g.a(8.0f);
        ((FragmentDiscoverRankingBinding) A()).f39463b.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverRankingFragment$initView$2
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                int i10 = a10;
                outRect.set(0, i10, 0, i10);
            }
        });
        ((FragmentDiscoverRankingBinding) A()).f39463b.setLayoutManager(new LinearLayoutManager(getContext()));
        ((FragmentDiscoverRankingBinding) A()).f39463b.setAdapter(this.f45942v);
        ((FragmentDiscoverRankingBinding) A()).f39463b.clearOnScrollListeners();
        ((FragmentDiscoverRankingBinding) A()).f39463b.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverRankingFragment$initView$3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                boolean z10;
                DiscoverTabFragment.b bVar;
                DiscoverTabFragment.b bVar2;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if (i10 == 1 || i10 == 2) {
                    z10 = DiscoverRankingFragment.this.f45943w;
                    if (!z10) {
                        DiscoverRankingFragment.this.f45943w = true;
                        kk.f.f60747a.r();
                        bVar = DiscoverRankingFragment.this.f45944x;
                        if (bVar != null) {
                            bVar.e();
                            return;
                        }
                        return;
                    }
                }
                if (i10 == 0) {
                    DiscoverRankingFragment.this.f45943w = false;
                    kk.f.f60747a.y();
                    bVar2 = DiscoverRankingFragment.this.f45944x;
                    if (bVar2 != null) {
                        bVar2.d();
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(DiscoverRankingFragment discoverRankingFragment, View view, int i10, DiscoverShorts discoverShorts) {
        if (discoverShorts == null) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putInt("ranking_list_zi_id", discoverRankingFragment.f45935o);
        bundle.putString("ranking_list_zi_name", discoverRankingFragment.f45936p);
        bundle.putString("module_name", discoverRankingFragment.f45941u);
        bundle.putString("module_id", discoverRankingFragment.f45940t);
        int i11 = 1;
        int i12 = i10 + 1;
        bundle.putString("position_id", String.valueOf(i12));
        bundle.putString("module_type", discoverRankingFragment.f45939s);
        bundle.putString("type", "positive");
        bundle.putString("reel_id", discoverShorts.getShortPlayCode());
        if (!TextUtils.isEmpty(discoverShorts.getUpack())) {
            bundle.putString("upack", discoverShorts.getUpack());
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "discover_module_click", bundle, 0L, 4, null);
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = discoverRankingFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("discover_more");
        if (discoverShorts.getEpisodeNum() == 0) {
            i11 = 3;
        }
        immersionParams.setType(i11);
        if (discoverShorts.getEpisodeNum() != 0) {
            immersionParams.setEpisodeNum(discoverShorts.getEpisodeNum());
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(discoverShorts.getId());
        immersionShortsInfo.setShortPlayCode(discoverShorts.getShortPlayCode());
        immersionShortsInfo.setShortsName(discoverShorts.getShortPlayName());
        immersionShortsInfo.setCover(discoverShorts.getPicUrl());
        immersionShortsInfo.setUpack(discoverShorts.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        immersionParams.setModuleInfo(ModuleInfo.Companion.create$default(ModuleInfo.Companion, discoverRankingFragment.f45939s, discoverRankingFragment.f45940t, discoverRankingFragment.f45941u, i12, new DiscoverRanking(Integer.valueOf(discoverRankingFragment.f45935o), discoverRankingFragment.f45936p), new DiscoverTab(Integer.valueOf(discoverRankingFragment.f45937q), null, discoverRankingFragment.f45938r, null, null, null, 58, null), discoverShorts.getShortPlayCode(), null, null, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, null));
        aVar.a(requireContext, immersionParams);
    }

    private final void k0(int i10, int i11) {
        DiscoverRankingTabFragment discoverRankingTabFragment;
        List<DiscoverShorts> list;
        if (!g0().C().a(i10, true)) {
            return;
        }
        if (i10 == 0) {
            T();
            this.f45942v.c();
        }
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof DiscoverRankingTabFragment) {
            discoverRankingTabFragment = (DiscoverRankingTabFragment) parentFragment;
        } else {
            discoverRankingTabFragment = null;
        }
        if (discoverRankingTabFragment != null) {
            list = discoverRankingTabFragment.a0(this.f45935o);
        } else {
            list = null;
        }
        if (list != null) {
            g0().C().g(list, 1);
            g0().C().f();
            jk.o.b(g0().B(), new b.C0678b(i10, list, true));
            return;
        }
        g0().D(new a.C0677a(this.f45935o, null, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RankingViewModel l0(final DiscoverRankingFragment discoverRankingFragment) {
        RankingViewModel rankingViewModel = (RankingViewModel) new ViewModelProvider(discoverRankingFragment).get(RankingViewModel.class);
        rankingViewModel.o().observe(discoverRankingFragment, new b(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.p0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m02;
                m02 = DiscoverRankingFragment.m0(DiscoverRankingFragment.this, (ApiErrorState) obj);
                return m02;
            }
        }));
        rankingViewModel.B().observe(discoverRankingFragment, new b(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit n02;
                n02 = DiscoverRankingFragment.n0(DiscoverRankingFragment.this, (com.startshorts.androidplayer.viewmodel.ranking.b) obj);
                return n02;
            }
        }));
        return rankingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(DiscoverRankingFragment discoverRankingFragment, ApiErrorState apiErrorState) {
        discoverRankingFragment.K();
        if (apiErrorState.getState() == 1) {
            discoverRankingFragment.U();
        } else {
            discoverRankingFragment.V(apiErrorState.getMsg());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n0(DiscoverRankingFragment discoverRankingFragment, com.startshorts.androidplayer.viewmodel.ranking.b bVar) {
        DiscoverRankingTabFragment discoverRankingTabFragment;
        if (bVar instanceof b.C0678b) {
            discoverRankingFragment.K();
            b.C0678b c0678b = (b.C0678b) bVar;
            if (c0678b.b() == 0 || c0678b.b() == 1) {
                discoverRankingFragment.f45942v.c();
            }
            discoverRankingFragment.f45942v.b(c0678b.a());
            if (discoverRankingFragment.f45942v.g() == 0) {
                discoverRankingFragment.S();
            } else {
                discoverRankingFragment.J();
            }
            Fragment parentFragment = discoverRankingFragment.getParentFragment();
            if (parentFragment instanceof DiscoverRankingTabFragment) {
                discoverRankingTabFragment = (DiscoverRankingTabFragment) parentFragment;
            } else {
                discoverRankingTabFragment = null;
            }
            if (discoverRankingTabFragment != null) {
                discoverRankingTabFragment.f0(discoverRankingFragment.f45935o, c0678b.a());
            }
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            if (aVar.b() == 0) {
                discoverRankingFragment.K();
                if (aVar.a().getState() == 1) {
                    discoverRankingFragment.U();
                } else {
                    discoverRankingFragment.V(aVar.a().getMsg());
                }
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return this.B;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        T();
        k0(0, 1);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.A;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        DiscoverTabFragment.b bVar;
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        DiscoverTabFragment f02 = f0(getParentFragment());
        if (f02 != null) {
            bVar = f02.C0();
        } else {
            bVar = null;
        }
        this.f45944x = bVar;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f45935o = arguments.getInt("tabId");
            this.f45936p = arguments.getString("tabName");
            this.f45937q = arguments.getInt("parentTabId");
            this.f45938r = arguments.getString("parentTabName");
            this.f45939s = arguments.getString("moduleType");
            this.f45940t = arguments.getString("moduleId");
            this.f45941u = arguments.getString(TextureRenderKeys.KEY_MODULE_NAME);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return this.f45946z;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return this.C;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        super.t();
        i0();
        h0();
    }
}
