package com.startshorts.androidplayer.adapter.discover;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.State;
import com.hades.aar.pagestate.StateViewGroup;
import com.ss.ttvideoengine.model.VideoRef;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverRankingViewPagerItemAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.PlayListDiscoverRanking;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingMulTagBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverRankingPageItemBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView;
import com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.exposure.ExposureLayout;
import com.startshorts.androidplayer.utils.ext.LifeCycleExtKt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverRankingViewPagerItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,348:1\n295#2,2:349\n1#3:351\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter\n*L\n159#1:349,2\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverRankingViewPagerItemAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final a f37533u = new a(null);

    /* renamed from: v  reason: collision with root package name */
    private static final int f37534v = jk.g.a(80.0f);

    /* renamed from: w  reason: collision with root package name */
    private static final int f37535w = jk.g.a(106.0f);

    /* renamed from: x  reason: collision with root package name */
    private static final float f37536x = jk.g.a(4.0f);

    /* renamed from: y  reason: collision with root package name */
    private static final int f37537y = fk.z.f51786a.n();
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ItemDiscoverRankingPageItemBinding f37538o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37539p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final DiscoverModule f37540q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final DiscoverModuleAdapter.n f37541r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private kotlinx.coroutines.r f37542s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final MutableLiveData<b> f37543t;

    /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static abstract class b {

        /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends b {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final DiscoverRanking f37544a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            private final ResponseException f37545b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(@NotNull DiscoverRanking ranking, @NotNull ResponseException responseException) {
                super(null);
                Intrinsics.checkNotNullParameter(ranking, "ranking");
                Intrinsics.checkNotNullParameter(responseException, "responseException");
                this.f37544a = ranking;
                this.f37545b = responseException;
            }

            @NotNull
            public final DiscoverRanking a() {
                return this.f37544a;
            }

            @NotNull
            public final ResponseException b() {
                return this.f37545b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                if (Intrinsics.areEqual(this.f37544a, aVar.f37544a) && Intrinsics.areEqual(this.f37545b, aVar.f37545b)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (this.f37544a.hashCode() * 31) + this.f37545b.hashCode();
            }

            @NotNull
            public String toString() {
                return "RankingFailed(ranking=" + this.f37544a + ", responseException=" + this.f37545b + ')';
            }
        }

        /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.adapter.discover.DiscoverRankingViewPagerItemAdapter$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0609b extends b {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final DiscoverRanking f37546a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0609b(@NotNull DiscoverRanking ranking) {
                super(null);
                Intrinsics.checkNotNullParameter(ranking, "ranking");
                this.f37546a = ranking;
            }

            @NotNull
            public final DiscoverRanking a() {
                return this.f37546a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof C0609b) && Intrinsics.areEqual(this.f37546a, ((C0609b) obj).f37546a)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return this.f37546a.hashCode();
            }

            @NotNull
            public String toString() {
                return "RankingLoadingStart(ranking=" + this.f37546a + ')';
            }
        }

        /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class c extends b {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final DiscoverRanking f37547a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            private final List<DiscoverShorts> f37548b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(@NotNull DiscoverRanking ranking, @NotNull List<DiscoverShorts> shorts) {
                super(null);
                Intrinsics.checkNotNullParameter(ranking, "ranking");
                Intrinsics.checkNotNullParameter(shorts, "shorts");
                this.f37547a = ranking;
                this.f37548b = shorts;
            }

            @NotNull
            public final DiscoverRanking a() {
                return this.f37547a;
            }

            @NotNull
            public final List<DiscoverShorts> b() {
                return this.f37548b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                if (Intrinsics.areEqual(this.f37547a, cVar.f37547a) && Intrinsics.areEqual(this.f37548b, cVar.f37548b)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (this.f37547a.hashCode() * 31) + this.f37548b.hashCode();
            }

            @NotNull
            public String toString() {
                return "RankingSucceed(ranking=" + this.f37547a + ", shorts=" + this.f37548b + ')';
            }
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverRankingMulTagBinding f37549g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final Integer[] f37550h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverRankingViewPagerItemAdapter f37551i;

        /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a implements ik.c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DiscoverRankingViewPagerItemAdapter f37552a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ DiscoverShorts f37553b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ c f37554c;

            a(DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter, DiscoverShorts discoverShorts, c cVar) {
                this.f37552a = discoverRankingViewPagerItemAdapter;
                this.f37553b = discoverShorts;
                this.f37554c = cVar;
            }

            @Override // ik.c
            public void show() {
                MainActivity mainActivity;
                DiscoverTabFragment f02;
                Context context = this.f37552a.f37538o.getRoot().getContext();
                DiscoverTab discoverTab = null;
                if (context instanceof MainActivity) {
                    mainActivity = (MainActivity) context;
                } else {
                    mainActivity = null;
                }
                if (mainActivity != null && (f02 = mainActivity.f0()) != null) {
                    discoverTab = f02.H0();
                }
                ag.a aVar = ag.a.f646a;
                DiscoverShorts discoverShorts = this.f37553b;
                DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter = this.f37552a;
                discoverShorts.setModuleId(discoverRankingViewPagerItemAdapter.f37540q.getBannerId());
                discoverShorts.setModuleName(discoverRankingViewPagerItemAdapter.f37540q.getTitle());
                ag.a.c(aVar, discoverShorts, this.f37554c.getLayoutPosition(), 0, discoverTab, this.f37552a.Q(), null, null, null, VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266, null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter, ItemDiscoverRankingMulTagBinding binding) {
            super(discoverRankingViewPagerItemAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37551i = discoverRankingViewPagerItemAdapter;
            this.f37549g = binding;
            this.f37550h = new Integer[]{Integer.valueOf(R$drawable.ic_rank_top1), Integer.valueOf(R$drawable.ic_rank_top2), Integer.valueOf(R$drawable.ic_rank_top3), Integer.valueOf(R$drawable.ic_rank_mark4), Integer.valueOf(R$drawable.ic_rank_mark5), Integer.valueOf(R$drawable.ic_rank_mark6), Integer.valueOf(R$drawable.ic_rank_mark7), Integer.valueOf(R$drawable.ic_rank_mark8), Integer.valueOf(R$drawable.ic_rank_mark9), Integer.valueOf(R$drawable.ic_rank_mark10), Integer.valueOf(R$drawable.ic_rank_mark11), Integer.valueOf(R$drawable.ic_rank_mark12), Integer.valueOf(R$drawable.ic_rank_mark13), Integer.valueOf(R$drawable.ic_rank_mark14), Integer.valueOf(R$drawable.ic_rank_mark15), Integer.valueOf(R$drawable.ic_rank_mark16), Integer.valueOf(R$drawable.ic_rank_mark17), Integer.valueOf(R$drawable.ic_rank_mark18), Integer.valueOf(R$drawable.ic_rank_mark19), Integer.valueOf(R$drawable.ic_rank_mark20)};
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverRankingMulTagBinding c() {
            return this.f37549g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverShorts item) {
            String summary;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ExposureLayout exposureLayout = c().f40229b;
            DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter = this.f37551i;
            exposureLayout.setShowRatio(0.0f);
            exposureLayout.setTimeLimit(0);
            exposureLayout.setExposureCallback(new a(discoverRankingViewPagerItemAdapter, item, this));
            CustomFrescoView customFrescoView = c().f40228a;
            customFrescoView.setContentDescription(item.getShortPlayName() + ' ' + i10 + ' ' + item.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f40228a;
            FrescoConfig frescoConfig = new FrescoConfig();
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(DiscoverRankingViewPagerItemAdapter.f37534v);
            frescoConfig.setResizeHeight(DiscoverRankingViewPagerItemAdapter.f37535w);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(DiscoverRankingViewPagerItemAdapter.f37536x);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            c().f40233f.setText(item.getShortPlayName());
            BaseTextView baseTextView = c().f40232e;
            String recommendContent = item.getRecommendContent();
            if (recommendContent != null && recommendContent.length() != 0) {
                summary = item.getRecommendContent();
            } else {
                summary = item.getSummary();
            }
            baseTextView.setText(summary);
            DiscoverModuleAdapter.C.i(c().f40234g, item.getPlayNum());
            if (i10 >= 0 && i10 < 3) {
                c().f40231d.setImageResource(this.f37550h[i10].intValue());
                c().f40231d.setVisibility(0);
                c().f40230c.setVisibility(4);
            } else if (3 <= i10 && i10 < 20) {
                c().f40231d.setVisibility(4);
                c().f40230c.setImageResource(this.f37550h[i10].intValue());
                c().f40230c.setVisibility(0);
            } else {
                c().f40231d.setVisibility(4);
                c().f40230c.setVisibility(4);
            }
        }
    }

    /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class d implements la.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateViewGroup f37555a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f37556b;

        /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[State.values().length];
                try {
                    iArr[State.EMPTY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[State.NETWORK_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[State.OTHER_ERROR.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class b implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function0<Unit> f37557a;

            b(Function0<Unit> function0) {
                this.f37557a = function0;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f37557a.invoke();
            }
        }

        /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class c implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function0<Unit> f37558a;

            c(Function0<Unit> function0) {
                this.f37558a = function0;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f37558a.invoke();
            }
        }

        d(StateViewGroup stateViewGroup, Function0<Unit> function0) {
            this.f37555a = stateViewGroup;
            this.f37556b = function0;
        }

        @Override // la.a
        public void a(State state) {
            Object obj;
            la.b bVar;
            Intrinsics.checkNotNullParameter(state, "state");
            int i10 = a.$EnumSwitchMapping$0[state.ordinal()];
            SNetworkErrorView sNetworkErrorView = null;
            SOtherErrorView sOtherErrorView = null;
            if (i10 != 2) {
                if (i10 == 3) {
                    WeakReference<la.b> a10 = this.f37555a.a(State.OTHER_ERROR);
                    if (a10 != null) {
                        bVar = a10.get();
                    } else {
                        bVar = null;
                    }
                    if (bVar instanceof SOtherErrorView) {
                        sOtherErrorView = (SOtherErrorView) bVar;
                    }
                    if (sOtherErrorView != null) {
                        sOtherErrorView.setMOnRefreshListener(new c(this.f37556b));
                        return;
                    }
                    return;
                }
                return;
            }
            WeakReference<la.b> a11 = this.f37555a.a(State.NETWORK_ERROR);
            if (a11 != null) {
                obj = (la.b) a11.get();
            } else {
                obj = null;
            }
            if (obj instanceof SNetworkErrorView) {
                sNetworkErrorView = (SNetworkErrorView) obj;
            }
            if (sNetworkErrorView != null) {
                sNetworkErrorView.setMOnRefreshListener(new b(this.f37556b));
            }
        }
    }

    /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class e implements BaseAdapter.b<DiscoverShorts> {
        e() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, DiscoverShorts shorts, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(shorts, "shorts");
            DiscoverModuleAdapter.n P = DiscoverRankingViewPagerItemAdapter.this.P();
            if (P != null) {
                P.c(i10, shorts, "ranking_list_tag", DiscoverRankingViewPagerItemAdapter.this.f37540q, DiscoverRankingViewPagerItemAdapter.this.Q());
            }
        }
    }

    /* compiled from: DiscoverRankingViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    static final class f implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f37560a;

        f(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f37560a = function;
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
            return this.f37560a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f37560a.invoke(obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRankingViewPagerItemAdapter(@NotNull ItemDiscoverRankingPageItemBinding mBinding, int i10, @NotNull DiscoverModule module, @Nullable DiscoverModuleAdapter.n nVar) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(mBinding, "mBinding");
        Intrinsics.checkNotNullParameter(module, "module");
        this.f37538o = mBinding;
        this.f37539p = i10;
        this.f37540q = module;
        this.f37541r = nVar;
        this.f37543t = new MutableLiveData<>();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private final void N(ItemDiscoverRankingPageItemBinding itemDiscoverRankingPageItemBinding) {
        List<DiscoverShorts> S = S();
        if (S.size() == 0) {
            Logger.f41511a.h("DiscoverRankingViewPagerItemAdapter", "createBannerViewPager ignore -> shorts is empty");
            return;
        }
        m().clear();
        notifyDataSetChanged();
        RecyclerView recyclerView = new RecyclerView(itemDiscoverRankingPageItemBinding.getRoot().getContext());
        recyclerView.setId(R$id.recycler_view);
        itemDiscoverRankingPageItemBinding.f40254a.removeAllViews();
        itemDiscoverRankingPageItemBinding.f40254a.addView(recyclerView, new FrameLayout.LayoutParams(-1, -1));
        recyclerView.setClipChildren(false);
        recyclerView.setClipToPadding(false);
        recyclerView.setOverScrollMode(2);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(itemDiscoverRankingPageItemBinding.getRoot().getContext(), 3);
        gridLayoutManager.setOrientation(0);
        recyclerView.setLayoutManager(gridLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.adapter.discover.DiscoverRankingViewPagerItemAdapter$createRecyclerView$1$2
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                    Intrinsics.checkNotNullParameter(outRect, "outRect");
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(state, "state");
                    if (fk.v.f51778a.b()) {
                        outRect.set(jk.g.a(20.0f), 0, 0, jk.g.a(18.0f));
                    } else {
                        outRect.set(0, 0, jk.g.a(20.0f), jk.g.a(18.0f));
                    }
                }
            });
        }
        recyclerView.setAdapter(this);
        recyclerView.setImportantForAccessibility(2);
        BaseAdapter.D(this, S, false, 2, null);
    }

    private final List<DiscoverShorts> O() {
        Object obj;
        List<DiscoverShorts> shortPlayResponseList;
        List<PlayListDiscoverRanking> rankingResponseList = this.f37540q.getRankingResponseList();
        if (rankingResponseList != null) {
            Iterator<T> it = rankingResponseList.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((PlayListDiscoverRanking) obj).getRankingId(), R())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            PlayListDiscoverRanking playListDiscoverRanking = (PlayListDiscoverRanking) obj;
            if (playListDiscoverRanking != null && (shortPlayResponseList = playListDiscoverRanking.getShortPlayResponseList()) != null) {
                return shortPlayResponseList;
            }
        }
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DiscoverRanking Q() {
        b value = this.f37543t.getValue();
        if (value instanceof b.C0609b) {
            return ((b.C0609b) value).a();
        }
        if (value instanceof b.c) {
            return ((b.c) value).a();
        }
        if (value instanceof b.a) {
            return ((b.a) value).a();
        }
        return null;
    }

    private final Integer R() {
        DiscoverRanking Q = Q();
        if (Q != null) {
            return Q.getId();
        }
        return null;
    }

    private final List<DiscoverShorts> S() {
        b value = this.f37543t.getValue();
        if (value instanceof b.c) {
            return ((b.c) value).b();
        }
        return new ArrayList();
    }

    private final void T(StateViewGroup stateViewGroup, Function0<Unit> function0) {
        stateViewGroup.setMOnInflatedListener(new d(stateViewGroup, function0));
        stateViewGroup.f(R$layout.viewstub_page_state_gray_loading, State.LOADING);
        stateViewGroup.f(R$layout.viewstub_page_state_empty, State.EMPTY);
        stateViewGroup.f(R$layout.viewstub_page_state_network_error, State.NETWORK_ERROR);
        stateViewGroup.f(R$layout.viewstub_page_state_other_error, State.OTHER_ERROR);
    }

    private final void U(ItemDiscoverRankingPageItemBinding itemDiscoverRankingPageItemBinding, b bVar) {
        Object obj;
        la.b bVar2;
        StateViewGroup pageStateView = itemDiscoverRankingPageItemBinding.f40255b;
        Intrinsics.checkNotNullExpressionValue(pageStateView, "pageStateView");
        SOtherErrorView sOtherErrorView = null;
        SNetworkErrorView sNetworkErrorView = null;
        if (bVar instanceof b.C0609b) {
            List<DiscoverShorts> O = O();
            if (!O.isEmpty()) {
                jk.o.b(this.f37543t, new b.c(((b.C0609b) bVar).a(), O));
                return;
            }
            pageStateView.h(State.LOADING);
            pageStateView.setVisibility(0);
            kotlinx.coroutines.r rVar = this.f37542s;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            this.f37542s = CoroutineUtil.l(CoroutineUtil.f48072a, "fetchDiscoverRankingBanner", false, new DiscoverRankingViewPagerItemAdapter$observeRankingChangeState$1(this, bVar, null), 2, null);
        } else if (bVar instanceof b.c) {
            if (!((b.c) bVar).b().isEmpty()) {
                N(itemDiscoverRankingPageItemBinding);
                pageStateView.c(State.LOADING);
                pageStateView.setVisibility(8);
                return;
            }
            V(itemDiscoverRankingPageItemBinding);
            pageStateView.h(State.EMPTY);
        } else if (bVar instanceof b.a) {
            V(itemDiscoverRankingPageItemBinding);
            b.a aVar = (b.a) bVar;
            if (aVar.b().isNetworkError()) {
                State state = State.NETWORK_ERROR;
                pageStateView.h(state);
                WeakReference<la.b> a10 = pageStateView.a(state);
                if (a10 != null) {
                    bVar2 = a10.get();
                } else {
                    bVar2 = null;
                }
                if (bVar2 instanceof SNetworkErrorView) {
                    sNetworkErrorView = (SNetworkErrorView) bVar2;
                }
                if (sNetworkErrorView != null) {
                    sNetworkErrorView.v();
                    sNetworkErrorView.w(f37537y);
                }
            } else {
                State state2 = State.OTHER_ERROR;
                pageStateView.h(state2);
                WeakReference<la.b> a11 = pageStateView.a(state2);
                if (a11 != null) {
                    obj = (la.b) a11.get();
                } else {
                    obj = null;
                }
                if (obj instanceof SOtherErrorView) {
                    sOtherErrorView = (SOtherErrorView) obj;
                }
                if (sOtherErrorView != null) {
                    sOtherErrorView.v();
                    String message = aVar.b().getMessage();
                    if (message == null) {
                        message = "";
                    }
                    sOtherErrorView.w(message);
                    sOtherErrorView.x(f37537y);
                }
            }
            Logger.f41511a.h("DiscoverRankingViewPagerItemAdapter", "RankingFailed -> " + aVar.a().getName());
        } else {
            Logger.f41511a.h("DiscoverRankingViewPagerItemAdapter", "RankingChangeState -> " + bVar);
        }
    }

    private final void V(ItemDiscoverRankingPageItemBinding itemDiscoverRankingPageItemBinding) {
        itemDiscoverRankingPageItemBinding.f40254a.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X(DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter) {
        DiscoverRanking Q = discoverRankingViewPagerItemAdapter.Q();
        if (Q != null) {
            jk.o.b(discoverRankingViewPagerItemAdapter.f37543t, new b.C0609b(Q));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y(DiscoverRankingViewPagerItemAdapter discoverRankingViewPagerItemAdapter, b bVar) {
        discoverRankingViewPagerItemAdapter.U(discoverRankingViewPagerItemAdapter.f37538o, bVar);
        return Unit.f60915a;
    }

    @Nullable
    public final DiscoverModuleAdapter.n P() {
        return this.f37541r;
    }

    public final void W(@Nullable Lifecycle lifecycle) {
        List<DiscoverRanking> rankingNameList;
        DiscoverRanking discoverRanking;
        if (lifecycle != null && (rankingNameList = this.f37540q.getRankingNameList()) != null && (discoverRanking = rankingNameList.get(this.f37539p)) != null) {
            if (this.f37540q.getCategoryTabPosMap() == null) {
                this.f37540q.setCategoryTabPosMap(new HashMap<>());
            }
            StateViewGroup pageStateView = this.f37538o.f40255b;
            Intrinsics.checkNotNullExpressionValue(pageStateView, "pageStateView");
            T(pageStateView, new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.e1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit X;
                    X = DiscoverRankingViewPagerItemAdapter.X(DiscoverRankingViewPagerItemAdapter.this);
                    return X;
                }
            });
            B(new e());
            this.f37543t.observe(LifeCycleExtKt.a(lifecycle), new f(new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.f1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit Y;
                    Y = DiscoverRankingViewPagerItemAdapter.Y(DiscoverRankingViewPagerItemAdapter.this, (DiscoverRankingViewPagerItemAdapter.b) obj);
                    return Y;
                }
            }));
            jk.o.b(this.f37543t, new b.C0609b(discoverRanking));
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new c(this, (ItemDiscoverRankingMulTagBinding) s(parent, R$layout.item_discover_ranking_mul_tag));
    }
}
