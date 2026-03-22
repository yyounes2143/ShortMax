package com.startshorts.androidplayer.adapter.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.text.Spanned;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.act.ActBannerAdapter;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.adapter.search.SearchModuleAdapter;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ResourceIndex;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.search.EpisodeSearchResult;
import com.startshorts.androidplayer.bean.search.LabelWithId;
import com.startshorts.androidplayer.bean.search.SearchModule;
import com.startshorts.androidplayer.databinding.ItemSearchActBannerBinding;
import com.startshorts.androidplayer.databinding.ItemSearchBottomPaddingBinding;
import com.startshorts.androidplayer.databinding.ItemSearchExactlyBinding;
import com.startshorts.androidplayer.databinding.ItemSearchFuzzyBinding;
import com.startshorts.androidplayer.databinding.ItemSearchHistoryBinding;
import com.startshorts.androidplayer.databinding.ItemSearchModuleEmptySpaceBinding;
import com.startshorts.androidplayer.databinding.ItemSearchModuleTitleBinding;
import com.startshorts.androidplayer.databinding.ItemSearchNoMoreResultBinding;
import com.startshorts.androidplayer.databinding.ItemSearchNoNetworkBinding;
import com.startshorts.androidplayer.databinding.ItemSearchNoResultBinding;
import com.startshorts.androidplayer.databinding.ItemSearchPopularBinding;
import com.startshorts.androidplayer.databinding.ItemYouMightLikeBinding;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import fk.z;
import java.lang.ref.WeakReference;
import java.util.List;
import jk.b0;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchModuleAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SearchModuleAdapter extends BaseAdapter<SearchModule> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final WeakReference<Activity> f37966o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Lifecycle f37967p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private WeakReference<ActBanner> f37968q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private LinearLayoutManager f37969r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private d f37970s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f37971t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final b f37960u = new b(null);
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private static final ms.i<Float> f37961v = kotlin.c.b(new Function0() { // from class: od.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            float L;
            L = SearchModuleAdapter.L();
            return Float.valueOf(L);
        }
    });
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private static final ms.i<Float> f37962w = kotlin.c.b(new Function0() { // from class: od.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            float M;
            M = SearchModuleAdapter.M();
            return Float.valueOf(M);
        }
    });
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private static final ms.i<Integer> f37963x = kotlin.c.b(new Function0() { // from class: od.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int O;
            O = SearchModuleAdapter.O();
            return Integer.valueOf(O);
        }
    });
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private static final ms.i<Integer> f37964y = kotlin.c.b(new Function0() { // from class: od.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int K;
            K = SearchModuleAdapter.K();
            return Integer.valueOf(K);
        }
    });
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private static final ms.i<Integer> f37965z = kotlin.c.b(new Function0() { // from class: od.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int N;
            N = SearchModuleAdapter.N();
            return Integer.valueOf(N);
        }
    });
    @NotNull
    private static final ms.i<Integer> A = kotlin.c.b(new Function0() { // from class: od.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int P;
            P = SearchModuleAdapter.P();
            return Integer.valueOf(P);
        }
    });

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchActBannerBinding f37972g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37973h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchActBannerBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37973h = searchModuleAdapter;
            this.f37972g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit m(int i10) {
            ud.b.f68412a.O4(new ResourceIndex(i10, DeviceUtil.f48146a.K()));
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemSearchActBannerBinding c() {
            return this.f37972g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull SearchModule item) {
            ActBanner actBanner;
            int size;
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            Lifecycle W = this.f37973h.W();
            if (W == null) {
                return;
            }
            c().f40742a.removeAllViews();
            WeakReference weakReference = this.f37973h.f37968q;
            if (weakReference != null) {
                actBanner = (ActBanner) weakReference.get();
            } else {
                actBanner = null;
            }
            if (actBanner == null) {
                this.f37973h.r("create ActBanner");
                Context context = c().getRoot().getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                actBanner = new ActBanner(context);
                SearchModuleAdapter searchModuleAdapter = this.f37973h;
                ud.b bVar = ud.b.f68412a;
                ResourceIndex B1 = bVar.B1();
                List<ActResource> A = ActResourceManager.f41582a.A();
                if (B1 == null) {
                    bVar.O4(new ResourceIndex(0, DeviceUtil.f48146a.K()));
                    i11 = 0;
                } else {
                    int index = B1.getIndex();
                    if (TimeUtil.f48175a.n(B1.getTime(), DeviceUtil.f48146a.K(), 1)) {
                        size = 0;
                    } else {
                        size = (index + 1) % A.size();
                    }
                    i11 = size;
                }
                actBanner.setLayoutParams(new FrameLayout.LayoutParams(-1, ActBannerAdapter.f37164q.a()));
                ActBanner.B(actBanner, searchModuleAdapter.V(), "search_banner", z.f51786a.m(), i11, new Function1() { // from class: com.startshorts.androidplayer.adapter.search.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit m10;
                        m10 = SearchModuleAdapter.a.m(((Integer) obj).intValue());
                        return m10;
                    }
                }, W, A, null, 128, null);
                this.f37973h.f37968q = new WeakReference(actBanner);
            }
            FrameLayout frameLayout = c().f40742a;
            frameLayout.addView(actBanner);
            frameLayout.setPadding(0, item.getTopMargin(), 0, 0);
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d() {
            return ((Number) SearchModuleAdapter.f37964y.getValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float e() {
            return ((Number) SearchModuleAdapter.f37962w.getValue()).floatValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int f() {
            return ((Number) SearchModuleAdapter.f37963x.getValue()).intValue();
        }

        private b() {
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchModuleEmptySpaceBinding f37974g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37975h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchModuleEmptySpaceBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37975h = searchModuleAdapter;
            this.f37974g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchModuleEmptySpaceBinding c() {
            return this.f37974g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SearchModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40781a.getLayoutParams().height = item.getTopMargin();
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface d {
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchModuleTitleBinding f37976g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37977h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchModuleTitleBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37977h = searchModuleAdapter;
            this.f37976g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchModuleTitleBinding c() {
            return this.f37976g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SearchModule item) {
            LabelWithId labelWithId;
            String labelName;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item instanceof SearchModule.PopularTitleModule) {
                GradientTextView gradientTextView = c().f40788d;
                u uVar = u.f51776a;
                gradientTextView.setColor(uVar.a(R$color.rank_title_text_start), uVar.a(R$color.rank_title_text_end));
                kk.f fVar = kk.f.f60747a;
                CustomFrescoView customFrescoView = c().f40785a;
                FrescoConfig frescoConfig = new FrescoConfig();
                SearchModule.PopularTitleModule popularTitleModule = (SearchModule.PopularTitleModule) item;
                frescoConfig.setUrl(popularTitleModule.getInfo().getCoverId());
                id.c cVar = id.c.f53397a;
                frescoConfig.setOssWidth(cVar.b());
                frescoConfig.setOssHeight(cVar.a());
                b bVar = SearchModuleAdapter.f37960u;
                frescoConfig.setResizeWidth(bVar.f());
                frescoConfig.setResizeHeight(bVar.d());
                frescoConfig.setCornerRadius(bVar.e());
                frescoConfig.setCornerTransform(true);
                frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView, frescoConfig);
                c().f40792h.setText(popularTitleModule.getInfo().getShortPlayName());
                List<LabelWithId> labelList = popularTitleModule.getInfo().getLabelList();
                Spanned spanned = null;
                if (labelList != null && (labelWithId = (LabelWithId) CollectionsKt.t0(labelList, 0)) != null && (labelName = labelWithId.getLabelName()) != null) {
                    spanned = v.v(labelName, null, 1, null);
                }
                if (spanned != null && spanned.length() != 0) {
                    c().f40790f.setText(spanned);
                    b0.l(c().f40790f);
                } else {
                    c().f40790f.setText("");
                    b0.d(c().f40790f);
                }
                c().f40789e.setText(popularTitleModule.getInfo().getSummary());
                int index = popularTitleModule.getInfo().getIndex() + 1;
                if (index > 20) {
                    c().f40791g.setText("");
                    b0.d(c().f40791g);
                    b0.d(c().f40786b);
                    return;
                }
                c().f40791g.setText(String.valueOf(index));
                b0.l(c().f40791g);
                b0.l(c().f40786b);
            }
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class f extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchBottomPaddingBinding f37978g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37979h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchBottomPaddingBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37979h = searchModuleAdapter;
            this.f37978g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchBottomPaddingBinding c() {
            return this.f37978g;
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class g extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchExactlyBinding f37980g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37981h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchExactlyBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37981h = searchModuleAdapter;
            this.f37980g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchExactlyBinding c() {
            return this.f37980g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SearchModule item) {
            Spanned spanned;
            LabelWithId labelWithId;
            String labelName;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item instanceof SearchModule.ExactlyEpisodeModule) {
                kk.f fVar = kk.f.f60747a;
                CustomFrescoView customFrescoView = c().f40750a;
                FrescoConfig frescoConfig = new FrescoConfig();
                SearchModule.ExactlyEpisodeModule exactlyEpisodeModule = (SearchModule.ExactlyEpisodeModule) item;
                frescoConfig.setUrl(exactlyEpisodeModule.getInfo().getCoverId());
                id.c cVar = id.c.f53397a;
                frescoConfig.setOssWidth(cVar.b());
                frescoConfig.setOssHeight(cVar.a());
                b bVar = SearchModuleAdapter.f37960u;
                frescoConfig.setResizeWidth(bVar.f());
                frescoConfig.setResizeHeight(bVar.d());
                frescoConfig.setCornerRadius(bVar.e());
                frescoConfig.setCornerTransform(true);
                frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView, frescoConfig);
                BaseTextView baseTextView = c().f40754e;
                String titleHighlight = exactlyEpisodeModule.getInfo().getTitleHighlight();
                Spanned spanned2 = null;
                if (titleHighlight != null) {
                    spanned = v.v(titleHighlight, null, 1, null);
                } else {
                    spanned = null;
                }
                baseTextView.setText(spanned);
                List<LabelWithId> labelList = exactlyEpisodeModule.getInfo().getLabelList();
                if (labelList != null && (labelWithId = (LabelWithId) CollectionsKt.t0(labelList, 0)) != null && (labelName = labelWithId.getLabelName()) != null) {
                    spanned2 = v.v(labelName, null, 1, null);
                }
                if (spanned2 != null && spanned2.length() != 0) {
                    c().f40752c.setText(spanned2);
                    b0.l(c().f40752c);
                } else {
                    c().f40752c.setText("");
                    b0.d(c().f40752c);
                }
                c().f40751b.setText(exactlyEpisodeModule.getInfo().getSummary());
                DiscoverModuleAdapter.C.i(c().f40753d, Long.valueOf(exactlyEpisodeModule.getInfo().getPlayNum()));
            }
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class h extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchFuzzyBinding f37982g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37983h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchFuzzyBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37983h = searchModuleAdapter;
            this.f37982g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchFuzzyBinding c() {
            return this.f37982g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SearchModule item) {
            Spanned spanned;
            LabelWithId labelWithId;
            String labelName;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item instanceof SearchModule.FuzzyEpisodeModule) {
                kk.f fVar = kk.f.f60747a;
                CustomFrescoView customFrescoView = c().f40759a;
                FrescoConfig frescoConfig = new FrescoConfig();
                SearchModule.FuzzyEpisodeModule fuzzyEpisodeModule = (SearchModule.FuzzyEpisodeModule) item;
                frescoConfig.setUrl(fuzzyEpisodeModule.getInfo().getCoverId());
                id.c cVar = id.c.f53397a;
                frescoConfig.setOssWidth(cVar.b());
                frescoConfig.setOssHeight(cVar.a());
                b bVar = SearchModuleAdapter.f37960u;
                frescoConfig.setResizeWidth(bVar.f());
                frescoConfig.setResizeHeight(bVar.d());
                frescoConfig.setCornerRadius(bVar.e());
                frescoConfig.setCornerTransform(true);
                frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView, frescoConfig);
                BaseTextView baseTextView = c().f40763e;
                String titleHighlight = fuzzyEpisodeModule.getInfo().getTitleHighlight();
                Spanned spanned2 = null;
                if (titleHighlight != null) {
                    spanned = v.v(titleHighlight, null, 1, null);
                } else {
                    spanned = null;
                }
                baseTextView.setText(spanned);
                List<LabelWithId> labelList = fuzzyEpisodeModule.getInfo().getLabelList();
                if (labelList != null && (labelWithId = (LabelWithId) CollectionsKt.t0(labelList, 0)) != null && (labelName = labelWithId.getLabelName()) != null) {
                    spanned2 = v.v(labelName, null, 1, null);
                }
                if (spanned2 != null && spanned2.length() != 0) {
                    c().f40761c.setText(spanned2);
                    b0.l(c().f40761c);
                } else {
                    c().f40761c.setText("");
                    b0.d(c().f40761c);
                }
                c().f40760b.setText(fuzzyEpisodeModule.getInfo().getSummary());
                DiscoverModuleAdapter.C.i(c().f40762d, Long.valueOf(fuzzyEpisodeModule.getInfo().getPlayNum()));
            }
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class i extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchHistoryBinding f37984g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37985h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchHistoryBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37985h = searchModuleAdapter;
            this.f37984g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchHistoryBinding c() {
            return this.f37984g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SearchModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            c().f40768a.setPaddingRelative(0, item.getTopMargin(), 0, 0);
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class j extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchNoMoreResultBinding f37986g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37987h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchNoMoreResultBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37987h = searchModuleAdapter;
            this.f37986g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchNoMoreResultBinding c() {
            return this.f37986g;
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class k extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchNoNetworkBinding f37988g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37989h;

        /* compiled from: SearchModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ SearchModuleAdapter f37990e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ SearchModule f37991f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ int f37992g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(SearchModuleAdapter searchModuleAdapter, SearchModule searchModule, int i10) {
                super(0L, 1, null);
                this.f37990e = searchModuleAdapter;
                this.f37991f = searchModule;
                this.f37992g = i10;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                BaseAdapter.b<SearchModule> n10 = this.f37990e.n();
                if (n10 != null) {
                    n10.a(v10, this.f37991f, this.f37992g);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchNoNetworkBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37989h = searchModuleAdapter;
            this.f37988g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchNoNetworkBinding c() {
            return this.f37988g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SearchModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            ImageView errorIv = c().f40801a;
            Intrinsics.checkNotNullExpressionValue(errorIv, "errorIv");
            b0.i(errorIv, 0, item.getTopMargin(), 0, 0, 13, null);
            c().f40803c.setOnClickListener(new a(this.f37989h, item, i10));
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class l extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchNoResultBinding f37993g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37994h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchNoResultBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37994h = searchModuleAdapter;
            this.f37993g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchNoResultBinding c() {
            return this.f37993g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SearchModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            ImageView noResultIv = c().f40808a;
            Intrinsics.checkNotNullExpressionValue(noResultIv, "noResultIv");
            b0.i(noResultIv, 0, item.getTopMargin(), 0, 0, 13, null);
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class m extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSearchPopularBinding f37995g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37996h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(@NotNull SearchModuleAdapter searchModuleAdapter, ItemSearchPopularBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37996h = searchModuleAdapter;
            this.f37995g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSearchPopularBinding c() {
            return this.f37995g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @SuppressLint({"SetTextI18n"})
        /* renamed from: k */
        public void f(int i10, @NotNull SearchModule item) {
            LabelWithId labelWithId;
            String labelName;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item instanceof SearchModule.PopularEpisodeModule) {
                kk.f fVar = kk.f.f60747a;
                CustomFrescoView customFrescoView = c().f40814a;
                FrescoConfig frescoConfig = new FrescoConfig();
                SearchModule.PopularEpisodeModule popularEpisodeModule = (SearchModule.PopularEpisodeModule) item;
                frescoConfig.setUrl(popularEpisodeModule.getInfo().getCoverId());
                id.c cVar = id.c.f53397a;
                frescoConfig.setOssWidth(cVar.b());
                frescoConfig.setOssHeight(cVar.a());
                b bVar = SearchModuleAdapter.f37960u;
                frescoConfig.setResizeWidth(bVar.f());
                frescoConfig.setResizeHeight(bVar.d());
                frescoConfig.setCornerRadius(bVar.e());
                frescoConfig.setCornerTransform(true);
                frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView, frescoConfig);
                c().f40819f.setText(popularEpisodeModule.getInfo().getShortPlayName());
                List<LabelWithId> labelList = popularEpisodeModule.getInfo().getLabelList();
                Spanned spanned = null;
                if (labelList != null && (labelWithId = (LabelWithId) CollectionsKt.t0(labelList, 0)) != null && (labelName = labelWithId.getLabelName()) != null) {
                    spanned = v.v(labelName, null, 1, null);
                }
                if (spanned != null && spanned.length() != 0) {
                    c().f40817d.setText(spanned);
                    b0.l(c().f40817d);
                } else {
                    c().f40817d.setText("");
                    b0.d(c().f40817d);
                }
                c().f40816c.setText(popularEpisodeModule.getInfo().getSummary());
                int index = popularEpisodeModule.getInfo().getIndex() + 1;
                if (index > 20) {
                    c().f40818e.setText("");
                    b0.d(c().f40818e);
                    b0.d(c().f40815b);
                    return;
                }
                c().f40818e.setText(String.valueOf(index));
                b0.l(c().f40818e);
                b0.l(c().f40815b);
            }
        }
    }

    /* compiled from: SearchModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class n extends BaseAdapter<SearchModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemYouMightLikeBinding f37997g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SearchModuleAdapter f37998h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(@NotNull SearchModuleAdapter searchModuleAdapter, ItemYouMightLikeBinding binding) {
            super(searchModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37998h = searchModuleAdapter;
            this.f37997g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemYouMightLikeBinding c() {
            return this.f37997g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SearchModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            if (item instanceof SearchModule.YouMightLikeModule) {
                c().f41094a.setHotData(((SearchModule.YouMightLikeModule) item).getList());
            }
            c().f41094a.setPaddingRelative(0, item.getTopMargin(), 0, 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchModuleAdapter(@NotNull WeakReference<Activity> actRef) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        this.f37966o = actRef;
        this.f37971t = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int K() {
        return jk.g.a(112.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float L() {
        return jk.g.a(4.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float M() {
        return jk.g.a(5.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int N() {
        return jk.g.a(64.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int O() {
        return jk.g.a(84.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int P() {
        return jk.g.a(86.0f);
    }

    @NotNull
    public final WeakReference<Activity> V() {
        return this.f37966o;
    }

    @Nullable
    public final Lifecycle W() {
        return this.f37967p;
    }

    @Nullable
    public final String X() {
        return this.f37971t;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: Y */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<SearchModule>.ViewHolder holder) {
        String str;
        String str2;
        String str3;
        String str4;
        Intrinsics.checkNotNullParameter(holder, "holder");
        SearchModule d10 = holder.d();
        if (d10 instanceof SearchModule.ExactlyEpisodeModule) {
            EpisodeSearchResult info = ((SearchModule.ExactlyEpisodeModule) d10).getInfo();
            ag.a aVar = ag.a.f646a;
            String shortPlayCode = info.getShortPlayCode();
            String upack = info.getUpack();
            if (upack == null) {
                str4 = "";
            } else {
                str4 = upack;
            }
            ag.a.d(aVar, "search_result", shortPlayCode, null, 0, null, null, null, str4, this.f37971t, 124, null);
        }
        if (d10 instanceof SearchModule.FuzzyEpisodeModule) {
            EpisodeSearchResult info2 = ((SearchModule.FuzzyEpisodeModule) d10).getInfo();
            ag.a aVar2 = ag.a.f646a;
            String shortPlayCode2 = info2.getShortPlayCode();
            String upack2 = info2.getUpack();
            if (upack2 == null) {
                str3 = "";
            } else {
                str3 = upack2;
            }
            ag.a.d(aVar2, "realtime_search", shortPlayCode2, null, 0, null, null, null, str3, this.f37971t, 124, null);
        }
        if (d10 instanceof SearchModule.PopularEpisodeModule) {
            EpisodeSearchResult info3 = ((SearchModule.PopularEpisodeModule) d10).getInfo();
            ag.a aVar3 = ag.a.f646a;
            String shortPlayCode3 = info3.getShortPlayCode();
            String upack3 = info3.getUpack();
            if (upack3 == null) {
                str2 = "";
            } else {
                str2 = upack3;
            }
            ag.a.d(aVar3, "all_search", shortPlayCode3, null, 0, null, null, null, str2, this.f37971t, 124, null);
        }
        if (d10 instanceof SearchModule.PopularTitleModule) {
            EpisodeSearchResult info4 = ((SearchModule.PopularTitleModule) d10).getInfo();
            ag.a aVar4 = ag.a.f646a;
            String shortPlayCode4 = info4.getShortPlayCode();
            String upack4 = info4.getUpack();
            if (upack4 == null) {
                str = "";
            } else {
                str = upack4;
            }
            ag.a.d(aVar4, "all_search", shortPlayCode4, null, 0, null, null, null, str, this.f37971t, 124, null);
        }
        super.onViewAttachedToWindow(holder);
    }

    public final void Z(@Nullable LinearLayoutManager linearLayoutManager) {
        this.f37969r = linearLayoutManager;
    }

    public final void a0(@Nullable Lifecycle lifecycle) {
        this.f37967p = lifecycle;
    }

    public final void b0(@Nullable d dVar) {
        this.f37970s = dVar;
    }

    public final void c0(@Nullable String str) {
        this.f37971t = str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        SearchModule item = getItem(i10);
        if (item != null) {
            return item.getViewType();
        }
        return -1;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "SearchModuleAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<SearchModule>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        switch (i10) {
            case 1:
                return new i(this, (ItemSearchHistoryBinding) s(parent, R$layout.item_search_history));
            case 2:
                return new m(this, (ItemSearchPopularBinding) s(parent, R$layout.item_search_popular));
            case 3:
                return new h(this, (ItemSearchFuzzyBinding) s(parent, R$layout.item_search_fuzzy));
            case 4:
                return new g(this, (ItemSearchExactlyBinding) s(parent, R$layout.item_search_exactly));
            case 5:
                return new e(this, (ItemSearchModuleTitleBinding) s(parent, R$layout.item_search_module_title));
            case 6:
                return new l(this, (ItemSearchNoResultBinding) s(parent, R$layout.item_search_no_result));
            case 7:
                return new j(this, (ItemSearchNoMoreResultBinding) s(parent, R$layout.item_search_no_more_result));
            case 8:
                return new k(this, (ItemSearchNoNetworkBinding) s(parent, R$layout.item_search_no_network));
            case 9:
                return new f(this, (ItemSearchBottomPaddingBinding) s(parent, R$layout.item_search_bottom_padding));
            case 10:
                return new a(this, (ItemSearchActBannerBinding) s(parent, R$layout.item_search_act_banner));
            case 11:
            default:
                return new e(this, (ItemSearchModuleTitleBinding) s(parent, R$layout.item_search_module_title));
            case 12:
                return new c(this, (ItemSearchModuleEmptySpaceBinding) s(parent, R$layout.item_search_module_empty_space));
            case 13:
                return new n(this, (ItemYouMightLikeBinding) s(parent, R$layout.item_you_might_like));
        }
    }
}
