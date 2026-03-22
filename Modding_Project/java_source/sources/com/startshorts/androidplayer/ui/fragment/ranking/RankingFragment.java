package com.startshorts.androidplayer.ui.fragment.ranking;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import au.l;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.ranking.RankingAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.databinding.FragmentRankingBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.activity.ranking.RankingActivity;
import com.startshorts.androidplayer.ui.fragment.base.PageStateFragment;
import com.startshorts.androidplayer.ui.fragment.ranking.RankingFragment;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
import com.startshorts.androidplayer.viewmodel.ranking.RankingViewModel;
import com.startshorts.androidplayer.viewmodel.ranking.a;
import com.startshorts.androidplayer.viewmodel.ranking.b;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import ms.f;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RankingFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RankingFragment extends PageStateFragment<FragmentRankingBinding> {
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    public static final a f46649y = new a(null);

    /* renamed from: q  reason: collision with root package name */
    private int f46652q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f46653r;

    /* renamed from: s  reason: collision with root package name */
    private int f46654s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f46655t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f46656u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private String f46657v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private String f46658w;

    /* renamed from: o  reason: collision with root package name */
    private final int f46650o = R$layout.fragment_ranking;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private RankingAdapter f46651p = new RankingAdapter(new Function0() { // from class: ui.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Bundle c02;
            c02 = RankingFragment.c0(RankingFragment.this);
            return c02;
        }
    });
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final i f46659x = c.b(new Function0() { // from class: ui.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            RankingViewModel j02;
            j02 = RankingFragment.j0(RankingFragment.this);
            return j02;
        }
    });

    /* compiled from: RankingFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RankingFragment a(int i10, @NotNull String rankingName, int i11, @NotNull String tabName, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            Intrinsics.checkNotNullParameter(rankingName, "rankingName");
            Intrinsics.checkNotNullParameter(tabName, "tabName");
            RankingFragment rankingFragment = new RankingFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("rankingId", i10);
            bundle.putString("rankingName", rankingName);
            bundle.putInt("tabId", i11);
            bundle.putString("tabName", tabName);
            bundle.putString("moduleType", str);
            bundle.putString("moduleId", str2);
            bundle.putString(TextureRenderKeys.KEY_MODULE_NAME, str3);
            rankingFragment.setArguments(bundle);
            return rankingFragment;
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankingFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46660a;

        b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46660a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f46660a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46660a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle c0(RankingFragment rankingFragment) {
        RankingActivity rankingActivity;
        FragmentActivity activity = rankingFragment.getActivity();
        if (activity instanceof RankingActivity) {
            rankingActivity = (RankingActivity) activity;
        } else {
            rankingActivity = null;
        }
        if (rankingActivity == null) {
            return null;
        }
        return rankingActivity.P();
    }

    private final RankingViewModel d0() {
        return (RankingViewModel) this.f46659x.getValue();
    }

    private final void e0() {
        R();
    }

    private final void f0() {
        this.f46651p.f(new SimpleViewHolder.c() { // from class: ui.c
            @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder.c
            public final void a(View view, int i10, Object obj) {
                RankingFragment.g0(RankingFragment.this, view, i10, (DiscoverShorts) obj);
            }
        });
        ((FragmentRankingBinding) A()).f39602b.setLayoutManager(new LinearLayoutManager(getContext()));
        ((FragmentRankingBinding) A()).f39602b.setLoadMoreListener(new LoadMoreRecyclerView.b() { // from class: ui.d
            @Override // com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView.b
            public final void a() {
                RankingFragment.h0(RankingFragment.this);
            }
        });
        ((FragmentRankingBinding) A()).f39602b.setAdapter(this.f46651p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(RankingFragment rankingFragment, View view, int i10, DiscoverShorts discoverShorts) {
        if (discoverShorts == null) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        int i11 = rankingFragment.f46654s;
        if (i11 > 0) {
            bundle.putString("tab_id", String.valueOf(i11));
        }
        if (!TextUtils.isEmpty(rankingFragment.f46655t)) {
            bundle.putString("tab_name", rankingFragment.f46655t);
        }
        bundle.putString("module_name", rankingFragment.f46658w);
        bundle.putString("module_id", rankingFragment.f46657v);
        bundle.putString("scene", "discover_more");
        int i12 = 1;
        int i13 = i10 + 1;
        bundle.putString("position_id", String.valueOf(i13));
        bundle.putString("module_type", rankingFragment.f46656u);
        bundle.putString("type", "positive");
        bundle.putString("reel_id", discoverShorts.getShortPlayCode());
        if (!TextUtils.isEmpty(discoverShorts.getUpack())) {
            bundle.putString("upack", discoverShorts.getUpack());
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "discover_module_click", bundle, 0L, 4, null);
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = rankingFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("discover_more");
        if (discoverShorts.getEpisodeNum() == 0) {
            i12 = 3;
        }
        immersionParams.setType(i12);
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
        immersionParams.setModuleInfo(ModuleInfo.Companion.create$default(ModuleInfo.Companion, rankingFragment.f46656u, rankingFragment.f46657v, rankingFragment.f46658w, i13, new DiscoverRanking(Integer.valueOf(rankingFragment.f46652q), rankingFragment.f46653r), new DiscoverTab(Integer.valueOf(rankingFragment.f46654s), null, rankingFragment.f46655t, null, null, null, 58, null), discoverShorts.getShortPlayCode(), null, null, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, null));
        aVar.a(requireContext, immersionParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(RankingFragment rankingFragment) {
        rankingFragment.i0(2, rankingFragment.d0().C().b() + 1);
    }

    private final void i0(int i10, int i11) {
        RankingActivity rankingActivity;
        int i12;
        if (!d0().C().a(i10, true)) {
            return;
        }
        if (i10 == 0) {
            T();
            this.f46651p.c();
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof RankingActivity) {
            rankingActivity = (RankingActivity) activity;
        } else {
            rankingActivity = null;
        }
        if (rankingActivity != null) {
            i12 = rankingActivity.R();
        } else {
            i12 = 0;
        }
        d0().D(new a.C0677a(this.f46652q, Integer.valueOf(i12), i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RankingViewModel j0(final RankingFragment rankingFragment) {
        RankingViewModel rankingViewModel = (RankingViewModel) new ViewModelProvider(rankingFragment).get(RankingViewModel.class);
        rankingViewModel.o().observe(rankingFragment, new b(new Function1() { // from class: ui.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k02;
                k02 = RankingFragment.k0(RankingFragment.this, (ApiErrorState) obj);
                return k02;
            }
        }));
        rankingViewModel.B().observe(rankingFragment, new b(new Function1() { // from class: ui.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit l02;
                l02 = RankingFragment.l0(RankingFragment.this, (com.startshorts.androidplayer.viewmodel.ranking.b) obj);
                return l02;
            }
        }));
        return rankingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(RankingFragment rankingFragment, ApiErrorState apiErrorState) {
        rankingFragment.K();
        if (apiErrorState.getState() == 1) {
            rankingFragment.U();
        } else {
            rankingFragment.V(apiErrorState.getMsg());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(RankingFragment rankingFragment, com.startshorts.androidplayer.viewmodel.ranking.b bVar) {
        if (bVar instanceof b.C0678b) {
            rankingFragment.K();
            b.C0678b c0678b = (b.C0678b) bVar;
            if (c0678b.b() == 0 || c0678b.b() == 1) {
                rankingFragment.f46651p.c();
            }
            rankingFragment.f46651p.b(c0678b.a());
            if (rankingFragment.f46651p.g() == 0) {
                rankingFragment.S();
                rankingFragment.f46651p.n(true);
            } else {
                rankingFragment.J();
                rankingFragment.f46651p.n(false);
                rankingFragment.f46651p.k(c0678b.c());
            }
            ((FragmentRankingBinding) rankingFragment.A()).f39602b.setVisibility(0);
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            if (aVar.b() == 0) {
                rankingFragment.K();
                if (aVar.a().getState() == 1) {
                    rankingFragment.U();
                } else {
                    rankingFragment.V(aVar.a().getMsg());
                }
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_page_state_empty_lib;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        T();
        i0(0, 1);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.f46650o;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        int i10;
        String str;
        String str2;
        String str3;
        String str4;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        int i11 = 0;
        if (arguments != null) {
            i10 = arguments.getInt("rankingId");
        } else {
            i10 = 0;
        }
        this.f46652q = i10;
        Bundle arguments2 = getArguments();
        String str5 = null;
        if (arguments2 != null) {
            str = arguments2.getString("rankingName");
        } else {
            str = null;
        }
        this.f46653r = str;
        Bundle arguments3 = getArguments();
        if (arguments3 != null) {
            i11 = arguments3.getInt("tabId");
        }
        this.f46654s = i11;
        Bundle arguments4 = getArguments();
        if (arguments4 != null) {
            str2 = arguments4.getString("tabName");
        } else {
            str2 = null;
        }
        this.f46655t = str2;
        Bundle arguments5 = getArguments();
        if (arguments5 != null) {
            str3 = arguments5.getString("moduleType");
        } else {
            str3 = null;
        }
        this.f46656u = str3;
        Bundle arguments6 = getArguments();
        if (arguments6 != null) {
            str4 = arguments6.getString("moduleId");
        } else {
            str4 = null;
        }
        this.f46657v = str4;
        Bundle arguments7 = getArguments();
        if (arguments7 != null) {
            str5 = arguments7.getString(TextureRenderKeys.KEY_MODULE_NAME);
        }
        this.f46658w = str5;
        f0();
        e0();
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void refreshEpisodeNumEvent(@NotNull RefreshEpisodeNumEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f46651p.r(event.getShortsId(), event.getEpisodeNum());
    }
}
