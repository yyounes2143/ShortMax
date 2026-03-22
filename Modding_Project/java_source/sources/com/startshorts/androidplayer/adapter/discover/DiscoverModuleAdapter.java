package com.startshorts.androidplayer.adapter.discover;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewGroupKt;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import ca.f;
import com.facebook.imagepipeline.request.ImageRequest;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.timepicker.TimeModel;
import com.hades.aar.admanager.core.AdFormat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverBannerAdapter2;
import com.startshorts.androidplayer.adapter.discover.DiscoverBannerAdapter3;
import com.startshorts.androidplayer.adapter.discover.DiscoverBannerAdapter4;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverResource;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.DiscoverTitleModule;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.discover.PlayListDiscoverRanking;
import com.startshorts.androidplayer.bean.discover.TagListInfo;
import com.startshorts.androidplayer.bean.discover.TagRelatedShorts;
import com.startshorts.androidplayer.bean.discover.VideoPreviewInfo;
import com.startshorts.androidplayer.bean.event.EventInfo;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ItemDiscoverColumnXWaterfallBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverHorizontalImageVideoPreviewBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleActBannerBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleBanner2Binding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleBanner3Binding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleBannerBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleCarouselBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleCategoryPageBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleEmptySpaceBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleMain1Row2ColumnXRowPartBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleRankingPageBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleSingleRowBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleTimeCountTitleMoreBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleTitleMoreBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleTitleMoreWithIconBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverPictureTextBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredItemBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredRankItemBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredRelatedShortListItemBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredTagListItemBinding;
import com.startshorts.androidplayer.databinding.ItemLowSkuTemplateNotification3Binding;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.ui.activity.ranking.RankingActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverMoreCategoryFilterFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverMoreFragment;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.discover.BannerIndicatorCircleView;
import com.startshorts.androidplayer.ui.view.discover.BannerIndicatorView;
import com.startshorts.androidplayer.ui.view.discover.StragglersRankItemView;
import com.startshorts.androidplayer.ui.view.discover.StragglersRelatedShortItemView;
import com.startshorts.androidplayer.ui.view.discover.StragglersTagItemView;
import com.startshorts.androidplayer.ui.view.discover.VideoPreview;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverModuleAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2303:1\n1863#2,2:2304\n1863#2,2:2306\n1863#2:2308\n1864#2:2310\n1863#2,2:2311\n1863#2:2313\n1864#2:2315\n1863#2:2316\n360#2,7:2317\n1864#2:2324\n254#3:2309\n254#3:2314\n1#4:2325\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter\n*L\n400#1:2304,2\n434#1:2306,2\n439#1:2308\n439#1:2310\n453#1:2311,2\n458#1:2313\n458#1:2315\n658#1:2316\n661#1:2317,7\n658#1:2324\n440#1:2309\n459#1:2314\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverModuleAdapter extends BaseAdapter<DiscoverModule> {
    @NotNull
    public static final f C = new f(null);
    private static final int D = jk.g.a(120.0f);
    private static final int E = jk.g.a(160.0f);
    @NotNull
    private static final Map<Integer, Size> F = kotlin.collections.p0.i();
    private static final float G = fk.z.f51786a.r();
    private static final int H;
    private static final int I;
    @NotNull
    private ms.i<? extends List<j>> A;
    @NotNull
    private final DiscoverModuleAdapter$mOnScrollListener$1 B;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final WeakReference<Activity> f37365o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private DiscoverTab f37366p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Lifecycle f37367q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private n f37368r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private StaggeredGridLayoutManager f37369s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private WeakReference<BannerViewPager<DiscoverShorts>> f37370t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final ms.i<List<BaseAdapter<DiscoverShorts>>> f37371u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final ms.i<List<BaseAdapter<DiscoverShorts>>> f37372v;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final ConcurrentHashMap<String, Boolean> f37373w;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final ConcurrentHashMap<String, Pair<String, DiscoverModule>> f37374x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f37375y;
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private ms.i<? extends List<g>> f37376z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class SingleRowViewHolder extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final Function1<DiscoverModule, BaseAdapter<DiscoverShorts>> f37377g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final ItemDiscoverModuleSingleRowBinding f37378h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private List<DiscoverShorts> f37379i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37380j;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a implements BaseAdapter.b<DiscoverShorts> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DiscoverModule f37381a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37382b;

            a(DiscoverModule discoverModule, DiscoverModuleAdapter discoverModuleAdapter) {
                this.f37381a = discoverModule;
                this.f37382b = discoverModuleAdapter;
            }

            @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
            /* renamed from: b */
            public void a(View v10, DiscoverShorts d10, int i10) {
                n k02;
                Intrinsics.checkNotNullParameter(v10, "v");
                Intrinsics.checkNotNullParameter(d10, "d");
                String a10 = DiscoverModuleAdapter.C.a(this.f37381a.getStyle());
                if (!Intrinsics.areEqual(a10, "coming_soon") && (k02 = this.f37382b.k0()) != null) {
                    n.a.a(k02, i10, d10, a10, this.f37381a, null, 16, null);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public SingleRowViewHolder(@NotNull DiscoverModuleAdapter discoverModuleAdapter, @NotNull Function1<? super DiscoverModule, ? extends BaseAdapter<DiscoverShorts>> adapterCreator, ItemDiscoverModuleSingleRowBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(adapterCreator, "adapterCreator");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37380j = discoverModuleAdapter;
            this.f37377g = adapterCreator;
            this.f37378h = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            List<DiscoverShorts> list = this.f37379i;
            if (list == null || list.size() == 0) {
                return;
            }
            CoroutineUtil.f48072a.j("logReelShow", true, new DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1(this, list, this.f37380j, null));
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverModuleSingleRowBinding c() {
            return this.f37378h;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            DiscoverRepo.f43967a.M(item);
            List<DiscoverShorts> shortPlayResponseList = item.getShortPlayResponseList();
            if (shortPlayResponseList == null) {
                shortPlayResponseList = new ArrayList<>();
            }
            this.f37379i = shortPlayResponseList;
            BaseAdapter<DiscoverShorts> invoke = this.f37377g.invoke(item);
            invoke.B(new a(item, this.f37380j));
            BaseAdapter.D(invoke, this.f37379i, false, 2, null);
            RecyclerView.ItemDecoration itemDecoration = new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter$SingleRowViewHolder$setItem$itemDecoration$1
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                    Intrinsics.checkNotNullParameter(outRect, "outRect");
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(state, "state");
                    if (parent.getChildLayoutPosition(view) == 0) {
                        fk.z zVar = fk.z.f51786a;
                        jk.r.a(outRect, zVar.d(), 0, zVar.a(), 0);
                        return;
                    }
                    jk.r.a(outRect, 0, 0, fk.z.f51786a.a(), 0);
                }
            };
            RecyclerView recyclerView = c().f40157a;
            recyclerView.setAdapter(invoke);
            recyclerView.setHasFixedSize(true);
            Context context = c().getRoot().getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            recyclerView.setLayoutManager(new CatchExceptionLinearLayoutManager(context, 0, false));
            if (recyclerView.getItemDecorationCount() == 0) {
                recyclerView.addItemDecoration(itemDecoration);
            }
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1863#2,2:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder\n*L\n1113#1:2304,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleBannerBinding f37387g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37388h;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0608a extends BannerViewPager.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DiscoverBannerAdapter f37389a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ BannerViewPager<DiscoverShorts> f37390b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37391c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ DiscoverModule f37392d;

            C0608a(DiscoverBannerAdapter discoverBannerAdapter, BannerViewPager<DiscoverShorts> bannerViewPager, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule) {
                this.f37389a = discoverBannerAdapter;
                this.f37390b = bannerViewPager;
                this.f37391c = discoverModuleAdapter;
                this.f37392d = discoverModule;
            }

            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
            public void a(boolean z10, int i10, int i11) {
                this.f37389a.u(i11);
                List<DiscoverShorts> data = this.f37390b.getData();
                Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                DiscoverShorts discoverShorts = (DiscoverShorts) CollectionsKt.t0(data, i10);
                if (discoverShorts != null) {
                    this.f37391c.n0(i10, discoverShorts, this.f37392d);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleBannerBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37388h = discoverModuleAdapter;
            this.f37387g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(DiscoverModule discoverModule, DiscoverModuleAdapter discoverModuleAdapter, View view, int i10) {
            DiscoverShorts discoverShorts;
            List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
            if (shortPlayResponseList != null && (discoverShorts = (DiscoverShorts) CollectionsKt.t0(shortPlayResponseList, i10)) != null) {
                discoverModuleAdapter.m0(discoverModule, discoverShorts, i10);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            l.a.b(this, discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemDiscoverModuleBannerBinding c() {
            return this.f37387g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull final DiscoverModule item) {
            DiscoverShorts discoverShorts;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            DiscoverBannerAdapter discoverBannerAdapter = new DiscoverBannerAdapter();
            BannerViewPager bannerViewPager = new BannerViewPager(c().getRoot().getContext());
            final DiscoverModuleAdapter discoverModuleAdapter = this.f37388h;
            bannerViewPager.D(discoverBannerAdapter);
            bannerViewPager.O(8, 0.829f);
            fk.z zVar = fk.z.f51786a;
            bannerViewPager.M(zVar.b());
            bannerViewPager.Q(zVar.l(), zVar.l());
            bannerViewPager.E(true);
            bannerViewPager.G(3000);
            bannerViewPager.R(500);
            bannerViewPager.A(discoverModuleAdapter.j0());
            bannerViewPager.P(false);
            bannerViewPager.J(new BannerViewPager.c() { // from class: com.startshorts.androidplayer.adapter.discover.w
                @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
                public final void a(View view, int i11) {
                    DiscoverModuleAdapter.a.m(DiscoverModule.this, discoverModuleAdapter, view, i11);
                }
            });
            bannerViewPager.B(new C0608a(discoverBannerAdapter, bannerViewPager, discoverModuleAdapter, item));
            List<DiscoverShorts> shortPlayResponseList = item.getShortPlayResponseList();
            if (shortPlayResponseList != null) {
                for (DiscoverShorts discoverShorts2 : shortPlayResponseList) {
                    discoverShorts2.setModuleId(item.getBannerId());
                    discoverShorts2.setModuleName(item.getTitle());
                    discoverShorts2.setRecommendId(item.getRecommendId());
                }
            }
            if (shortPlayResponseList != null && (discoverShorts = (DiscoverShorts) CollectionsKt.firstOrNull(shortPlayResponseList)) != null) {
                discoverModuleAdapter.n0(0, discoverShorts, item);
            }
            bannerViewPager.g(shortPlayResponseList);
            this.f37388h.f37370t = new WeakReference(bannerViewPager);
            c().f40086a.removeAllViews();
            ConstraintLayout constraintLayout = c().f40086a;
            ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, DiscoverBannerAdapter.f37237p.c());
            layoutParams.topToTop = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = item.getTopMargin();
            Unit unit = Unit.f60915a;
            constraintLayout.addView(bannerViewPager, layoutParams);
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1863#2,2:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder2\n*L\n1187#1:2304,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleBanner2Binding f37393g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37394h;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends BannerViewPager.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DiscoverBannerAdapter3 f37395a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ BannerViewPager<DiscoverShorts> f37396b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37397c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ DiscoverModule f37398d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ b f37399e;

            a(DiscoverBannerAdapter3 discoverBannerAdapter3, BannerViewPager<DiscoverShorts> bannerViewPager, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, b bVar) {
                this.f37395a = discoverBannerAdapter3;
                this.f37396b = bannerViewPager;
                this.f37397c = discoverModuleAdapter;
                this.f37398d = discoverModule;
                this.f37399e = bVar;
            }

            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
            public void a(boolean z10, int i10, int i11) {
                this.f37395a.v(i11);
                List<DiscoverShorts> data = this.f37396b.getData();
                Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                DiscoverShorts discoverShorts = (DiscoverShorts) CollectionsKt.t0(data, i10);
                if (discoverShorts != null) {
                    this.f37397c.n0(i10, discoverShorts, this.f37398d);
                    if (!TextUtils.isEmpty(discoverShorts.getPicUrl())) {
                        kk.f fVar = kk.f.f60747a;
                        CustomFrescoView customFrescoView = this.f37399e.c().f40074c;
                        FrescoConfig frescoConfig = new FrescoConfig();
                        frescoConfig.setUrl(discoverShorts.getPicUrl());
                        frescoConfig.setIterativeBoxBlurPostProcessor(new d4.a(1, 5));
                        frescoConfig.setControllerListener(new z2.a<>());
                        DiscoverBannerAdapter3.a aVar = DiscoverBannerAdapter3.f37253p;
                        frescoConfig.setOssWidth(aVar.b() / 8);
                        frescoConfig.setOssHeight(aVar.a() / 8);
                        frescoConfig.setResizeWidth(aVar.d() / 8);
                        frescoConfig.setResizeHeight(aVar.c() / 8);
                        Unit unit = Unit.f60915a;
                        fVar.A(customFrescoView, frescoConfig);
                    }
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleBanner2Binding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37394h = discoverModuleAdapter;
            this.f37393g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(DiscoverModule discoverModule, DiscoverModuleAdapter discoverModuleAdapter, View view, int i10) {
            DiscoverShorts discoverShorts;
            List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
            if (shortPlayResponseList != null && (discoverShorts = (DiscoverShorts) CollectionsKt.t0(shortPlayResponseList, i10)) != null) {
                discoverModuleAdapter.m0(discoverModule, discoverShorts, i10);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            l.a.b(this, discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemDiscoverModuleBanner2Binding c() {
            return this.f37393g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull final DiscoverModule item) {
            DiscoverShorts discoverShorts;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            DiscoverBannerAdapter3 discoverBannerAdapter3 = new DiscoverBannerAdapter3();
            BannerViewPager bannerViewPager = new BannerViewPager(c().getRoot().getContext());
            final DiscoverModuleAdapter discoverModuleAdapter = this.f37394h;
            bannerViewPager.D(discoverBannerAdapter3);
            bannerViewPager.O(8, 0.829f);
            bannerViewPager.M(fk.z.f51786a.b());
            bannerViewPager.Q(jk.g.a(45.0f), jk.g.a(45.0f));
            bannerViewPager.E(true);
            bannerViewPager.G(3000);
            bannerViewPager.R(500);
            bannerViewPager.A(discoverModuleAdapter.j0());
            bannerViewPager.P(false);
            bannerViewPager.J(new BannerViewPager.c() { // from class: com.startshorts.androidplayer.adapter.discover.x
                @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
                public final void a(View view, int i11) {
                    DiscoverModuleAdapter.b.m(DiscoverModule.this, discoverModuleAdapter, view, i11);
                }
            });
            bannerViewPager.B(new a(discoverBannerAdapter3, bannerViewPager, discoverModuleAdapter, item, this));
            List<DiscoverShorts> shortPlayResponseList = item.getShortPlayResponseList();
            if (shortPlayResponseList != null) {
                for (DiscoverShorts discoverShorts2 : shortPlayResponseList) {
                    discoverShorts2.setModuleId(item.getBannerId());
                    discoverShorts2.setModuleName(item.getTitle());
                    discoverShorts2.setRecommendId(item.getRecommendId());
                }
            }
            if (shortPlayResponseList != null && (discoverShorts = (DiscoverShorts) CollectionsKt.firstOrNull(shortPlayResponseList)) != null) {
                discoverModuleAdapter.n0(0, discoverShorts, item);
                if (!TextUtils.isEmpty(discoverShorts.getPicUrl())) {
                    kk.f fVar = kk.f.f60747a;
                    CustomFrescoView customFrescoView = c().f40074c;
                    FrescoConfig frescoConfig = new FrescoConfig();
                    frescoConfig.setUrl(discoverShorts.getPicUrl());
                    frescoConfig.setIterativeBoxBlurPostProcessor(new d4.a(1, 5));
                    frescoConfig.setControllerListener(new z2.a<>());
                    DiscoverBannerAdapter3.a aVar = DiscoverBannerAdapter3.f37253p;
                    frescoConfig.setOssWidth(aVar.b() / 8);
                    frescoConfig.setOssHeight(aVar.a() / 8);
                    frescoConfig.setResizeWidth(aVar.d() / 8);
                    frescoConfig.setResizeHeight(aVar.c() / 8);
                    Unit unit = Unit.f60915a;
                    fVar.A(customFrescoView, frescoConfig);
                }
            }
            bannerViewPager.g(shortPlayResponseList);
            this.f37394h.f37370t = new WeakReference(bannerViewPager);
            ConstraintLayout constraintLayout = c().f40072a;
            constraintLayout.removeAllViews();
            ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, DiscoverBannerAdapter3.f37253p.c());
            layoutParams.topToTop = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = item.getTopMargin();
            Unit unit2 = Unit.f60915a;
            constraintLayout.addView(bannerViewPager, layoutParams);
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,2303:1\n1863#2,2:2304\n256#3,2:2306\n256#3,2:2308\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder3\n*L\n1279#1:2304,2\n1321#1:2306,2\n1323#1:2308,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleBanner3Binding f37400g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37401h;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends BannerViewPager.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BannerViewPager<DiscoverShorts> f37402a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ c f37403b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37404c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ DiscoverModule f37405d;

            a(BannerViewPager<DiscoverShorts> bannerViewPager, c cVar, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule) {
                this.f37402a = bannerViewPager;
                this.f37403b = cVar;
                this.f37404c = discoverModuleAdapter;
                this.f37405d = discoverModule;
            }

            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
            public void a(boolean z10, int i10, int i11) {
                String str;
                DiscoverShorts discoverShorts = this.f37402a.getData().get(i10);
                if (discoverShorts == null) {
                    return;
                }
                DiscoverResource bannerContent = discoverShorts.getBannerContent();
                String str2 = null;
                if (bannerContent != null) {
                    str = bannerContent.getCoverId();
                } else {
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    FrescoConfig frescoConfig = new FrescoConfig();
                    frescoConfig.setFadeDuration(300);
                    frescoConfig.setAutoPlayAnim(true);
                    DiscoverResource bannerContent2 = discoverShorts.getBannerContent();
                    if (bannerContent2 != null) {
                        str2 = bannerContent2.getCoverId();
                    }
                    frescoConfig.setUrl(str2);
                    frescoConfig.setIterativeBoxBlurPostProcessor(new d4.a(1, 5));
                    frescoConfig.setControllerListener(new z2.a<>());
                    DiscoverBannerAdapter4.a aVar = DiscoverBannerAdapter4.f37263m;
                    frescoConfig.setOssWidth(aVar.b() / 8);
                    frescoConfig.setOssHeight(aVar.a() / 8);
                    frescoConfig.setResizeWidth(aVar.d() / 8);
                    frescoConfig.setResizeHeight(aVar.c() / 8);
                    kk.f fVar = kk.f.f60747a;
                    ImageRequest m10 = fVar.m(frescoConfig);
                    if (m10 != null) {
                        jk.j.a(m10);
                    }
                    fVar.A(this.f37403b.c().f40081c, frescoConfig);
                }
                List<DiscoverShorts> data = this.f37402a.getData();
                Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                DiscoverShorts discoverShorts2 = (DiscoverShorts) CollectionsKt.t0(data, i10);
                if (discoverShorts2 != null) {
                    c cVar = this.f37403b;
                    DiscoverModuleAdapter discoverModuleAdapter = this.f37404c;
                    DiscoverModule discoverModule = this.f37405d;
                    cVar.c().f40080b.setIndex(i10);
                    discoverModuleAdapter.n0(i10, discoverShorts2, discoverModule);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleBanner3Binding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37401h = discoverModuleAdapter;
            this.f37400g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(DiscoverModule discoverModule, DiscoverModuleAdapter discoverModuleAdapter, View view, int i10) {
            DiscoverShorts discoverShorts;
            List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
            if (shortPlayResponseList != null && (discoverShorts = (DiscoverShorts) CollectionsKt.t0(shortPlayResponseList, i10)) != null) {
                discoverModuleAdapter.m0(discoverModule, discoverShorts, i10);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            l.a.b(this, discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemDiscoverModuleBanner3Binding c() {
            return this.f37400g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull final DiscoverModule item) {
            DiscoverShorts discoverShorts;
            int i11;
            String str;
            DiscoverShorts discoverShorts2;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            fk.z zVar = fk.z.f51786a;
            int j10 = zVar.j();
            DiscoverBannerAdapter4 discoverBannerAdapter4 = new DiscoverBannerAdapter4();
            BannerViewPager bannerViewPager = new BannerViewPager(c().getRoot().getContext());
            final DiscoverModuleAdapter discoverModuleAdapter = this.f37401h;
            bannerViewPager.D(discoverBannerAdapter4);
            bannerViewPager.M(zVar.a());
            bannerViewPager.Q(j10, j10);
            bannerViewPager.E(true);
            bannerViewPager.G(3000);
            bannerViewPager.R(500);
            bannerViewPager.A(discoverModuleAdapter.j0());
            bannerViewPager.P(false);
            bannerViewPager.J(new BannerViewPager.c() { // from class: com.startshorts.androidplayer.adapter.discover.y
                @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
                public final void a(View view, int i12) {
                    DiscoverModuleAdapter.c.m(DiscoverModule.this, discoverModuleAdapter, view, i12);
                }
            });
            bannerViewPager.B(new a(bannerViewPager, this, discoverModuleAdapter, item));
            List<DiscoverShorts> shortPlayResponseList = item.getShortPlayResponseList();
            if (shortPlayResponseList != null) {
                for (DiscoverShorts discoverShorts3 : shortPlayResponseList) {
                    discoverShorts3.setModuleId(item.getBannerId());
                    discoverShorts3.setModuleName(item.getTitle());
                    discoverShorts3.setRecommendId(item.getRecommendId());
                }
            }
            if (shortPlayResponseList != null && (discoverShorts2 = (DiscoverShorts) CollectionsKt.firstOrNull(shortPlayResponseList)) != null) {
                discoverModuleAdapter.n0(0, discoverShorts2, item);
            }
            bannerViewPager.g(shortPlayResponseList);
            this.f37401h.f37370t = new WeakReference(bannerViewPager);
            c().f40079a.removeAllViews();
            ConstraintLayout constraintLayout = c().f40079a;
            DiscoverBannerAdapter4.a aVar = DiscoverBannerAdapter4.f37263m;
            ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, aVar.c());
            layoutParams.topToTop = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = item.getTopMargin();
            Unit unit = Unit.f60915a;
            constraintLayout.addView(bannerViewPager, layoutParams);
            List<DiscoverShorts> shortPlayResponseList2 = item.getShortPlayResponseList();
            String str2 = null;
            if (shortPlayResponseList2 != null) {
                discoverShorts = (DiscoverShorts) CollectionsKt.t0(shortPlayResponseList2, 0);
            } else {
                discoverShorts = null;
            }
            if (discoverShorts != null) {
                DiscoverResource bannerContent = discoverShorts.getBannerContent();
                if (bannerContent != null) {
                    str = bannerContent.getCoverId();
                } else {
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    kk.f fVar = kk.f.f60747a;
                    CustomFrescoView customFrescoView = c().f40081c;
                    FrescoConfig frescoConfig = new FrescoConfig();
                    DiscoverResource bannerContent2 = discoverShorts.getBannerContent();
                    if (bannerContent2 != null) {
                        str2 = bannerContent2.getCoverId();
                    }
                    frescoConfig.setUrl(str2);
                    frescoConfig.setIterativeBoxBlurPostProcessor(new d4.a(1, 5));
                    frescoConfig.setControllerListener(new z2.a<>());
                    frescoConfig.setOssWidth(aVar.b() / 8);
                    frescoConfig.setOssHeight(aVar.a() / 8);
                    frescoConfig.setResizeWidth(aVar.d() / 8);
                    frescoConfig.setResizeHeight(aVar.c() / 8);
                    fVar.A(customFrescoView, frescoConfig);
                }
            }
            BannerIndicatorCircleView bannerIndicatorCircleView = c().f40080b;
            List<DiscoverShorts> shortPlayResponseList3 = item.getShortPlayResponseList();
            if (shortPlayResponseList3 != null) {
                i11 = shortPlayResponseList3.size();
            } else {
                i11 = 0;
            }
            if (i11 <= 1) {
                Intrinsics.checkNotNull(bannerIndicatorCircleView);
                bannerIndicatorCircleView.setVisibility(8);
                return;
            }
            Intrinsics.checkNotNull(bannerIndicatorCircleView);
            bannerIndicatorCircleView.setVisibility(0);
            bannerIndicatorCircleView.setMax(i11);
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$CarouselViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,2303:1\n1863#2,2:2304\n256#3,2:2306\n256#3,2:2308\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$CarouselViewHolder\n*L\n958#1:2304,2\n985#1:2306,2\n987#1:2308,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleCarouselBinding f37406g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37407h;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends BannerViewPager.b {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ BannerViewPager<DiscoverShorts> f37409b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37410c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ DiscoverModule f37411d;

            a(BannerViewPager<DiscoverShorts> bannerViewPager, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule) {
                this.f37409b = bannerViewPager;
                this.f37410c = discoverModuleAdapter;
                this.f37411d = discoverModule;
            }

            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
            public void a(boolean z10, int i10, int i11) {
                String str;
                d.this.c().f40092c.setIndex(i10);
                DiscoverShorts discoverShorts = this.f37409b.getData().get(i10);
                if (discoverShorts == null) {
                    return;
                }
                DiscoverResource bannerContent = discoverShorts.getBannerContent();
                String str2 = null;
                if (bannerContent != null) {
                    str = bannerContent.getCoverId();
                } else {
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    kk.f fVar = kk.f.f60747a;
                    CustomFrescoView customFrescoView = d.this.c().f40095f;
                    FrescoConfig frescoConfig = new FrescoConfig();
                    DiscoverResource bannerContent2 = discoverShorts.getBannerContent();
                    if (bannerContent2 != null) {
                        str2 = bannerContent2.getCoverId();
                    }
                    frescoConfig.setUrl(str2);
                    frescoConfig.setIterativeBoxBlurPostProcessor(new d4.a(1, 4));
                    frescoConfig.setControllerListener(new z2.a<>());
                    DiscoverBannerAdapter2.a aVar = DiscoverBannerAdapter2.f37248l;
                    frescoConfig.setOssWidth(aVar.b() / 8);
                    frescoConfig.setOssHeight(aVar.a() / 8);
                    frescoConfig.setResizeWidth(aVar.d() / 8);
                    frescoConfig.setResizeHeight(aVar.c() / 8);
                    Unit unit = Unit.f60915a;
                    fVar.A(customFrescoView, frescoConfig);
                }
                DiscoverResource bannerContent3 = discoverShorts.getBannerContent();
                if (bannerContent3 != null && bannerContent3.isShortsBanner()) {
                    d.this.c().f40093d.setVisibility(0);
                } else {
                    d.this.c().f40093d.setVisibility(8);
                }
                this.f37410c.n0(i10, discoverShorts, this.f37411d);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleCarouselBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37407h = discoverModuleAdapter;
            this.f37406g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(DiscoverModule discoverModule, DiscoverModuleAdapter discoverModuleAdapter, View view, int i10) {
            DiscoverShorts discoverShorts;
            List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
            if (shortPlayResponseList != null && (discoverShorts = (DiscoverShorts) CollectionsKt.t0(shortPlayResponseList, i10)) != null) {
                discoverModuleAdapter.m0(discoverModule, discoverShorts, i10);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            l.a.b(this, discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemDiscoverModuleCarouselBinding c() {
            return this.f37406g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull final DiscoverModule item) {
            int i11;
            DiscoverShorts discoverShorts;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            DiscoverBannerAdapter2 discoverBannerAdapter2 = new DiscoverBannerAdapter2();
            BannerViewPager bannerViewPager = new BannerViewPager(c().getRoot().getContext());
            final DiscoverModuleAdapter discoverModuleAdapter = this.f37407h;
            bannerViewPager.D(discoverBannerAdapter2);
            bannerViewPager.M(0);
            bannerViewPager.E(true);
            bannerViewPager.G(3000);
            bannerViewPager.R(600);
            bannerViewPager.A(discoverModuleAdapter.j0());
            bannerViewPager.P(false);
            bannerViewPager.J(new BannerViewPager.c() { // from class: com.startshorts.androidplayer.adapter.discover.z
                @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
                public final void a(View view, int i12) {
                    DiscoverModuleAdapter.d.m(DiscoverModule.this, discoverModuleAdapter, view, i12);
                }
            });
            bannerViewPager.B(new a(bannerViewPager, discoverModuleAdapter, item));
            List<DiscoverShorts> shortPlayResponseList = item.getShortPlayResponseList();
            if (shortPlayResponseList != null) {
                for (DiscoverShorts discoverShorts2 : shortPlayResponseList) {
                    discoverShorts2.setModuleId(item.getBannerId());
                    discoverShorts2.setModuleName(item.getTitle());
                    discoverShorts2.setRecommendId(item.getRecommendId());
                }
            }
            if (shortPlayResponseList != null && (discoverShorts = (DiscoverShorts) CollectionsKt.firstOrNull(shortPlayResponseList)) != null) {
                discoverModuleAdapter.n0(0, discoverShorts, item);
            }
            bannerViewPager.g(shortPlayResponseList);
            this.f37407h.f37370t = new WeakReference(bannerViewPager);
            ConstraintLayout constraintLayout = c().f40090a;
            constraintLayout.removeAllViews();
            constraintLayout.setPadding(0, item.getTopMargin(), 0, 0);
            ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, -1);
            layoutParams.topToTop = 0;
            Unit unit = Unit.f60915a;
            constraintLayout.addView(bannerViewPager, layoutParams);
            BannerIndicatorView bannerIndicatorView = c().f40092c;
            List<DiscoverShorts> shortPlayResponseList2 = item.getShortPlayResponseList();
            if (shortPlayResponseList2 != null) {
                i11 = shortPlayResponseList2.size();
            } else {
                i11 = 0;
            }
            if (i11 <= 1) {
                Intrinsics.checkNotNull(bannerIndicatorView);
                bannerIndicatorView.setVisibility(8);
                return;
            }
            Intrinsics.checkNotNull(bannerIndicatorView);
            bannerIndicatorView.setVisibility(0);
            bannerIndicatorView.setMax(i11);
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$ColumnXWaterfallViewHolder\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2303:1\n46#2:2304\n2642#3:2305\n1872#3,3:2307\n1#4:2306\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$ColumnXWaterfallViewHolder\n*L\n1342#1:2304\n1414#1:2305\n1387#1:2307,3\n1414#1:2306\n*E\n"})
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<DiscoverModule>.ViewHolder implements l {

        /* renamed from: g  reason: collision with root package name */
        private final int f37412g;

        /* renamed from: h  reason: collision with root package name */
        private final int f37413h;
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final ItemDiscoverColumnXWaterfallBinding f37414i;
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private Function1<? super DiscoverModule, Unit> f37415j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37416k;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Function1<View, Unit> f37417e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(Function1<? super View, Unit> function1) {
                super(0L, 1, null);
                this.f37417e = function1;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                this.f37417e.invoke(v10);
            }
        }

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class b extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37418e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ ShortsLabel f37419f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ DiscoverShorts f37420g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(DiscoverModuleAdapter discoverModuleAdapter, ShortsLabel shortsLabel, DiscoverShorts discoverShorts) {
                super(0L, 1, null);
                this.f37418e = discoverModuleAdapter;
                this.f37419f = shortsLabel;
                this.f37420g = discoverShorts;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                n k02 = this.f37418e.k0();
                if (k02 != null) {
                    k02.a("three_row_three_ranking", this.f37419f.getRankingId());
                }
                DiscoverModuleAdapter.C.e(this.f37420g, this.f37419f);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DiscoverModuleAdapter discoverModuleAdapter, int i10, @NotNull int i11, ItemDiscoverColumnXWaterfallBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37416k = discoverModuleAdapter;
            this.f37412g = i10;
            this.f37413h = i11;
            this.f37414i = binding;
            this.f37415j = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.c0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit n10;
                    n10 = DiscoverModuleAdapter.e.n((DiscoverModule) obj);
                    return n10;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit n(DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit p(DiscoverModuleAdapter discoverModuleAdapter, int i10, DiscoverShorts discoverShorts, DiscoverModule discoverModule, View view) {
            Intrinsics.checkNotNullParameter(view, "<unused var>");
            n k02 = discoverModuleAdapter.k0();
            if (k02 != null) {
                n.a.a(k02, i10, discoverShorts, DiscoverModuleAdapter.C.a(discoverModule.getStyle()), discoverModule, null, 16, null);
            }
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit q(List list, int i10, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.y();
                }
                ag.a.c(ag.a.f646a, (DiscoverShorts) obj, i10 + i11, 0, discoverModuleAdapter.l0(), null, discoverModule.getSort(), discoverModule.getStatus(), null, 148, null);
                i11 = i12;
            }
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            this.f37415j.invoke(discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: m */
        public ItemDiscoverColumnXWaterfallBinding c() {
            return this.f37414i;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: o */
        public void f(int i10, @NotNull final DiscoverModule item) {
            int d10;
            int i11;
            int topMargin;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().getRoot().setOnClickListener(null);
            final int position = item.getPosition() * this.f37412g;
            LinearLayout columnXWaterfallContainer = c().f40008a;
            Intrinsics.checkNotNullExpressionValue(columnXWaterfallContainer, "columnXWaterfallContainer");
            if (columnXWaterfallContainer.getChildCount() == 0) {
                if (Intrinsics.areEqual(item.getDisableBannerTitle(), Boolean.TRUE)) {
                    LinearLayout columnXWaterfallContainer2 = c().f40008a;
                    Intrinsics.checkNotNullExpressionValue(columnXWaterfallContainer2, "columnXWaterfallContainer");
                    if (position == 0) {
                        topMargin = fk.z.f51786a.q();
                    } else {
                        topMargin = item.getTopMargin();
                    }
                    jk.b0.i(columnXWaterfallContainer2, 0, topMargin, 0, 0, 13, null);
                }
                fk.z zVar = fk.z.f51786a;
                int d11 = zVar.d();
                if (item.getPosition() == this.f37412g - 1) {
                    d10 = 0;
                } else {
                    d10 = zVar.d();
                }
                c().f40008a.setPaddingRelative(d11, 0, d11, d10);
                int i12 = this.f37412g;
                for (int i13 = 0; i13 < i12; i13++) {
                    LinearLayout linearLayout = c().f40008a;
                    View inflate = LayoutInflater.from(c().getRoot().getContext()).inflate(this.f37413h, (ViewGroup) null, false);
                    if (i13 != 0) {
                        i11 = fk.z.f51786a.a();
                    } else {
                        i11 = 0;
                    }
                    inflate.setPaddingRelative(i11, 0, 0, 0);
                    linearLayout.addView(inflate);
                }
            }
            final List<DiscoverShorts> shortPlayResponseList = item.getShortPlayResponseList();
            if (shortPlayResponseList == null) {
                shortPlayResponseList = new ArrayList<>();
            }
            int i14 = this.f37412g;
            for (int i15 = 0; i15 < i14; i15++) {
                View childAt = c().f40008a.getChildAt(i15);
                if (childAt == null) {
                    return;
                }
                final DiscoverShorts discoverShorts = (DiscoverShorts) CollectionsKt.t0(shortPlayResponseList, i15);
                if (discoverShorts == null) {
                    childAt.setVisibility(8);
                } else {
                    childAt.setVisibility(0);
                    Size d12 = DiscoverModuleAdapter.C.d(this.f37412g);
                    final DiscoverModuleAdapter discoverModuleAdapter = this.f37416k;
                    r(discoverShorts, d12, childAt, new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.a0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            Unit p10;
                            p10 = DiscoverModuleAdapter.e.p(DiscoverModuleAdapter.this, position, discoverShorts, item, (View) obj);
                            return p10;
                        }
                    });
                }
            }
            final DiscoverModuleAdapter discoverModuleAdapter2 = this.f37416k;
            this.f37415j = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.b0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit q10;
                    q10 = DiscoverModuleAdapter.e.q(shortPlayResponseList, position, discoverModuleAdapter2, item, (DiscoverModule) obj);
                    return q10;
                }
            };
        }

        public final void r(@NotNull DiscoverShorts item, @NotNull Size size, @NotNull View itemView, @NotNull Function1<? super View, Unit> onItemClick) {
            ShortsLabel shortsLabel;
            int i10;
            ShortsLabel shortsLabel2;
            Object obj;
            Object obj2;
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(size, "size");
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            Intrinsics.checkNotNullParameter(onItemClick, "onItemClick");
            CustomFrescoView customFrescoView = (CustomFrescoView) itemView.findViewById(R$id.cover_iv);
            TextView textView = (TextView) itemView.findViewById(R$id.shorts_name_tv);
            TextView textView2 = (TextView) itemView.findViewById(R$id.tvLabelStyle);
            TextView textView3 = (TextView) itemView.findViewById(R$id.tvPlayCount);
            TextView textView4 = (TextView) itemView.findViewById(R$id.tvEpisodeLabel);
            TextView textView5 = (TextView) itemView.findViewById(R$id.tvRankLabel);
            int i11 = 0;
            for (View view : CollectionsKt.q(textView, customFrescoView, textView4)) {
                view.setOnClickListener(new a(onItemClick));
            }
            customFrescoView.setContentDescription(item.getShortPlayName() + ' ' + item.getId());
            ViewGroup.LayoutParams layoutParams = customFrescoView.getLayoutParams();
            layoutParams.width = size.getWidth();
            layoutParams.height = size.getHeight();
            customFrescoView.setLayoutParams(layoutParams);
            kk.f fVar = kk.f.f60747a;
            FrescoConfig frescoConfig = new FrescoConfig();
            frescoConfig.setUrl(item.getPicUrl());
            frescoConfig.setOssWidth(size.getWidth());
            frescoConfig.setOssHeight(size.getHeight());
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(DiscoverModuleAdapter.G);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            textView.setText(item.getShortPlayName());
            f fVar2 = DiscoverModuleAdapter.C;
            Intrinsics.checkNotNull(textView2);
            int cornerLabelStyle = item.getCornerLabelStyle();
            String cornerLabelText = item.getCornerLabelText();
            if (cornerLabelText == null) {
                cornerLabelText = "";
            }
            fVar2.h(textView2, cornerLabelStyle, cornerLabelText);
            fVar2.i(textView3, item.getPlayNum());
            List<ShortsLabel> labelList = item.getLabelList();
            String str = null;
            if (labelList != null) {
                Iterator<T> it = labelList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj2 = it.next();
                        ShortsLabel shortsLabel3 = (ShortsLabel) obj2;
                        if (shortsLabel3.getRankingId() != null) {
                            Integer rankingId = shortsLabel3.getRankingId();
                            Intrinsics.checkNotNull(rankingId);
                            if (rankingId.intValue() > 0) {
                                break;
                            }
                        }
                    } else {
                        obj2 = null;
                        break;
                    }
                }
                shortsLabel = (ShortsLabel) obj2;
            } else {
                shortsLabel = null;
            }
            if (shortsLabel != null) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            textView5.setVisibility(i10);
            if (shortsLabel != null) {
                textView5.setText(shortsLabel.getLabelName());
                textView5.setOnClickListener(new b(this.f37416k, shortsLabel, item));
                textView4.setVisibility(8);
                return;
            }
            List<ShortsLabel> labelList2 = item.getLabelList();
            if (labelList2 != null) {
                Iterator<T> it2 = labelList2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj = it2.next();
                        ShortsLabel shortsLabel4 = (ShortsLabel) obj;
                        if (shortsLabel4.getRankingId() == null) {
                            break;
                        }
                        Integer rankingId2 = shortsLabel4.getRankingId();
                        Intrinsics.checkNotNull(rankingId2);
                        if (rankingId2.intValue() == 0) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                shortsLabel2 = (ShortsLabel) obj;
            } else {
                shortsLabel2 = null;
            }
            if (shortsLabel2 == null) {
                i11 = 8;
            }
            textView4.setVisibility(i11);
            if (shortsLabel2 != null) {
                str = shortsLabel2.getLabelName();
            }
            textView4.setText(str);
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class f {
        public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void f(TextView textView) {
            textView.setPadding(jk.g.a(4.0f), 0, jk.g.a(4.0f), 0);
        }

        private final void g(TextView textView) {
            if (fk.v.f51778a.b()) {
                textView.setPadding(jk.g.a(4.0f), 0, 0, 0);
            } else {
                textView.setPadding(0, 0, jk.g.a(4.0f), 0);
            }
            textView.setCompoundDrawablePadding(jk.g.a(2.0f));
        }

        @NotNull
        public final String a(int i10) {
            if (i10 != -24 && i10 != -23) {
                if (i10 != -20) {
                    if (i10 != 1) {
                        if (i10 != 15) {
                            if (i10 != -10) {
                                if (i10 != -9) {
                                    if (i10 != -8) {
                                        switch (i10) {
                                            case DiscoverModule.STYLE_BANNER_MIDDLE /* -33 */:
                                                return "horizontal_carousel_mini";
                                            case DiscoverModule.STYLE_HORIZONTAL_IMAGE_VIDEO_PREVIEW_ITEM /* -32 */:
                                                return "horizontal_video";
                                            case DiscoverModule.STYLE_BANNER_RECT /* -31 */:
                                                return "horizontal_carousel";
                                            case DiscoverModule.STYLE_BANNER_SMALL /* -30 */:
                                                return "vertical_carousel_minimized";
                                            default:
                                                switch (i10) {
                                                    case 3:
                                                        return "single_row_circle";
                                                    case 4:
                                                        return "carousel";
                                                    case 5:
                                                        return "horizontal_image_icon";
                                                    case 6:
                                                        return "ranking_list_horizontal_image";
                                                    case 7:
                                                        return "coming_soon";
                                                    case 8:
                                                        return "double_row_waterfall";
                                                    case 9:
                                                        return "double_row_three_columns";
                                                    case 10:
                                                        break;
                                                    case 11:
                                                        return "category_filtering";
                                                    case 12:
                                                        return "limited_time_discount";
                                                    case 13:
                                                        return "discover_banner";
                                                    default:
                                                        return "exception_style=" + i10;
                                                }
                                        }
                                    } else {
                                        return "row_ranking";
                                    }
                                } else {
                                    return "row_subtag_style2";
                                }
                            } else {
                                return "row_subtag_style1";
                            }
                        } else {
                            return "ranking_list_tag";
                        }
                    } else {
                        return "horizontal_image";
                    }
                } else {
                    return "left_picture";
                }
            }
            return "featured_double_row_multi_columns";
        }

        public final int b() {
            return DiscoverModuleAdapter.I;
        }

        public final int c() {
            return DiscoverModuleAdapter.H;
        }

        @NotNull
        public final Size d(int i10) {
            Size size = (Size) DiscoverModuleAdapter.F.get(Integer.valueOf(i10));
            if (size != null) {
                return size;
            }
            int G = (DeviceUtil.f48146a.G() - jk.g.a((((i10 - 1) * 10) + 16.0f) + 16.0f)) / i10;
            return new Size(G, bt.a.c(G * 1.296296f));
        }

        public final void e(@NotNull DiscoverShorts item, @NotNull ShortsLabel rankLabel) {
            int i10;
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(rankLabel, "rankLabel");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            String shortPlayCode = item.getShortPlayCode();
            if (shortPlayCode == null) {
                shortPlayCode = "";
            }
            bundle.putString("reel_id", shortPlayCode);
            Integer rankingId = rankLabel.getRankingId();
            if (rankingId != null) {
                i10 = rankingId.intValue();
            } else {
                i10 = 0;
            }
            bundle.putInt("ranking_list_zi_id", i10);
            bundle.putString("ranking_list_zi_name", rankLabel.getLabelName());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ranking_list_zi_click", bundle, 0L, 4, null);
        }

        public final void h(@NotNull TextView view, int i10, @Nullable String str) {
            Intrinsics.checkNotNullParameter(view, "view");
            view.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 5) {
                        if (i10 == 6) {
                            view.setTextColor(view.getContext().getColor(R$color.drama_member_only_label));
                            view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_member_only_label), (Drawable) null, (Drawable) null, (Drawable) null);
                            g(view);
                            view.setBackgroundResource(R$drawable.bg_label_style_member_only);
                        }
                    } else {
                        view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                        f(view);
                        view.setBackgroundResource(R$drawable.bg_label_style_new);
                    }
                } else {
                    view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                    f(view);
                    view.setBackgroundResource(R$drawable.bg_label_style_hot);
                }
            } else {
                view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_excusive_label), (Drawable) null, (Drawable) null, (Drawable) null);
                g(view);
                view.setBackgroundResource(R$drawable.bg_label_style_exclusive);
            }
            if (str != null && str.length() != 0) {
                view.setText(str);
                view.setVisibility(0);
                return;
            }
            view.setVisibility(4);
        }

        public final void i(@Nullable TextView textView, @Nullable Long l10) {
            if (textView == null) {
                return;
            }
            if (l10 == null) {
                textView.setVisibility(8);
                return;
            }
            textView.setText(fk.w.f51779a.a(l10.longValue()));
            textView.setVisibility(0);
        }

        private f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$DiscoverActBannerViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1872#2,3:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$DiscoverActBannerViewHolder\n*L\n2207#1:2304,3\n*E\n"})
    /* loaded from: classes6.dex */
    public final class g extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleActBannerBinding f37421g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37422h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleActBannerBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37422h = discoverModuleAdapter;
            this.f37421g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            l.a.b(this, discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverModuleActBannerBinding c() {
            return this.f37421g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ArrayList arrayList = new ArrayList();
            List<DiscoverResource> contentResponseList = item.getContentResponseList();
            if (contentResponseList != null) {
                int i11 = 0;
                for (Object obj : contentResponseList) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.y();
                    }
                    arrayList.add(((DiscoverResource) obj).toActResource(i12, item.getBannerId(), item.getTitle()));
                    i11 = i12;
                }
            }
            c().f40067a.A(this.f37422h.f37365o, "discover_banner", this.f37422h.j0(), arrayList, this.f37422h.l0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class h extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleCategoryPageBinding f37423g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private DiscoverCategoryViewPagerAdapter f37424h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37425i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleCategoryPageBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37425i = discoverModuleAdapter;
            this.f37423g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            DiscoverCategoryViewPagerAdapter discoverCategoryViewPagerAdapter;
            if (!ud.a.f68411a.J() || (discoverCategoryViewPagerAdapter = this.f37424h) == null) {
                return null;
            }
            return discoverCategoryViewPagerAdapter.M();
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverModuleCategoryPageBinding c() {
            return this.f37423g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            DiscoverCategoryViewPagerAdapter discoverCategoryViewPagerAdapter = this.f37424h;
            if (discoverCategoryViewPagerAdapter != null) {
                discoverCategoryViewPagerAdapter.z();
            }
            DiscoverCategoryViewPagerAdapter discoverCategoryViewPagerAdapter2 = new DiscoverCategoryViewPagerAdapter(c(), this.f37425i.j0(), item, this.f37425i.k0());
            discoverCategoryViewPagerAdapter2.Q();
            this.f37424h = discoverCategoryViewPagerAdapter2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class i extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleRankingPageBinding f37426g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private DiscoverRankingViewPagerAdapter f37427h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37428i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleRankingPageBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37428i = discoverModuleAdapter;
            this.f37426g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverModuleRankingPageBinding c() {
            return this.f37426g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            DiscoverRankingViewPagerAdapter discoverRankingViewPagerAdapter = this.f37427h;
            if (discoverRankingViewPagerAdapter != null) {
                discoverRankingViewPagerAdapter.z();
            }
            DiscoverRankingViewPagerAdapter discoverRankingViewPagerAdapter2 = new DiscoverRankingViewPagerAdapter(c(), this.f37428i.j0(), item, this.f37428i.k0());
            discoverRankingViewPagerAdapter2.N();
            this.f37427h = discoverRankingViewPagerAdapter2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class j extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverHorizontalImageVideoPreviewBinding f37429g;

        /* renamed from: h  reason: collision with root package name */
        private final int f37430h;

        /* renamed from: i  reason: collision with root package name */
        private final int f37431i;

        /* renamed from: j  reason: collision with root package name */
        private final int f37432j;

        /* renamed from: k  reason: collision with root package name */
        private final int f37433k;

        /* renamed from: l  reason: collision with root package name */
        private final float f37434l;
        @NotNull

        /* renamed from: m  reason: collision with root package name */
        private Function1<? super DiscoverModule, Unit> f37435m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37436n;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a implements f.InterfaceC0089f {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CardView f37437a;

            a(CardView cardView) {
                this.f37437a = cardView;
            }

            @Override // ca.f.InterfaceC0089f
            public void a(ca.d adInfo) {
                Intrinsics.checkNotNullParameter(adInfo, "adInfo");
                this.f37437a.setTag("");
            }

            @Override // ca.f.InterfaceC0089f
            public void b(ca.d adInfo) {
                Intrinsics.checkNotNullParameter(adInfo, "adInfo");
                this.f37437a.setTag("playEnd");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverHorizontalImageVideoPreviewBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37436n = discoverModuleAdapter;
            this.f37429g = binding;
            int G = DeviceUtil.f48146a.G() - (jk.g.a(20.0f) * 2);
            this.f37430h = G;
            this.f37431i = bt.a.b(G * 0.904d);
            this.f37432j = jk.g.a(37.0f);
            this.f37433k = jk.g.a(50.0f);
            this.f37434l = fk.z.f51786a.r();
            this.f37435m = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.f0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit n10;
                    n10 = DiscoverModuleAdapter.j.n((DiscoverModule) obj);
                    return n10;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit n(DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(DiscoverModuleAdapter discoverModuleAdapter, int i10, DiscoverShorts discoverShorts, DiscoverModule discoverModule, j jVar, View view) {
            String num;
            n k02 = discoverModuleAdapter.k0();
            if (k02 != null) {
                n.a.a(k02, i10, discoverShorts, DiscoverModuleAdapter.C.a(discoverModule.getStyle()), discoverModule, null, 16, null);
            }
            if (jVar.c().f40049i.getVisibility() == 0) {
                EventManager eventManager = EventManager.f42463a;
                Bundle B = eventManager.B(discoverModuleAdapter.l0());
                String shortPlayCode = discoverShorts.getShortPlayCode();
                String str = "";
                if (shortPlayCode == null) {
                    shortPlayCode = "";
                }
                B.putString("reel_id", shortPlayCode);
                B.putString("scene", "discover");
                B.putString("module_name", discoverModule.getTitle());
                B.putString("module_id", discoverModule.getBannerId());
                B.putInt("position_id", discoverModule.getPosition() + 1);
                Integer recommendId = discoverModule.getRecommendId();
                if (recommendId != null && (num = recommendId.toString()) != null) {
                    str = num;
                }
                B.putString(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, str);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "reel_video_preview_click", B, 0L, 4, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit q(DiscoverShorts discoverShorts, int i10, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ag.a.c(ag.a.f646a, discoverShorts, i10, 0, discoverModuleAdapter.l0(), null, discoverModule.getSort(), discoverModule.getStatus(), null, 148, null);
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            DiscoverShorts discoverShorts;
            DiscoverModule discoverModule = (DiscoverModule) d();
            if (discoverModule != null) {
                discoverShorts = discoverModule.getShorts();
            } else {
                discoverShorts = null;
            }
            if (discoverShorts == null) {
                return null;
            }
            VideoPreview videoPreview = (VideoPreview) this.itemView.findViewById(R$id.video_preview);
            String parseVideoUrl = discoverShorts.parseVideoUrl(480);
            if (parseVideoUrl == null) {
                parseVideoUrl = "";
            }
            String str = parseVideoUrl;
            if (videoPreview == null || str.length() <= 0) {
                return null;
            }
            boolean needDecrypt = discoverShorts.getNeedDecrypt();
            Object d10 = d();
            Intrinsics.checkNotNull(d10);
            return new VideoPreviewInfo(videoPreview, needDecrypt, str, (DiscoverModule) d10, discoverShorts, false, 0, true, 64, null);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            this.f37435m.invoke(discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: m */
        public ItemDiscoverHorizontalImageVideoPreviewBinding c() {
            return this.f37429g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: o */
        public void f(int i10, @NotNull final DiscoverModule item) {
            String summary;
            int a10;
            Intrinsics.checkNotNullParameter(item, "item");
            final DiscoverShorts shorts = item.getShorts();
            if (shorts == null) {
                return;
            }
            final int position = item.getPosition();
            c().f40044d.getLayoutParams().height = this.f37431i;
            CustomFrescoView customFrescoView = c().f40042b;
            customFrescoView.setContentDescription(c().f40042b.getContext().getString(R$string.cover_pic) + shorts.getShortPlayName() + ' ' + i10 + ' ' + shorts.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f40042b;
            FrescoConfig frescoConfig = new FrescoConfig();
            frescoConfig.setUrl(shorts.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(this.f37432j);
            frescoConfig.setResizeHeight(this.f37433k);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(this.f37434l);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            c().f40048h.setText(shorts.getShortPlayName());
            BaseTextView baseTextView = c().f40047g;
            String recommendContent = shorts.getRecommendContent();
            if (recommendContent != null && recommendContent.length() != 0) {
                summary = shorts.getRecommendContent();
            } else {
                summary = shorts.getSummary();
            }
            baseTextView.setText(summary);
            CustomFrescoView customFrescoView3 = c().f40045e;
            customFrescoView3.setContentDescription(c().f40045e.getContext().getString(R$string.preview_pic) + shorts.getShortPlayName() + ' ' + i10 + ' ' + shorts.getId());
            CustomFrescoView customFrescoView4 = c().f40045e;
            FrescoConfig frescoConfig2 = new FrescoConfig();
            frescoConfig2.setUrl(shorts.getHorizontalCoverId());
            frescoConfig2.setOssWidth(this.f37430h);
            frescoConfig2.setOssHeight(this.f37431i);
            frescoConfig2.setResizeWidth(this.f37430h);
            frescoConfig2.setResizeHeight(this.f37431i);
            frescoConfig2.setPlaceholderResId(R$drawable.ic_preview_placeholder);
            frescoConfig2.setPlaceholderScaleType(c3.q.f3025g);
            fVar.A(customFrescoView4, frescoConfig2);
            VideoPreview videoPreview = c().f40049i;
            String horizontalCoverId = shorts.getHorizontalCoverId();
            if (horizontalCoverId == null) {
                horizontalCoverId = "";
            }
            videoPreview.i(horizontalCoverId, this.f37430h, this.f37431i);
            CardView cardView = c().f40046f;
            final DiscoverModuleAdapter discoverModuleAdapter = this.f37436n;
            cardView.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.adapter.discover.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DiscoverModuleAdapter.j.p(DiscoverModuleAdapter.this, position, shorts, item, this, view);
                }
            });
            View root = c().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            if (position == 0) {
                a10 = 0;
            } else {
                a10 = jk.g.a(16.0f);
            }
            jk.b0.i(root, jk.g.a(20.0f), a10, jk.g.a(20.0f), 0, 8, null);
            final DiscoverModuleAdapter discoverModuleAdapter2 = this.f37436n;
            this.f37435m = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.e0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit q10;
                    q10 = DiscoverModuleAdapter.j.q(DiscoverShorts.this, position, discoverModuleAdapter2, item, (DiscoverModule) obj);
                    return q10;
                }
            };
        }

        public final void r() {
            int i10;
            boolean z10;
            Integer num;
            int i11;
            DiscoverModule discoverModule = (DiscoverModule) d();
            if (discoverModule != null) {
                i10 = discoverModule.getPosition();
            } else {
                i10 = 0;
            }
            if ((i10 + 1) % 3 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean b10 = AdSwitchConfigure.f42267a.value().b(AdScene.NATIVE);
            boolean p10 = com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().p("horizontal_video");
            AdManager adManager = AdManager.f41600a;
            boolean C = adManager.C(AdFormat.NATIVE);
            DiscoverModuleAdapter discoverModuleAdapter = this.f37436n;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("updateNativeAdView -> position(");
            DiscoverModule discoverModule2 = (DiscoverModule) d();
            if (discoverModule2 != null) {
                num = Integer.valueOf(discoverModule2.getPosition());
            } else {
                num = null;
            }
            sb2.append(num);
            sb2.append(") isThreePosition(");
            sb2.append(z10);
            sb2.append(") nativeAdEnable(");
            sb2.append(b10);
            sb2.append(") adSceneEnable(");
            sb2.append(p10);
            sb2.append(") existCache(");
            sb2.append(C);
            sb2.append(") childCount(");
            sb2.append(c().f40041a.getChildCount());
            sb2.append(')');
            discoverModuleAdapter.r(sb2.toString());
            if (z10 && b10 && p10) {
                if (C) {
                    CardView cardView = c().f40041a;
                    DiscoverModuleAdapter discoverModuleAdapter2 = this.f37436n;
                    cardView.setVisibility(0);
                    if (cardView.getChildCount() == 0) {
                        EventManager eventManager = EventManager.f42463a;
                        Bundle bundle = new Bundle();
                        bundle.putString("ad_placement", "discover_card_native");
                        bundle.putString("type", "3");
                        Unit unit = Unit.f60915a;
                        EventManager.s0(eventManager, "ad_placement_show", bundle, 0L, 4, null);
                        WeakReference weakReference = discoverModuleAdapter2.f37365o;
                        Intrinsics.checkNotNull(cardView);
                        if (adManager.M()) {
                            i11 = R$layout.view_native_ad_admob_1;
                        } else {
                            i11 = R$layout.view_native_ad_tp_1;
                        }
                        AdManager.o0(adManager, weakReference, cardView, i11, "discover_card_native", null, null, new a(cardView), 48, null);
                    }
                }
                CardView cardView2 = c().f40041a;
                if (cardView2.getChildCount() == 1 && !Intrinsics.areEqual(cardView2.getTag(), "playEnd")) {
                    cardView2.dispatchWindowVisibilityChanged(0);
                    return;
                }
                return;
            }
            CardView cardView3 = c().f40041a;
            DiscoverModuleAdapter discoverModuleAdapter3 = this.f37436n;
            if (cardView3.getVisibility() == 0) {
                discoverModuleAdapter3.r("clear AdContainer2");
                cardView3.removeAllViews();
                cardView3.setVisibility(8);
            }
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class k extends BaseAdapter<DiscoverModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleEmptySpaceBinding f37438g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37439h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleEmptySpaceBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37439h = discoverModuleAdapter;
            this.f37438g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverModuleEmptySpaceBinding c() {
            return this.f37438g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40125a.getLayoutParams().height = item.getTopMargin();
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface l {

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a {
            @Nullable
            public static VideoPreviewInfo a(@NotNull l lVar) {
                return null;
            }

            public static void b(@NotNull l lVar, @NotNull DiscoverModule discoverModule) {
                Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            }
        }

        @Nullable
        VideoPreviewInfo a();

        void b(@NotNull DiscoverModule discoverModule);
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$IconTitleMoreViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2303:1\n256#2,2:2304\n1#3:2306\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$IconTitleMoreViewHolder\n*L\n900#1:2304,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class m extends BaseAdapter<DiscoverModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleTitleMoreWithIconBinding f37440g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37441h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleTitleMoreWithIconBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37441h = discoverModuleAdapter;
            this.f37440g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverModuleTitleMoreWithIconBinding c() {
            return this.f37440g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverModule item) {
            boolean z10;
            Intrinsics.checkNotNullParameter(item, "item");
            if (!(item instanceof DiscoverTitleModule)) {
                return;
            }
            DiscoverModuleAdapter discoverModuleAdapter = this.f37441h;
            BaseTextView titleTv = c().f40179d;
            Intrinsics.checkNotNullExpressionValue(titleTv, "titleTv");
            ConstraintLayout titleMoreContainer = c().f40178c;
            Intrinsics.checkNotNullExpressionValue(titleMoreContainer, "titleMoreContainer");
            ImageView moreIv = c().f40176a;
            Intrinsics.checkNotNullExpressionValue(moreIv, "moreIv");
            DiscoverTitleModule discoverTitleModule = (DiscoverTitleModule) item;
            discoverModuleAdapter.G0(i10, titleTv, titleMoreContainer, moreIv, discoverTitleModule);
            Integer iconRes = discoverTitleModule.getIconRes();
            ImageView titleIv = c().f40177b;
            Intrinsics.checkNotNullExpressionValue(titleIv, "titleIv");
            int i11 = 0;
            if (iconRes != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                i11 = 8;
            }
            titleIv.setVisibility(i11);
            if (iconRes != null) {
                c().f40177b.setImageResource(iconRes.intValue());
            }
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface n {

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a {
            public static /* synthetic */ void a(n nVar, int i10, BaseShorts baseShorts, String str, DiscoverModule discoverModule, DiscoverRanking discoverRanking, int i11, Object obj) {
                if (obj == null) {
                    if ((i11 & 16) != 0) {
                        discoverRanking = null;
                    }
                    nVar.c(i10, baseShorts, str, discoverModule, discoverRanking);
                    return;
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onShortsClick");
            }
        }

        void a(@NotNull String str, @Nullable Integer num);

        void b(@NotNull VideoPreviewInfo videoPreviewInfo);

        void c(int i10, @Nullable BaseShorts baseShorts, @NotNull String str, @NotNull DiscoverModule discoverModule, @Nullable DiscoverRanking discoverRanking);

        void d(int i10, @NotNull DiscoverResource discoverResource, @Nullable ActResource actResource);

        void e();

        void f(int i10, @NotNull ShortsLabel shortsLabel, @NotNull String str, @NotNull DiscoverModule discoverModule, @NotNull String str2);

        void g(int i10, @Nullable DiscoverResource discoverResource);
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class o extends BaseAdapter<DiscoverModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemLowSkuTemplateNotification3Binding f37443g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37444h;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37445e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(DiscoverModuleAdapter discoverModuleAdapter) {
                super(0L, 1, null);
                this.f37445e = discoverModuleAdapter;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                n k02 = this.f37445e.k0();
                if (k02 != null) {
                    k02.e();
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemLowSkuTemplateNotification3Binding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37444h = discoverModuleAdapter;
            this.f37443g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemLowSkuTemplateNotification3Binding c() {
            return this.f37443g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40480d.setSelected(true);
            c().f40477a.setOnClickListener(new a(this.f37444h));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class p extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleMain1Row2ColumnXMainPartBinding f37450g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37451h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleMain1Row2ColumnXMainPartBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37451h = discoverModuleAdapter;
            this.f37450g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(DiscoverModuleAdapter discoverModuleAdapter, DiscoverShorts discoverShorts, DiscoverModule discoverModule, p pVar, View view) {
            String num;
            n k02 = discoverModuleAdapter.k0();
            if (k02 != null) {
                n.a.a(k02, 0, discoverShorts, DiscoverModuleAdapter.C.a(discoverModule.getStyle()), discoverModule, null, 16, null);
            }
            if (pVar.c().f40133e.getVisibility() == 0) {
                EventManager eventManager = EventManager.f42463a;
                Bundle B = eventManager.B(discoverModuleAdapter.l0());
                String shortPlayCode = discoverShorts.getShortPlayCode();
                String str = "";
                if (shortPlayCode == null) {
                    shortPlayCode = "";
                }
                B.putString("reel_id", shortPlayCode);
                B.putString("scene", "discover");
                B.putString("module_name", discoverModule.getTitle());
                B.putString("module_id", discoverModule.getBannerId());
                B.putInt("position_id", 1);
                Integer recommendId = discoverModule.getRecommendId();
                if (recommendId != null && (num = recommendId.toString()) != null) {
                    str = num;
                }
                B.putString(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, str);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "reel_video_preview_click", B, 0L, 4, null);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            DiscoverShorts discoverShorts;
            List<DiscoverShorts> shortPlayResponseList;
            if (!ud.a.f68411a.J()) {
                return null;
            }
            DiscoverModule discoverModule = (DiscoverModule) d();
            if (discoverModule != null && (shortPlayResponseList = discoverModule.getShortPlayResponseList()) != null) {
                discoverShorts = (DiscoverShorts) CollectionsKt.firstOrNull(shortPlayResponseList);
            } else {
                discoverShorts = null;
            }
            if (discoverShorts == null) {
                return null;
            }
            VideoPreview videoPreview = (VideoPreview) this.itemView.findViewById(R$id.video_preview);
            String parseVideoUrl = discoverShorts.parseVideoUrl(480);
            if (parseVideoUrl == null) {
                parseVideoUrl = "";
            }
            String str = parseVideoUrl;
            if (videoPreview == null || str.length() <= 0) {
                return null;
            }
            boolean needDecrypt = discoverShorts.getNeedDecrypt();
            Object d10 = d();
            Intrinsics.checkNotNull(d10);
            return new VideoPreviewInfo(videoPreview, needDecrypt, str, (DiscoverModule) d10, discoverShorts, true, 2, false);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            List<DiscoverShorts> shortPlayResponseList;
            DiscoverShorts discoverShorts;
            Integer num;
            Integer num2;
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            DiscoverModule discoverModule2 = (DiscoverModule) d();
            if (discoverModule2 != null && (shortPlayResponseList = discoverModule2.getShortPlayResponseList()) != null && (discoverShorts = (DiscoverShorts) CollectionsKt.firstOrNull(shortPlayResponseList)) != null) {
                DiscoverModuleAdapter discoverModuleAdapter = this.f37451h;
                ag.a aVar = ag.a.f646a;
                DiscoverTab l02 = discoverModuleAdapter.l0();
                DiscoverModule discoverModule3 = (DiscoverModule) d();
                if (discoverModule3 != null) {
                    num = discoverModule3.getSort();
                } else {
                    num = null;
                }
                DiscoverModule discoverModule4 = (DiscoverModule) d();
                if (discoverModule4 != null) {
                    num2 = discoverModule4.getStatus();
                } else {
                    num2 = null;
                }
                ag.a.c(aVar, discoverShorts, 0, 0, l02, null, num, num2, null, 148, null);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemDiscoverModuleMain1Row2ColumnXMainPartBinding c() {
            return this.f37450g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull final DiscoverModule item) {
            final DiscoverShorts discoverShorts;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            List<DiscoverShorts> shortPlayResponseList = item.getShortPlayResponseList();
            if (shortPlayResponseList != null && (discoverShorts = (DiscoverShorts) CollectionsKt.firstOrNull(shortPlayResponseList)) != null) {
                CustomFrescoView customFrescoView = c().f40129a;
                customFrescoView.setContentDescription(discoverShorts.getShortPlayName() + ' ' + i10 + ' ' + discoverShorts.getId());
                kk.f fVar = kk.f.f60747a;
                CustomFrescoView customFrescoView2 = c().f40129a;
                FrescoConfig frescoConfig = new FrescoConfig();
                frescoConfig.setUrl(discoverShorts.getPicUrl());
                frescoConfig.setOssWidth(DiscoverModuleAdapter.D);
                frescoConfig.setOssHeight(DiscoverModuleAdapter.E);
                frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
                frescoConfig.setCornerTransform(true);
                frescoConfig.setCornerRadius(DiscoverModuleAdapter.G);
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView2, frescoConfig);
                DiscoverModuleAdapter.C.i(c().f40132d, discoverShorts.getPlayNum());
                View root = c().getRoot();
                final DiscoverModuleAdapter discoverModuleAdapter = this.f37451h;
                root.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.adapter.discover.g0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DiscoverModuleAdapter.p.m(DiscoverModuleAdapter.this, discoverShorts, item, this, view);
                    }
                });
                c().f40131c.setText(discoverShorts.getShortPlayName());
                c().f40130b.setText(discoverShorts.getSummary());
                c().f40133e.setCornerRadius(Float.valueOf(DiscoverModuleAdapter.G));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class q extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleMain1Row2ColumnXRowPartBinding f37452g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private DiscoverMain1Row2ColumnXAdapter f37453h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37454i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleMain1Row2ColumnXRowPartBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37454i = discoverModuleAdapter;
            this.f37452g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit m(DiscoverModule discoverModule, DiscoverModuleAdapter discoverModuleAdapter, int i10, DiscoverShorts shorts) {
            Intrinsics.checkNotNullParameter(shorts, "shorts");
            String a10 = DiscoverModuleAdapter.C.a(discoverModule.getStyle());
            n k02 = discoverModuleAdapter.k0();
            if (k02 != null) {
                n.a.a(k02, i10, shorts, a10, discoverModule, null, 16, null);
            }
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            DiscoverMain1Row2ColumnXAdapter discoverMain1Row2ColumnXAdapter = this.f37453h;
            if (discoverMain1Row2ColumnXAdapter != null) {
                RecyclerView.LayoutManager layoutManager = c().f40138a.getLayoutManager();
                Context context = c().getRoot().getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                discoverMain1Row2ColumnXAdapter.K(layoutManager, context, discoverModule);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemDiscoverModuleMain1Row2ColumnXRowPartBinding c() {
            return this.f37452g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull final DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            DiscoverMain1Row2ColumnXAdapter discoverMain1Row2ColumnXAdapter = new DiscoverMain1Row2ColumnXAdapter(item);
            final DiscoverModuleAdapter discoverModuleAdapter = this.f37454i;
            discoverMain1Row2ColumnXAdapter.N(item, c());
            discoverMain1Row2ColumnXAdapter.P(new Function2() { // from class: com.startshorts.androidplayer.adapter.discover.h0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit m10;
                    m10 = DiscoverModuleAdapter.q.m(DiscoverModule.this, discoverModuleAdapter, ((Integer) obj).intValue(), (DiscoverShorts) obj2);
                    return m10;
                }
            });
            this.f37453h = discoverMain1Row2ColumnXAdapter;
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class r extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverPictureTextBinding f37455g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private Function1<? super DiscoverModule, Unit> f37456h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37457i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverPictureTextBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37457i = discoverModuleAdapter;
            this.f37455g = binding;
            this.f37456h = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.k0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit n10;
                    n10 = DiscoverModuleAdapter.r.n((DiscoverModule) obj);
                    return n10;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit n(DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(DiscoverModuleAdapter discoverModuleAdapter, int i10, DiscoverShorts discoverShorts, DiscoverModule discoverModule, View view) {
            n k02 = discoverModuleAdapter.k0();
            if (k02 != null) {
                n.a.a(k02, i10, discoverShorts, DiscoverModuleAdapter.C.a(discoverModule.getStyle()), discoverModule, null, 16, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit q(DiscoverShorts discoverShorts, int i10, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ag.a.c(ag.a.f646a, discoverShorts, i10, 0, discoverModuleAdapter.l0(), null, discoverModule.getSort(), discoverModule.getStatus(), null, 148, null);
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            this.f37456h.invoke(discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: m */
        public ItemDiscoverPictureTextBinding c() {
            return this.f37455g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: o */
        public void f(int i10, @NotNull final DiscoverModule item) {
            int topMargin;
            Intrinsics.checkNotNullParameter(item, "item");
            final DiscoverShorts shorts = item.getShorts();
            if (shorts == null) {
                return;
            }
            final int position = item.getPosition();
            CustomFrescoView customFrescoView = c().f40210a;
            customFrescoView.setContentDescription(shorts.getShortPlayName() + ' ' + i10 + ' ' + shorts.getId());
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView2 = c().f40210a;
            FrescoConfig frescoConfig = new FrescoConfig();
            frescoConfig.setUrl(shorts.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(DiscoverModuleAdapter.D);
            frescoConfig.setResizeHeight(DiscoverModuleAdapter.E);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(DiscoverModuleAdapter.G);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView2, frescoConfig);
            DiscoverModuleAdapter.C.i(c().f40214e, shorts.getPlayNum());
            c().f40212c.setText(shorts.getShortPlayName());
            c().f40211b.setText(shorts.getSummary());
            c().f40213d.setText(c().f40213d.getContext().getString(R$string.common_total_ep, String.valueOf(shorts.getTotalEpisodes())));
            View root = c().getRoot();
            final DiscoverModuleAdapter discoverModuleAdapter = this.f37457i;
            root.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.adapter.discover.i0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DiscoverModuleAdapter.r.p(DiscoverModuleAdapter.this, position, shorts, item, view);
                }
            });
            View root2 = c().getRoot();
            Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
            if (position == 0) {
                topMargin = 0;
            } else {
                topMargin = item.getTopMargin();
            }
            jk.b0.i(root2, 0, topMargin, 0, 0, 13, null);
            final DiscoverModuleAdapter discoverModuleAdapter2 = this.f37457i;
            this.f37456h = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.j0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit q10;
                    q10 = DiscoverModuleAdapter.r.q(DiscoverShorts.this, position, discoverModuleAdapter2, item, (DiscoverModule) obj);
                    return q10;
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredRelatedShortViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2303:1\n1872#2,3:2304\n1872#2,3:2308\n1#3:2307\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredRelatedShortViewHolder\n*L\n1681#1:2304,3\n1689#1:2308,3\n*E\n"})
    /* loaded from: classes6.dex */
    public final class s extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverStaggeredRelatedShortListItemBinding f37458g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private Function1<? super DiscoverModule, Unit> f37459h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37460i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverStaggeredRelatedShortListItemBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37460i = discoverModuleAdapter;
            this.f37458g = binding;
            this.f37459h = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.l0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit p10;
                    p10 = DiscoverModuleAdapter.s.p((DiscoverModule) obj);
                    return p10;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit p(DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit r(TagRelatedShorts tagRelatedShorts, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, View it) {
            n k02;
            Intrinsics.checkNotNullParameter(it, "it");
            ShortsLabel label = tagRelatedShorts.getLabel();
            if (label != null && (k02 = discoverModuleAdapter.k0()) != null) {
                k02.f(discoverModule.getPosition(), label, DiscoverModuleAdapter.C.a(discoverModule.getStyle()), discoverModule, "double_row_waterfall_related_shorts");
            }
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit s(TagRelatedShorts tagRelatedShorts, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, View it) {
            n k02;
            Intrinsics.checkNotNullParameter(it, "it");
            ShortsLabel label = tagRelatedShorts.getLabel();
            if (label != null && (k02 = discoverModuleAdapter.k0()) != null) {
                k02.f(discoverModule.getPosition(), label, DiscoverModuleAdapter.C.a(discoverModule.getStyle()), discoverModule, "double_row_waterfall_related_shorts");
            }
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit t(DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, DiscoverShorts discoverShorts, DiscoverShorts it, int i10) {
            Intrinsics.checkNotNullParameter(it, "it");
            n k02 = discoverModuleAdapter.k0();
            if (k02 != null) {
                n.a.a(k02, discoverModule.getPosition(), discoverShorts, DiscoverModuleAdapter.C.a(discoverModule.getStyle()), discoverModule, null, 16, null);
            }
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit u(List list, int i10, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.y();
                }
                ag.a.c(ag.a.f646a, (DiscoverShorts) obj, i10, 0, discoverModuleAdapter.l0(), null, discoverModule.getSort(), discoverModule.getStatus(), "discover_row_subtag_style2", 20, null);
                i11 = i12;
            }
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            this.f37459h.invoke(discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: o */
        public ItemDiscoverStaggeredRelatedShortListItemBinding c() {
            return this.f37458g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: q */
        public void f(final int i10, @NotNull final DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            List<TagRelatedShorts> labelRelatedShortPlayRankingList = item.getLabelRelatedShortPlayRankingList();
            if (labelRelatedShortPlayRankingList != null) {
                int i11 = 0;
                final TagRelatedShorts tagRelatedShorts = (TagRelatedShorts) CollectionsKt.t0(labelRelatedShortPlayRankingList, 0);
                if (tagRelatedShorts != null) {
                    ShortsLabel label = tagRelatedShorts.getLabel();
                    String replace = new Regex("\\s").replace((label == null || (r2 = label.getLabelName()) == null) ? "" : "", " ");
                    GradientTextView gradientTextView = c().f40310c;
                    gradientTextView.setText(replace);
                    fk.u uVar = fk.u.f51776a;
                    gradientTextView.setColor(uVar.a(R$color.rank_title_text_start), uVar.a(R$color.rank_title_text_end));
                    GradientTextView tvTagName = c().f40310c;
                    Intrinsics.checkNotNullExpressionValue(tvTagName, "tvTagName");
                    final DiscoverModuleAdapter discoverModuleAdapter = this.f37460i;
                    jk.b0.c(tvTagName, 0L, new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.m0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            Unit r10;
                            r10 = DiscoverModuleAdapter.s.r(TagRelatedShorts.this, discoverModuleAdapter, item, (View) obj);
                            return r10;
                        }
                    }, 1, null);
                    ImageView ivTagRight = c().f40308a;
                    Intrinsics.checkNotNullExpressionValue(ivTagRight, "ivTagRight");
                    final DiscoverModuleAdapter discoverModuleAdapter2 = this.f37460i;
                    jk.b0.c(ivTagRight, 0L, new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.n0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            Unit s10;
                            s10 = DiscoverModuleAdapter.s.s(TagRelatedShorts.this, discoverModuleAdapter2, item, (View) obj);
                            return s10;
                        }
                    }, 1, null);
                    final List<DiscoverShorts> shortPlayResponseList = tagRelatedShorts.getShortPlayResponseList();
                    if (shortPlayResponseList == null) {
                        shortPlayResponseList = new ArrayList<>();
                    }
                    c().f40309b.removeAllViews();
                    final DiscoverModuleAdapter discoverModuleAdapter3 = this.f37460i;
                    for (Object obj : shortPlayResponseList) {
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            CollectionsKt.y();
                        }
                        final DiscoverShorts discoverShorts = (DiscoverShorts) obj;
                        Context context = c().getRoot().getContext();
                        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                        StragglersRelatedShortItemView stragglersRelatedShortItemView = new StragglersRelatedShortItemView(context);
                        stragglersRelatedShortItemView.r(discoverShorts, i11, new Function2() { // from class: com.startshorts.androidplayer.adapter.discover.o0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                Unit t10;
                                t10 = DiscoverModuleAdapter.s.t(DiscoverModuleAdapter.this, item, discoverShorts, (DiscoverShorts) obj2, ((Integer) obj3).intValue());
                                return t10;
                            }
                        });
                        c().f40309b.addView(stragglersRelatedShortItemView);
                        i11 = i12;
                    }
                    final DiscoverModuleAdapter discoverModuleAdapter4 = this.f37460i;
                    this.f37459h = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.p0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Unit u10;
                            u10 = DiscoverModuleAdapter.s.u(shortPlayResponseList, i10, discoverModuleAdapter4, item, (DiscoverModule) obj2);
                            return u10;
                        }
                    };
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredTagListViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1872#2,3:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredTagListViewHolder\n*L\n1726#1:2304,3\n*E\n"})
    /* loaded from: classes6.dex */
    public final class t extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverStaggeredTagListItemBinding f37461g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private Function1<? super DiscoverModule, Unit> f37462h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37463i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverStaggeredTagListItemBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37463i = discoverModuleAdapter;
            this.f37461g = binding;
            this.f37462h = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.q0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit m10;
                    m10 = DiscoverModuleAdapter.t.m((DiscoverModule) obj);
                    return m10;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit m(DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit o(DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, ShortsLabel shortsLabel, ShortsLabel it, int i10) {
            Intrinsics.checkNotNullParameter(it, "it");
            n k02 = discoverModuleAdapter.k0();
            if (k02 != null) {
                k02.f(discoverModule.getPosition(), shortsLabel, DiscoverModuleAdapter.C.a(discoverModule.getStyle()), discoverModule, "double_row_waterfall_subtag");
            }
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            this.f37462h.invoke(discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: l */
        public ItemDiscoverStaggeredTagListItemBinding c() {
            return this.f37461g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: n */
        public void f(int i10, @NotNull final DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            List<TagListInfo> labelRankingList = item.getLabelRankingList();
            if (labelRankingList != null) {
                int i11 = 0;
                TagListInfo tagListInfo = (TagListInfo) CollectionsKt.t0(labelRankingList, 0);
                if (tagListInfo != null) {
                    String string = c().f40321b.getContext().getString(R$string.labels_card_title);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    GradientTextView gradientTextView = c().f40321b;
                    gradientTextView.setText(string);
                    fk.u uVar = fk.u.f51776a;
                    gradientTextView.setColor(uVar.a(R$color.tag_card_title_text_start), uVar.a(R$color.tag_card_title_text_end));
                    List<ShortsLabel> labelList = tagListInfo.getLabelList();
                    if (labelList == null) {
                        labelList = new ArrayList<>();
                    }
                    c().f40320a.removeAllViews();
                    final DiscoverModuleAdapter discoverModuleAdapter = this.f37463i;
                    for (Object obj : labelList) {
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            CollectionsKt.y();
                        }
                        final ShortsLabel shortsLabel = (ShortsLabel) obj;
                        Context context = c().getRoot().getContext();
                        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                        StragglersTagItemView stragglersTagItemView = new StragglersTagItemView(context);
                        stragglersTagItemView.r(shortsLabel, i11, new Function2() { // from class: com.startshorts.androidplayer.adapter.discover.r0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                Unit o10;
                                o10 = DiscoverModuleAdapter.t.o(DiscoverModuleAdapter.this, item, shortsLabel, (ShortsLabel) obj2, ((Integer) obj3).intValue());
                                return o10;
                            }
                        });
                        c().f40320a.addView(stragglersTagItemView);
                        i11 = i12;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,2303:1\n774#2:2304\n865#2,2:2305\n1872#2,3:2307\n295#2,2:2310\n46#3:2312\n1328#4,3:2313\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredViewHolder\n*L\n1517#1:2304\n1517#1:2305,2\n1524#1:2307,3\n1569#1:2310,2\n1544#1:2312\n1549#1:2313,3\n*E\n"})
    /* loaded from: classes6.dex */
    public final class u extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverStaggeredItemBinding f37464g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private Function1<? super DiscoverModule, Unit> f37465h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37466i;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37467e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ int f37468f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ ShortsLabel f37469g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ DiscoverModule f37470h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(DiscoverModuleAdapter discoverModuleAdapter, int i10, ShortsLabel shortsLabel, DiscoverModule discoverModule) {
                super(0L, 1, null);
                this.f37467e = discoverModuleAdapter;
                this.f37468f = i10;
                this.f37469g = shortsLabel;
                this.f37470h = discoverModule;
            }

            @Override // yd.d
            public void a(View v10) {
                n k02;
                Intrinsics.checkNotNullParameter(v10, "v");
                if (ABTestFactory.f42224a.v1().isEnable().invoke().booleanValue() && (k02 = this.f37467e.k0()) != null) {
                    k02.f(this.f37468f, this.f37469g, DiscoverModuleAdapter.C.a(this.f37470h.getStyle()), this.f37470h, "discover");
                }
            }
        }

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class b extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37471e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef<ShortsLabel> f37472f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ DiscoverShorts f37473g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(DiscoverModuleAdapter discoverModuleAdapter, Ref.ObjectRef<ShortsLabel> objectRef, DiscoverShorts discoverShorts) {
                super(0L, 1, null);
                this.f37471e = discoverModuleAdapter;
                this.f37472f = objectRef;
                this.f37473g = discoverShorts;
            }

            @Override // yd.d
            public void a(View v10) {
                Integer num;
                Intrinsics.checkNotNullParameter(v10, "v");
                n k02 = this.f37471e.k0();
                if (k02 != null) {
                    ShortsLabel shortsLabel = this.f37472f.element;
                    if (shortsLabel != null) {
                        num = shortsLabel.getRankingId();
                    } else {
                        num = null;
                    }
                    k02.a("ranking_list_zi", num);
                }
                f fVar = DiscoverModuleAdapter.C;
                DiscoverShorts discoverShorts = this.f37473g;
                ShortsLabel shortsLabel2 = this.f37472f.element;
                Intrinsics.checkNotNull(shortsLabel2);
                fVar.e(discoverShorts, shortsLabel2);
            }
        }

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class c extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f37474e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ DiscoverModule f37475f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ DiscoverShorts f37476g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, DiscoverShorts discoverShorts) {
                super(0L, 1, null);
                this.f37474e = discoverModuleAdapter;
                this.f37475f = discoverModule;
                this.f37476g = discoverShorts;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                n k02 = this.f37474e.k0();
                if (k02 != null) {
                    n.a.a(k02, this.f37475f.getPosition(), this.f37476g, DiscoverModuleAdapter.C.a(this.f37475f.getStyle()), this.f37475f, null, 16, null);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverStaggeredItemBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37466i = discoverModuleAdapter;
            this.f37464g = binding;
            this.f37465h = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.s0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit n10;
                    n10 = DiscoverModuleAdapter.u.n((DiscoverModule) obj);
                    return n10;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit n(DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(FlexboxLayout flexboxLayout) {
            boolean z10;
            Intrinsics.checkNotNull(flexboxLayout);
            if (flexboxLayout.getChildCount() == 0) {
                jk.b0.d(flexboxLayout);
                return;
            }
            int top = flexboxLayout.getChildAt(0).getTop();
            int i10 = 0;
            for (View view : ViewGroupKt.getChildren(flexboxLayout)) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.y();
                }
                View view2 = view;
                BaseTextView baseTextView = (BaseTextView) view2.findViewById(R$id.tv_tag);
                boolean z11 = true;
                if (view2.getTop() > top) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = (baseTextView == null || !baseTextView.c()) ? false : false;
                if (!z10 && !z11) {
                    jk.b0.l(view2);
                } else if (i10 == 0) {
                    jk.b0.d(flexboxLayout);
                    return;
                } else {
                    jk.b0.d(view2);
                }
                i10 = i11;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit q(DiscoverShorts discoverShorts, DiscoverModule discoverModule, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ag.a.c(ag.a.f646a, discoverShorts, discoverModule.getPosition(), 0, discoverModuleAdapter.l0(), null, discoverModule.getSort(), discoverModule.getStatus(), null, 148, null);
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            this.f37465h.invoke(discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: m */
        public ItemDiscoverStaggeredItemBinding c() {
            return this.f37464g;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0111 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:74:0x00df A[SYNTHETIC] */
        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: o */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void f(int r14, @org.jetbrains.annotations.NotNull final com.startshorts.androidplayer.bean.discover.DiscoverModule r15) {
            /*
                Method dump skipped, instructions count: 520
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.u.f(int, com.startshorts.androidplayer.bean.discover.DiscoverModule):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredViewRankHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1872#2,3:2304\n1872#2,3:2307\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredViewRankHolder\n*L\n1630#1:2304,3\n1638#1:2307,3\n*E\n"})
    /* loaded from: classes6.dex */
    public final class v extends BaseAdapter<DiscoverModule>.ViewHolder implements l {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverStaggeredRankItemBinding f37477g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private Function1<? super DiscoverModule, Unit> f37478h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37479i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverStaggeredRankItemBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37479i = discoverModuleAdapter;
            this.f37477g = binding;
            this.f37478h = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.v0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit o10;
                    o10 = DiscoverModuleAdapter.v.o((DiscoverModule) obj);
                    return o10;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit o(DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit q(DiscoverModuleAdapter discoverModuleAdapter, PlayListDiscoverRanking playListDiscoverRanking, DiscoverModule discoverModule, View it) {
            Intrinsics.checkNotNullParameter(it, "it");
            n k02 = discoverModuleAdapter.k0();
            if (k02 != null) {
                k02.a("row_ranking", playListDiscoverRanking.getRankingId());
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("module_type", DiscoverModuleAdapter.C.a(discoverModule.getStyle()));
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discover_more_click", bundle, 0L, 4, null);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit r(DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, DiscoverShorts discoverShorts, Ref.ObjectRef objectRef, DiscoverShorts it, int i10) {
            Intrinsics.checkNotNullParameter(it, "it");
            n k02 = discoverModuleAdapter.k0();
            if (k02 != null) {
                k02.c(discoverModule.getPosition(), discoverShorts, DiscoverModuleAdapter.C.a(discoverModule.getStyle()), discoverModule, (DiscoverRanking) objectRef.element);
            }
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit s(List list, int i10, DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, DiscoverModule it) {
            Intrinsics.checkNotNullParameter(it, "it");
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.y();
                }
                ag.a.c(ag.a.f646a, (DiscoverShorts) obj, i10, 0, discoverModuleAdapter.l0(), null, discoverModule.getSort(), discoverModule.getStatus(), "discover_row_ranking", 20, null);
                i11 = i12;
            }
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        @Nullable
        public VideoPreviewInfo a() {
            return l.a.a(this);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.l
        public void b(@NotNull DiscoverModule discoverModule) {
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            this.f37478h.invoke(discoverModule);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: n */
        public ItemDiscoverStaggeredRankItemBinding c() {
            return this.f37477g;
        }

        /* JADX WARN: Type inference failed for: r4v6, types: [T, com.startshorts.androidplayer.bean.discover.DiscoverRanking] */
        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: p */
        public void f(final int i10, @NotNull final DiscoverModule item) {
            PlayListDiscoverRanking playListDiscoverRanking;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            List<PlayListDiscoverRanking> rankingResponseList = item.getRankingResponseList();
            if (rankingResponseList != null) {
                int i11 = 0;
                final PlayListDiscoverRanking playListDiscoverRanking2 = (PlayListDiscoverRanking) CollectionsKt.t0(rankingResponseList, 0);
                if (playListDiscoverRanking2 != null) {
                    LinearLayout llMore = c().f40285c;
                    Intrinsics.checkNotNullExpressionValue(llMore, "llMore");
                    final DiscoverModuleAdapter discoverModuleAdapter = this.f37479i;
                    jk.b0.c(llMore, 0L, new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.w0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            Unit q10;
                            q10 = DiscoverModuleAdapter.v.q(DiscoverModuleAdapter.this, playListDiscoverRanking2, item, (View) obj);
                            return q10;
                        }
                    }, 1, null);
                    String rankingName = playListDiscoverRanking2.getRankingName();
                    if (rankingName == null) {
                        rankingName = "";
                    }
                    String replace = new Regex("\\s").replace(rankingName, " ");
                    GradientTextView gradientTextView = c().f40287e;
                    gradientTextView.setText(replace);
                    fk.u uVar = fk.u.f51776a;
                    gradientTextView.setColor(uVar.a(R$color.rank_title_text_start), uVar.a(R$color.rank_title_text_end));
                    final List<DiscoverShorts> shortPlayResponseList = playListDiscoverRanking2.getShortPlayResponseList();
                    if (shortPlayResponseList == null) {
                        shortPlayResponseList = new ArrayList<>();
                    }
                    final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    List<PlayListDiscoverRanking> rankingResponseList2 = item.getRankingResponseList();
                    if (rankingResponseList2 != null && (playListDiscoverRanking = (PlayListDiscoverRanking) CollectionsKt.t0(rankingResponseList2, 0)) != null) {
                        objectRef.element = new DiscoverRanking(playListDiscoverRanking.getRankingId(), playListDiscoverRanking.getRankingName());
                    }
                    c().f40286d.removeAllViews();
                    final DiscoverModuleAdapter discoverModuleAdapter2 = this.f37479i;
                    for (Object obj : shortPlayResponseList) {
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            CollectionsKt.y();
                        }
                        final DiscoverShorts discoverShorts = (DiscoverShorts) obj;
                        Context context = c().getRoot().getContext();
                        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                        StragglersRankItemView stragglersRankItemView = new StragglersRankItemView(context);
                        stragglersRankItemView.r(discoverShorts, i11, new Function2() { // from class: com.startshorts.androidplayer.adapter.discover.x0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                Unit r10;
                                r10 = DiscoverModuleAdapter.v.r(DiscoverModuleAdapter.this, item, discoverShorts, objectRef, (DiscoverShorts) obj2, ((Integer) obj3).intValue());
                                return r10;
                            }
                        });
                        c().f40286d.addView(stragglersRankItemView);
                        i11 = i12;
                    }
                    final DiscoverModuleAdapter discoverModuleAdapter3 = this.f37479i;
                    this.f37478h = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.y0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Unit s10;
                            s10 = DiscoverModuleAdapter.v.s(shortPlayResponseList, i10, discoverModuleAdapter3, item, (DiscoverModule) obj2);
                            return s10;
                        }
                    };
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$TimeCountTitleMoreViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1863#2,2:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$TimeCountTitleMoreViewHolder\n*L\n851#1:2304,2\n*E\n"})
    /* loaded from: classes6.dex */
    public final class w extends BaseAdapter<DiscoverModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleTimeCountTitleMoreBinding f37480g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private CountDownTimer f37481h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37482i;

        /* compiled from: DiscoverModuleAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends CountDownTimer {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ w f37483a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(long j10, w wVar) {
                super(j10, 1000L);
                this.f37483a = wVar;
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                this.f37483a.n(0L);
                this.f37483a.f37481h = null;
                this.f37483a.r();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j10) {
                this.f37483a.n(j10);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleTimeCountTitleMoreBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37482i = discoverModuleAdapter;
            this.f37480g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void n(long j10) {
            long j11 = j10 / 1000;
            long j12 = (long) MMKV.ExpireInHour;
            long j13 = j11 / j12;
            long j14 = j11 % j12;
            long j15 = 60;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Locale locale = Locale.ENGLISH;
            String format = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Long.valueOf(j13)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            ((TextView) c().getRoot().findViewById(R$id.hour_tv)).setText(format);
            String format2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Long.valueOf(j14 / j15)}, 1));
            Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
            ((TextView) c().getRoot().findViewById(R$id.minute_tv)).setText(format2);
            String format3 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Long.valueOf(j14 % j15)}, 1));
            Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
            ((TextView) c().getRoot().findViewById(R$id.second_tv)).setText(format3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void r() {
            Object value = this.f37482i.f37372v.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            for (BaseAdapter baseAdapter : (Iterable) value) {
                baseAdapter.notifyItemRangeChanged(0, baseAdapter.getItemCount(), "update_discount_tag");
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: m */
        public ItemDiscoverModuleTimeCountTitleMoreBinding c() {
            return this.f37480g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: o */
        public void f(int i10, @NotNull DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            if (!(item instanceof DiscoverTitleModule)) {
                return;
            }
            DiscoverModuleAdapter discoverModuleAdapter = this.f37482i;
            BaseTextView titleTv = c().f40166e;
            Intrinsics.checkNotNullExpressionValue(titleTv, "titleTv");
            ConstraintLayout titleMoreContainer = c().f40165d;
            Intrinsics.checkNotNullExpressionValue(titleMoreContainer, "titleMoreContainer");
            ImageView moreIv = c().f40164c;
            Intrinsics.checkNotNullExpressionValue(moreIv, "moreIv");
            discoverModuleAdapter.G0(i10, titleTv, titleMoreContainer, moreIv, (DiscoverTitleModule) item);
            p();
        }

        public final void p() {
            long j10;
            long j11;
            Long validEndTime;
            Long validStartTime;
            DiscoverModule discoverModule = (DiscoverModule) d();
            if (discoverModule != null && (validStartTime = discoverModule.getValidStartTime()) != null) {
                j10 = validStartTime.longValue();
            } else {
                j10 = 0;
            }
            DiscoverModule discoverModule2 = (DiscoverModule) d();
            if (discoverModule2 != null && (validEndTime = discoverModule2.getValidEndTime()) != null) {
                j11 = validEndTime.longValue();
            } else {
                j11 = 0;
            }
            DeviceUtil deviceUtil = DeviceUtil.f48146a;
            if (deviceUtil.K() >= j10 && deviceUtil.K() <= j11) {
                long K = j11 - deviceUtil.K();
                CountDownTimer countDownTimer = this.f37481h;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                this.f37481h = null;
                if (K > 1000) {
                    n(K);
                    a aVar = new a(K, this);
                    this.f37481h = aVar;
                    aVar.start();
                    return;
                }
                n(0L);
                r();
                return;
            }
            n(0L);
            r();
        }

        public final void q() {
            CountDownTimer countDownTimer = this.f37481h;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.f37481h = null;
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class x extends BaseAdapter<DiscoverModule>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverModuleTitleMoreBinding f37484g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f37485h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public x(@NotNull DiscoverModuleAdapter discoverModuleAdapter, ItemDiscoverModuleTitleMoreBinding binding) {
            super(discoverModuleAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37485h = discoverModuleAdapter;
            this.f37484g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscoverModuleTitleMoreBinding c() {
            return this.f37484g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull DiscoverModule item) {
            Intrinsics.checkNotNullParameter(item, "item");
            if (!(item instanceof DiscoverTitleModule)) {
                return;
            }
            DiscoverModuleAdapter discoverModuleAdapter = this.f37485h;
            BaseTextView titleTv = c().f40172c;
            Intrinsics.checkNotNullExpressionValue(titleTv, "titleTv");
            ConstraintLayout titleMoreContainer = c().f40171b;
            Intrinsics.checkNotNullExpressionValue(titleMoreContainer, "titleMoreContainer");
            ImageView moreIv = c().f40170a;
            Intrinsics.checkNotNullExpressionValue(moreIv, "moreIv");
            discoverModuleAdapter.G0(i10, titleTv, titleMoreContainer, moreIv, (DiscoverTitleModule) item);
        }
    }

    /* compiled from: DiscoverModuleAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class y extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ DiscoverTitleModule f37487f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ TextView f37488g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ int f37489h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(DiscoverTitleModule discoverTitleModule, TextView textView, int i10) {
            super(0L, 1, null);
            this.f37487f = discoverTitleModule;
            this.f37488g = textView;
            this.f37489h = i10;
        }

        private final DiscoverModule b(int i10) {
            if (i10 < DiscoverModuleAdapter.this.m().size()) {
                DiscoverModule discoverModule = DiscoverModuleAdapter.this.m().get(i10);
                if (discoverModule.getStyle() == 15) {
                    return discoverModule;
                }
                return null;
            }
            return null;
        }

        @Override // yd.d
        public void a(View v10) {
            int i10;
            int i11;
            Integer tabId;
            int i12;
            DiscoverRanking discoverRanking;
            Integer id2;
            Intrinsics.checkNotNullParameter(v10, "v");
            int contentModuleStyle = this.f37487f.getContentModuleStyle();
            String str = null;
            if (contentModuleStyle != 11) {
                if (contentModuleStyle != 15) {
                    DiscoverMoreFragment.a aVar = DiscoverMoreFragment.G;
                    Context context = this.f37488g.getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                    String bannerId = this.f37487f.getBannerId();
                    String a10 = DiscoverModuleAdapter.C.a(this.f37487f.getContentModuleStyle());
                    String title = this.f37487f.getTitle();
                    Integer valueOf = Integer.valueOf(this.f37487f.getContentModuleStyle());
                    DiscoverShorts shorts = this.f37487f.getShorts();
                    if (shorts != null) {
                        str = shorts.getShortPlayCode();
                    }
                    aVar.a(context, new ModuleInfo(bannerId, a10, title, 0, valueOf, str, this.f37487f.getRecommendId(), DiscoverModuleAdapter.this.l0(), null, null, null, 1792, null), this.f37487f.formatTitleForEvent());
                    return;
                }
                DiscoverModule b10 = b(this.f37489h + 1);
                if (b10 == null) {
                    return;
                }
                List<DiscoverRanking> rankingNameList = b10.getRankingNameList();
                int i13 = 0;
                if (rankingNameList != null && !rankingNameList.isEmpty()) {
                    List<DiscoverRanking> rankingNameList2 = b10.getRankingNameList();
                    if (rankingNameList2 != null && (discoverRanking = rankingNameList2.get(b10.getCategoryTabSelectedPos())) != null && (id2 = discoverRanking.getId()) != null) {
                        i12 = id2.intValue();
                    } else {
                        i12 = 0;
                    }
                    i10 = i12;
                } else {
                    i10 = 0;
                }
                RankingActivity.a aVar2 = RankingActivity.f45454u;
                Context context2 = v10.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                Integer recommendId = b10.getRecommendId();
                if (recommendId != null) {
                    i11 = recommendId.intValue();
                } else {
                    i11 = 0;
                }
                ArrayList<DiscoverRanking> arrayList = new ArrayList<>();
                List<DiscoverRanking> rankingNameList3 = b10.getRankingNameList();
                if (rankingNameList3 == null) {
                    rankingNameList3 = CollectionsKt.n();
                }
                arrayList.addAll(rankingNameList3);
                Unit unit = Unit.f60915a;
                DiscoverTab l02 = DiscoverModuleAdapter.this.l0();
                if (l02 != null && (tabId = l02.getTabId()) != null) {
                    i13 = tabId.intValue();
                }
                int i14 = i13;
                DiscoverTab l03 = DiscoverModuleAdapter.this.l0();
                String str2 = (l03 == null || (r1 = l03.getTabDisplayName()) == null) ? "" : "";
                f fVar = DiscoverModuleAdapter.C;
                aVar2.e(context2, i11, arrayList, i10, i14, str2, fVar.a(this.f37487f.getContentModuleStyle()), this.f37487f.getBannerId(), this.f37487f.getTitle());
                EventManager eventManager = EventManager.f42463a;
                Bundle B = eventManager.B(DiscoverModuleAdapter.this.l0());
                DiscoverTitleModule discoverTitleModule = this.f37487f;
                B.putString("module_name", discoverTitleModule.getTitle());
                B.putString("module_id", discoverTitleModule.getBannerId());
                B.putString("module_type", fVar.a(discoverTitleModule.getContentModuleStyle()));
                EventManager.s0(eventManager, "discover_more_click", B, 0L, 4, null);
                return;
            }
            DiscoverMoreCategoryFilterFragment.a aVar3 = DiscoverMoreCategoryFilterFragment.f45919p;
            Context context3 = this.f37488g.getContext();
            Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
            String bannerId2 = this.f37487f.getBannerId();
            String a11 = DiscoverModuleAdapter.C.a(this.f37487f.getContentModuleStyle());
            String title2 = this.f37487f.getTitle();
            Integer valueOf2 = Integer.valueOf(this.f37487f.getContentModuleStyle());
            DiscoverShorts shorts2 = this.f37487f.getShorts();
            if (shorts2 != null) {
                str = shorts2.getShortPlayCode();
            }
            ModuleInfo moduleInfo = new ModuleInfo(bannerId2, a11, title2, 0, valueOf2, str, this.f37487f.getRecommendId(), DiscoverModuleAdapter.this.l0(), null, null, null, 1792, null);
            List<DiscoverCategory> categoryVOList = this.f37487f.getCategoryVOList();
            if (categoryVOList == null) {
                categoryVOList = new ArrayList<>();
            }
            aVar3.a(context3, moduleInfo, categoryVOList, this.f37487f.formatTitleForEvent());
        }
    }

    static {
        int G2 = (DeviceUtil.f48146a.G() - jk.g.a(44.0f)) / 2;
        H = G2;
        I = (int) (G2 * 1.3696d);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r5v11, types: [com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter$mOnScrollListener$1] */
    public DiscoverModuleAdapter(@NotNull WeakReference<Activity> actRef) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        this.f37365o = actRef;
        this.f37371u = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List r02;
                r02 = DiscoverModuleAdapter.r0();
                return r02;
            }
        });
        this.f37372v = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List p02;
                p02 = DiscoverModuleAdapter.p0();
                return p02;
            }
        });
        this.f37373w = new ConcurrentHashMap<>();
        this.f37374x = new ConcurrentHashMap<>();
        this.f37376z = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List o02;
                o02 = DiscoverModuleAdapter.o0();
                return o02;
            }
        });
        this.A = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List q02;
                q02 = DiscoverModuleAdapter.q0();
                return q02;
            }
        });
        this.B = new RecyclerView.OnScrollListener() { // from class: com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter$mOnScrollListener$1

            /* renamed from: a  reason: collision with root package name */
            private boolean f37442a;

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if ((i10 == 1 || i10 == 2) && !this.f37442a) {
                    this.f37442a = true;
                    kk.f.f60747a.r();
                } else if (i10 == 0) {
                    this.f37442a = false;
                    kk.f.f60747a.y();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0(int i10, TextView textView, ConstraintLayout constraintLayout, View view, DiscoverTitleModule discoverTitleModule) {
        int d10;
        int i11;
        int i12;
        textView.setText(discoverTitleModule.getTitle());
        fk.z zVar = fk.z.f51786a;
        int d11 = zVar.d();
        int topMargin = discoverTitleModule.getTopMargin();
        if (discoverTitleModule.isShowMore()) {
            d10 = zVar.b();
        } else {
            d10 = zVar.d();
        }
        constraintLayout.setPaddingRelative(d11, topMargin, d10, discoverTitleModule.getBottomMargin());
        Integer backgroundRes = discoverTitleModule.getBackgroundRes();
        if (backgroundRes != null) {
            i11 = backgroundRes.intValue();
        } else {
            i11 = R$drawable.ic_transparent;
        }
        constraintLayout.setBackgroundResource(i11);
        view.setContentDescription(view.getContext().getString(R$string.more_other) + i10);
        view.setOnClickListener(new y(discoverTitleModule, textView, i10));
        if (discoverTitleModule.isShowMore()) {
            i12 = 0;
        } else {
            i12 = 8;
        }
        view.setVisibility(i12);
    }

    private final void g0(boolean z10, RecyclerView.ViewHolder viewHolder) {
        RecyclerView recyclerView;
        if (viewHolder instanceof SingleRowViewHolder) {
            recyclerView = ((SingleRowViewHolder) viewHolder).c().f40157a;
        } else if (viewHolder instanceof q) {
            recyclerView = ((q) viewHolder).c().f40138a;
        } else {
            recyclerView = null;
        }
        if (recyclerView != null) {
            if (z10) {
                recyclerView.addOnScrollListener(this.B);
            } else {
                recyclerView.removeOnScrollListener(this.B);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m0(DiscoverModule discoverModule, DiscoverShorts discoverShorts, int i10) {
        n nVar;
        int i11;
        ActResource actResource;
        String str;
        DiscoverResource bannerContent = discoverShorts.getBannerContent();
        if (bannerContent == null) {
            return;
        }
        DiscoverResource bannerContent2 = discoverShorts.getBannerContent();
        if (bannerContent2 != null && (actResource = bannerContent2.toActResource((i11 = i10 + 1), discoverModule.getBannerId(), discoverModule.getTitle())) != null) {
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "discover_carousel_click", EventManager.x(eventManager, actResource, false, 2, null), 0L, 4, null);
            eventManager.S("discover_carousel", actResource);
            if (!bannerContent.isShortsBanner()) {
                Bundle a10 = jk.b.a(EventManager.x(eventManager, actResource, false, 2, null), eventManager.B(this.f37366p));
                a10.putString("module_name", discoverModule.getTitle());
                a10.putString("module_id", discoverModule.getBannerId());
                a10.putString("position_id", String.valueOf(i11));
                a10.putString("module_type", C.a(discoverModule.getStyle()));
                Integer sort = discoverModule.getSort();
                if (sort != null) {
                    str = sort.toString();
                } else {
                    str = null;
                }
                a10.putString("module_list", str);
                Integer status = discoverModule.getStatus();
                if (status != null && status.intValue() == 2) {
                    a10.putString("module_list_type", "close");
                } else if (status != null && status.intValue() == 1) {
                    a10.putString("module_list_type", MRAIDPresenter.OPEN);
                } else {
                    a10.putString("module_list_type", null);
                }
                if (!TextUtils.isEmpty(discoverShorts.getUpack())) {
                    a10.putString("upack", discoverShorts.getUpack());
                }
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "discover_module_click", a10, 0L, 4, null);
            }
        }
        if (bannerContent.isBrandAdBanner()) {
            n nVar2 = this.f37368r;
            if (nVar2 != null) {
                nVar2.g(i10, bannerContent);
            }
        } else if (!bannerContent.isActBanner() && !bannerContent.isH5WebViewBanner() && !bannerContent.isH5BrowserBanner()) {
            if (bannerContent.isShortsBanner() && (nVar = this.f37368r) != null) {
                n.a.a(nVar, i10, bannerContent.getShortPlayResponse(), C.a(discoverModule.getStyle()), discoverModule, null, 16, null);
            }
        } else {
            n nVar3 = this.f37368r;
            if (nVar3 != null) {
                nVar3.d(i10, bannerContent, bannerContent.toActResource(1 + i10, discoverModule.getBannerId(), discoverModule.getTitle()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(int i10, DiscoverShorts discoverShorts, DiscoverModule discoverModule) {
        ActResource actResource;
        DiscoverResource bannerContent = discoverShorts.getBannerContent();
        if (bannerContent != null && bannerContent.isShortsBanner()) {
            ag.a.c(ag.a.f646a, discoverShorts, i10, 0, this.f37366p, null, discoverModule.getSort(), discoverModule.getStatus(), null, 148, null);
        }
        DiscoverResource bannerContent2 = discoverShorts.getBannerContent();
        if (bannerContent2 != null && (actResource = bannerContent2.toActResource(1 + i10, discoverShorts.getModuleId(), discoverShorts.getModuleName())) != null) {
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "discover_carousel_show", EventManager.x(eventManager, actResource, false, 2, null), 0L, 4, null);
            if (!actResource.isShorts()) {
                eventManager.T("discover_carousel", actResource);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List o0() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List p0() {
        return Collections.synchronizedList(new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List q0() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List r0() {
        return Collections.synchronizedList(new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseAdapter s0(DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        DiscoverHorizontalImageIconAdapter discoverHorizontalImageIconAdapter = new DiscoverHorizontalImageIconAdapter();
        discoverModuleAdapter.f37371u.getValue().add(discoverHorizontalImageIconAdapter);
        return discoverHorizontalImageIconAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseAdapter t0(DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        DiscoverDiscountHorizontalImageAdapter discoverDiscountHorizontalImageAdapter = new DiscoverDiscountHorizontalImageAdapter(it);
        discoverModuleAdapter.f37372v.getValue().add(discoverDiscountHorizontalImageAdapter);
        return discoverDiscountHorizontalImageAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseAdapter u0(DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new DiscoverRectanglePictureAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SingleRowViewHolder v0(DiscoverModuleAdapter discoverModuleAdapter, ViewGroup viewGroup, Function1 adapterCreator) {
        Intrinsics.checkNotNullParameter(adapterCreator, "adapterCreator");
        return new SingleRowViewHolder(discoverModuleAdapter, adapterCreator, (ItemDiscoverModuleSingleRowBinding) discoverModuleAdapter.s(viewGroup, R$layout.item_discover_module_single_row));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseAdapter w0(DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new DiscoverHorizontalImageAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseAdapter x0(DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new DiscoverRankingAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseAdapter y0(DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new DiscoverComingSoonAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseAdapter z0(DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        DiscoverCirclePictureAdapter discoverCirclePictureAdapter = new DiscoverCirclePictureAdapter();
        discoverModuleAdapter.f37371u.getValue().add(discoverCirclePictureAdapter);
        return discoverCirclePictureAdapter;
    }

    public final void A0() {
        try {
            if (this.f37376z.isInitialized()) {
                for (g gVar : this.f37376z.getValue()) {
                    gVar.c().f40067a.F();
                }
            }
            if (this.A.isInitialized()) {
                for (j jVar : this.A.getValue()) {
                    CardView adContainer = jVar.c().f40041a;
                    Intrinsics.checkNotNullExpressionValue(adContainer, "adContainer");
                    if (adContainer.getVisibility() == 0) {
                        jVar.c().f40041a.dispatchWindowVisibilityChanged(8);
                    }
                }
            }
        } catch (Exception e10) {
            l("onPause exception -> " + e10.getMessage());
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void B0() {
        String str;
        int intValue;
        try {
            ArrayList arrayList = new ArrayList();
            Collection<Pair<String, DiscoverModule>> values = this.f37374x.values();
            Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
            Iterator<T> it = values.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                Bundle B = EventManager.f42463a.B(this.f37366p);
                B.putString("module_type", (String) pair.e());
                B.putInt("subtag_id", ((DiscoverModule) pair.f()).getSubTagId());
                B.putString("module_name", ((DiscoverModule) pair.f()).getTitle());
                B.putString("module_id", ((DiscoverModule) pair.f()).getBannerId());
                Integer sort = ((DiscoverModule) pair.f()).getSort();
                if (sort != null) {
                    str = sort.toString();
                } else {
                    str = null;
                }
                B.putString("module_list", str);
                Integer status = ((DiscoverModule) pair.f()).getStatus();
                if (status != null && status.intValue() == 2) {
                    B.putString("module_list_type", "close");
                } else {
                    if (status != null && status.intValue() == 1) {
                        B.putString("module_list_type", MRAIDPresenter.OPEN);
                    }
                    B.putString("module_list_type", null);
                }
                Integer recommendId = ((DiscoverModule) pair.f()).getRecommendId();
                if (recommendId != null && (intValue = recommendId.intValue()) > 0) {
                    B.putInt(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, intValue);
                }
                Unit unit = Unit.f60915a;
                arrayList.add(new EventInfo("discover_module_show", B, 0L, 4, null));
            }
            EventManager.f42463a.v0(arrayList);
            if (this.f37376z.isInitialized()) {
                for (g gVar : this.f37376z.getValue()) {
                    gVar.c().f40067a.H();
                }
            }
            if (this.A.isInitialized()) {
                for (j jVar : this.A.getValue()) {
                    CardView adContainer = jVar.c().f40041a;
                    Intrinsics.checkNotNullExpressionValue(adContainer, "adContainer");
                    if (adContainer.getVisibility() == 0) {
                        jVar.c().f40041a.dispatchWindowVisibilityChanged(0);
                    }
                }
            }
        } catch (Exception e10) {
            l("onResume exception -> " + e10.getMessage());
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void C(@Nullable List<DiscoverModule> list, boolean z10) {
        if (this.f37371u.isInitialized()) {
            this.f37371u.getValue().clear();
        }
        this.f37373w.clear();
        this.f37374x.clear();
        super.C(list, z10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: C0 */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<DiscoverModule>.ViewHolder holder) {
        StaggeredGridLayoutManager.LayoutParams layoutParams;
        String str;
        int intValue;
        List<DiscoverShorts> shortPlayResponseList;
        boolean z10;
        Intrinsics.checkNotNullParameter(holder, "holder");
        ViewGroup.LayoutParams layoutParams2 = holder.itemView.getLayoutParams();
        if (layoutParams2 instanceof StaggeredGridLayoutManager.LayoutParams) {
            layoutParams = (StaggeredGridLayoutManager.LayoutParams) layoutParams2;
        } else {
            layoutParams = null;
        }
        if (layoutParams != null) {
            if (!(holder instanceof u) && !(holder instanceof v) && !(holder instanceof t) && !(holder instanceof s)) {
                z10 = true;
            } else {
                z10 = false;
            }
            layoutParams.setFullSpan(z10);
        }
        DiscoverModule d10 = holder.d();
        if (d10 == null) {
            return;
        }
        if (holder instanceof w) {
            ((w) holder).p();
        }
        if (holder instanceof g) {
            this.f37376z.getValue().add(holder);
        }
        boolean z11 = holder instanceof j;
        if (z11) {
            this.A.getValue().add(holder);
        }
        if (!(holder instanceof l)) {
            if (id.a.f53392a.c() && (shortPlayResponseList = d10.getShortPlayResponseList()) != null && (!shortPlayResponseList.isEmpty())) {
                throw new Exception("holder should implement IModuleViewHolder interface");
            }
            return;
        }
        String bannerId = d10.getBannerId();
        if (bannerId != null && bannerId.length() != 0) {
            g0(true, holder);
            Boolean bool = this.f37373w.get(bannerId);
            Boolean bool2 = Boolean.TRUE;
            if (!Intrinsics.areEqual(bool, bool2)) {
                this.f37373w.put(bannerId, bool2);
                String a10 = C.a(d10.getStyle());
                this.f37374x.put(bannerId, new Pair<>(a10, d10));
                EventManager eventManager = EventManager.f42463a;
                Bundle B = eventManager.B(this.f37366p);
                B.putString("module_name", d10.getTitle());
                B.putString("module_id", d10.getBannerId());
                B.putInt("subtag_id", d10.getSubTagId());
                B.putString("module_type", a10);
                Integer sort = d10.getSort();
                if (sort != null) {
                    str = sort.toString();
                } else {
                    str = null;
                }
                B.putString("module_list", str);
                Integer status = d10.getStatus();
                if (status != null && status.intValue() == 2) {
                    B.putString("module_list_type", "close");
                } else if (status != null && status.intValue() == 1) {
                    B.putString("module_list_type", MRAIDPresenter.OPEN);
                } else {
                    B.putString("module_list_type", null);
                }
                Integer recommendId = d10.getRecommendId();
                if (recommendId != null && (intValue = recommendId.intValue()) > 0) {
                    B.putInt(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, intValue);
                }
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "discover_module_show", B, 0L, 4, null);
            }
            if (!(holder instanceof h) && !(holder instanceof q) && !(holder instanceof SingleRowViewHolder) && !(holder instanceof i)) {
                if (z11) {
                    j jVar = (j) holder;
                    jVar.r();
                    jVar.b(d10);
                    return;
                }
                ((l) holder).b(d10);
                return;
            } else if (holder.itemView.getTag() == null) {
                holder.itemView.setTag("logged");
                return;
            } else {
                ((l) holder).b(d10);
                return;
            }
        }
        l("onViewAttachedToWindow -> holder=" + holder.getClass().getSimpleName() + ",title=" + d10.getTitle() + ",bannerId is blank");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: D0 */
    public void onViewDetachedFromWindow(@NotNull BaseAdapter<DiscoverModule>.ViewHolder holder) {
        l lVar;
        String bannerId;
        VideoPreviewInfo a10;
        n nVar;
        Intrinsics.checkNotNullParameter(holder, "holder");
        g0(false, holder);
        DiscoverModule d10 = holder.d();
        if (d10 == null) {
            return;
        }
        w wVar = null;
        if (holder instanceof l) {
            lVar = (l) holder;
        } else {
            lVar = null;
        }
        if (lVar != null && (a10 = lVar.a()) != null && (nVar = this.f37368r) != null) {
            nVar.b(a10);
        }
        if (holder instanceof g) {
            this.f37376z.getValue().remove(holder);
        }
        if (holder instanceof j) {
            this.A.getValue().remove(holder);
        }
        int style = d10.getStyle();
        if (style != -32 && style != -20) {
            if (style != -13) {
                if (style != 8) {
                    String bannerId2 = d10.getBannerId();
                    if (bannerId2 != null) {
                        this.f37373w.put(bannerId2, Boolean.FALSE);
                        this.f37374x.remove(bannerId2);
                        return;
                    }
                    return;
                }
            } else {
                if (holder instanceof w) {
                    wVar = (w) holder;
                }
                if (wVar != null) {
                    wVar.q();
                    return;
                }
                return;
            }
        }
        if (this.f37375y || this.f37369s == null) {
            return;
        }
        if ((holder.getLayoutPosition() != d10.getModuleStartPosition() && holder.getLayoutPosition() != d10.getModuleEndPosition()) || (bannerId = d10.getBannerId()) == null || !Intrinsics.areEqual(this.f37373w.get(bannerId), Boolean.TRUE)) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "checkModuleHide", false, new DiscoverModuleAdapter$onViewDetachedFromWindow$2(this, d10, bannerId, null), 2, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: E0 */
    public void onViewRecycled(@NotNull BaseAdapter<DiscoverModule>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        if (holder instanceof j) {
            CardView cardView = ((j) holder).c().f40041a;
            if (cardView.getChildCount() > 0) {
                r("destroyNativeAdView");
                ca.k kVar = ca.k.f3414a;
                Intrinsics.checkNotNull(cardView);
                kVar.b(cardView);
            }
        }
    }

    public final void F0(int i10, int i11) {
        if (!this.f37371u.isInitialized()) {
            return;
        }
        List<BaseAdapter<DiscoverShorts>> value = this.f37371u.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
        synchronized (value) {
            try {
                List<BaseAdapter<DiscoverShorts>> value2 = this.f37371u.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
                Iterator<T> it = value2.iterator();
                while (it.hasNext()) {
                    BaseAdapter baseAdapter = (BaseAdapter) it.next();
                    List m10 = baseAdapter.m();
                    synchronized (m10) {
                        Iterator it2 = m10.iterator();
                        int i12 = 0;
                        while (true) {
                            if (it2.hasNext()) {
                                if (((DiscoverShorts) it2.next()).getId() == i10) {
                                    break;
                                }
                                i12++;
                            } else {
                                i12 = -1;
                                break;
                            }
                        }
                        if (i12 != -1) {
                            ((DiscoverShorts) m10.get(i12)).setEpisodeNum(i11);
                            if (((DiscoverShorts) m10.get(i12)).getWatchedMaxEpisodeNum() < i11) {
                                ((DiscoverShorts) m10.get(i12)).setWatchedMaxEpisodeNum(i11);
                            }
                            baseAdapter.notifyItemChanged(i12, "update_episode_num");
                        }
                        Unit unit = Unit.f60915a;
                    }
                }
                Unit unit2 = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void H0(@Nullable StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f37369s = staggeredGridLayoutManager;
    }

    public final void I0(@Nullable Lifecycle lifecycle) {
        this.f37367q = lifecycle;
    }

    public final void J0(@Nullable n nVar) {
        this.f37368r = nVar;
    }

    public final void K0(@Nullable DiscoverTab discoverTab) {
        this.f37366p = discoverTab;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        DiscoverModule item = getItem(i10);
        if (item != null) {
            return item.getStyle();
        }
        return -1;
    }

    @Nullable
    public final WeakReference<BannerViewPager<DiscoverShorts>> h0() {
        return this.f37370t;
    }

    @Nullable
    public final StaggeredGridLayoutManager i0() {
        return this.f37369s;
    }

    @Nullable
    public final Lifecycle j0() {
        return this.f37367q;
    }

    @Nullable
    public final n k0() {
        return this.f37368r;
    }

    @Nullable
    public final DiscoverTab l0() {
        return this.f37366p;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "DiscoverModuleAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverModule>.ViewHolder x(@NotNull final ViewGroup parent, int i10, int i11) {
        BaseAdapter<DiscoverModule>.ViewHolder kVar;
        Intrinsics.checkNotNullParameter(parent, "parent");
        Function1 function1 = new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DiscoverModuleAdapter.SingleRowViewHolder v02;
                v02 = DiscoverModuleAdapter.v0(DiscoverModuleAdapter.this, parent, (Function1) obj);
                return v02;
            }
        };
        if (i10 != -100) {
            if (i10 != -20) {
                if (i10 != 1) {
                    if (i10 != 15) {
                        switch (i10) {
                            case DiscoverModule.STYLE_BANNER_MIDDLE /* -33 */:
                                kVar = new c(this, (ItemDiscoverModuleBanner3Binding) s(parent, R$layout.item_discover_module_banner_3));
                                break;
                            case DiscoverModule.STYLE_HORIZONTAL_IMAGE_VIDEO_PREVIEW_ITEM /* -32 */:
                                kVar = new j(this, (ItemDiscoverHorizontalImageVideoPreviewBinding) s(parent, R$layout.item_discover_horizontal_image_video_preview));
                                break;
                            case DiscoverModule.STYLE_BANNER_RECT /* -31 */:
                                kVar = new d(this, (ItemDiscoverModuleCarouselBinding) s(parent, R$layout.item_discover_module_carousel));
                                break;
                            case DiscoverModule.STYLE_BANNER_SMALL /* -30 */:
                                kVar = new b(this, (ItemDiscoverModuleBanner2Binding) s(parent, R$layout.item_discover_module_banner_2));
                                break;
                            default:
                                switch (i10) {
                                    case -24:
                                        kVar = new q(this, (ItemDiscoverModuleMain1Row2ColumnXRowPartBinding) s(parent, R$layout.item_discover_module_main_1_row_2_column_x_row_part));
                                        break;
                                    case -23:
                                        kVar = new p(this, (ItemDiscoverModuleMain1Row2ColumnXMainPartBinding) s(parent, R$layout.item_discover_module_main_1_row_2_column_x_main_part));
                                        break;
                                    case -22:
                                        kVar = new o(this, (ItemLowSkuTemplateNotification3Binding) s(parent, R$layout.item_low_sku_template_notification_3));
                                        break;
                                    default:
                                        switch (i10) {
                                            case -13:
                                                kVar = new w(this, (ItemDiscoverModuleTimeCountTitleMoreBinding) s(parent, R$layout.item_discover_module_time_count_title_more));
                                                break;
                                            case -12:
                                                kVar = new m(this, (ItemDiscoverModuleTitleMoreWithIconBinding) s(parent, R$layout.item_discover_module_title_more_with_icon));
                                                break;
                                            case -11:
                                                kVar = new x(this, (ItemDiscoverModuleTitleMoreBinding) s(parent, R$layout.item_discover_module_title_more));
                                                break;
                                            case -10:
                                                kVar = new t(this, (ItemDiscoverStaggeredTagListItemBinding) s(parent, R$layout.item_discover_staggered_tag_list_item));
                                                break;
                                            case -9:
                                                kVar = new s(this, (ItemDiscoverStaggeredRelatedShortListItemBinding) s(parent, R$layout.item_discover_staggered_related_short_list_item));
                                                break;
                                            case -8:
                                                kVar = new v(this, (ItemDiscoverStaggeredRankItemBinding) s(parent, R$layout.item_discover_staggered_rank_item));
                                                break;
                                            default:
                                                switch (i10) {
                                                    case 3:
                                                        return (BaseAdapter.ViewHolder) function1.invoke(new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.u
                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final Object invoke(Object obj) {
                                                                BaseAdapter z02;
                                                                z02 = DiscoverModuleAdapter.z0(DiscoverModuleAdapter.this, (DiscoverModule) obj);
                                                                return z02;
                                                            }
                                                        });
                                                    case 4:
                                                        kVar = new a(this, (ItemDiscoverModuleBannerBinding) s(parent, R$layout.item_discover_module_banner));
                                                        break;
                                                    case 5:
                                                        return (BaseAdapter.ViewHolder) function1.invoke(new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.v
                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final Object invoke(Object obj) {
                                                                BaseAdapter s02;
                                                                s02 = DiscoverModuleAdapter.s0(DiscoverModuleAdapter.this, (DiscoverModule) obj);
                                                                return s02;
                                                            }
                                                        });
                                                    case 6:
                                                        return (BaseAdapter.ViewHolder) function1.invoke(new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.s
                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final Object invoke(Object obj) {
                                                                BaseAdapter x02;
                                                                x02 = DiscoverModuleAdapter.x0((DiscoverModule) obj);
                                                                return x02;
                                                            }
                                                        });
                                                    case 7:
                                                        return (BaseAdapter.ViewHolder) function1.invoke(new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.t
                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final Object invoke(Object obj) {
                                                                BaseAdapter y02;
                                                                y02 = DiscoverModuleAdapter.y0((DiscoverModule) obj);
                                                                return y02;
                                                            }
                                                        });
                                                    case 8:
                                                        kVar = new u(this, (ItemDiscoverStaggeredItemBinding) s(parent, R$layout.item_discover_staggered_item));
                                                        break;
                                                    case 9:
                                                        kVar = new e(this, 3, R$layout.item_discover_column_3_waterfall_item, (ItemDiscoverColumnXWaterfallBinding) s(parent, R$layout.item_discover_column_x_waterfall));
                                                        break;
                                                    default:
                                                        switch (i10) {
                                                            case 11:
                                                                kVar = new h(this, (ItemDiscoverModuleCategoryPageBinding) s(parent, R$layout.item_discover_module_category_page));
                                                                break;
                                                            case 12:
                                                                return (BaseAdapter.ViewHolder) function1.invoke(new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.l
                                                                    @Override // kotlin.jvm.functions.Function1
                                                                    public final Object invoke(Object obj) {
                                                                        BaseAdapter t02;
                                                                        t02 = DiscoverModuleAdapter.t0(DiscoverModuleAdapter.this, (DiscoverModule) obj);
                                                                        return t02;
                                                                    }
                                                                });
                                                            case 13:
                                                                kVar = new g(this, (ItemDiscoverModuleActBannerBinding) s(parent, R$layout.item_discover_module_act_banner));
                                                                break;
                                                            default:
                                                                l("onCreateItemViewHolder -> other=" + i10);
                                                                return (BaseAdapter.ViewHolder) function1.invoke(new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.m
                                                                    @Override // kotlin.jvm.functions.Function1
                                                                    public final Object invoke(Object obj) {
                                                                        BaseAdapter u02;
                                                                        u02 = DiscoverModuleAdapter.u0((DiscoverModule) obj);
                                                                        return u02;
                                                                    }
                                                                });
                                                        }
                                                }
                                        }
                                }
                        }
                    } else {
                        kVar = new i(this, (ItemDiscoverModuleRankingPageBinding) s(parent, R$layout.item_discover_module_ranking_page));
                    }
                } else {
                    return (BaseAdapter.ViewHolder) function1.invoke(new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.r
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            BaseAdapter w02;
                            w02 = DiscoverModuleAdapter.w0((DiscoverModule) obj);
                            return w02;
                        }
                    });
                }
            } else {
                kVar = new r(this, (ItemDiscoverPictureTextBinding) s(parent, R$layout.item_discover_picture_text));
            }
        } else {
            kVar = new k(this, (ItemDiscoverModuleEmptySpaceBinding) s(parent, R$layout.item_discover_module_empty_space));
        }
        return kVar;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void z() {
        super.z();
        if (this.f37376z.isInitialized()) {
            this.f37376z.getValue().clear();
        }
        if (this.A.isInitialized()) {
            this.A.getValue().clear();
        }
    }
}
